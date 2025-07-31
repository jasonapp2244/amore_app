<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Message;
use App\Events\MessageSent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Storage;

class MessageController extends Controller
{
    //     public function send(Request $request)
    // {
    //     $request->validate([
    //         'receiver_id' => 'required|exists:users,id',
    //         'message' => 'nullable|string',
    //         'attachment' => 'nullable',
    //         'type' => 'required|in:text,image,audio,video,file'
    //     ]);

    //     $user = auth()->user();
    //     if (!$user) {
    //         return response()->json(['status' => false, 'message' => 'Unauthorized.'], 401);
    //     }

    //     // Check if blocked or not linked
    //     $isBlocked = DB::table('user_links')
    //         ->where(function ($q) use ($user, $request) {
    //             $q->where(function ($sub) use ($user, $request) {
    //                 $sub->where('user_id', $request->receiver_id)
    //                     ->where('linked_user_id', $user->id)
    //                     ->where('status', 'blocked');
    //             });
    //         })->exists();


    //     if ($isBlocked) {
    //         return response()->json(['status' => false, 'message' => 'You are blocked by this user.'], 400);
    //     }

    //     if (!$user->is_paid && $user->message_count >= $user->message_limit) {
    //         return response()->json(['status' => false, 'message' => 'Free message limit reached.'], 400);
    //     }

    //     $filePaths = [];
    //     if ($request->hasFile('attachment')) {
    //         foreach ($request->file('attachment') as $file) {
    //             $filePaths[] = $file->store('chat_uploads', 'public');
    //         }
    //     }

    //     $message = Message::create([
    //         'sender_id' => $user->id,
    //         'receiver_id' => $request->receiver_id,
    //         'message' => $request->message,
    //         'attachment' => json_encode($filePaths),
    //         'type' => $request->type,
    //     ]);

    //     $user->increment('message_count');

    //     broadcast(new \App\Events\MessageSent($message))->toOthers();

    //     return response()->json([
    //         'status' => true,
    //         'message' => 'Message sent successfully.',
    //         'data' => $message
    //     ]);
    // }

    // sorry ma complete method nhi dya th isa updat kray
    //         user table
    //             id  first_name           last_name                 email                          password  otp     otp_expires_at  otp_last_sent_at  otp_status  profile_image  qr_token     qr_code_link  qr_code_status  is_paid  message_limit  message_count  message_count_status  user_status    email_verified_at  remember_token           created_at           updated_at
    // is method ko updat kr day ager user ka pass message_limit and message_count equal ho messag send na ho or us ka pass message ay ap ka essage kahtam ho gay


    public function send(Request $request)
    {
        $request->validate([
            'receiver_id' => 'required|exists:users,id',
            'message' => 'nullable|string',
            'attachment' => 'nullable',
            'type' => 'required|in:text,image,audio,video,file'
        ]);

        $user = auth()->user();
        if (!$user) {
            return response()->json(['status' => false, 'message' => 'Unauthorized.'], 401);
        }

        // Check if blocked by the receiver
        $isBlocked = DB::table('user_links')
            ->where(function ($q) use ($user, $request) {
                $q->where('user_id', $request->receiver_id)
                    ->where('linked_user_id', $user->id)
                    ->where('status', 'blocked');
            })->exists();

        if ($isBlocked) {
            return response()->json(['status' => false, 'message' => 'You are blocked by this user.'], 400);
        }

        // Check message limit for unpaid users
        if (!$user->is_paid && $user->message_count >= $user->message_limit) {
            return response()->json([
                'status' => false,
                'message' => 'You have reached your message limit.'
            ], 400);
        }

        // Handle attachments
        $filePaths = [];
        if ($request->hasFile('attachment')) {
            foreach ($request->file('attachment') as $file) {
                $filePaths[] = $file->store('chat_uploads', 'public');
            }
        }

        // Save message
        $message = Message::create([
            'sender_id' => $user->id,
            'receiver_id' => $request->receiver_id,
            'message' => $request->message,
            'attachment' => json_encode($filePaths),
            'type' => $request->type,
        ]);

        // Increase message count only if not paid
        if (!$user->is_paid) {
            $user->increment('message_count');
        }

        // Broadcast message event
        broadcast(new \App\Events\MessageSent($message))->toOthers();

        return response()->json([
            'status' => true,
            'message' => 'Message sent successfully.',
            'data' => $message
        ]);
    }




    public function fetchConversation($userId)
    {
        $authId = auth()->id();


        $messages = Message::where(function ($q) use ($authId, $userId) {
            $q->where('sender_id', $authId)
                ->where('receiver_id', $userId)
                ->where('sender_deleted', false);
        })->orWhere(function ($q) use ($authId, $userId) {
            $q->where('sender_id', $userId)
                ->where('receiver_id', $authId)
                ->where('receiver_deleted', false);
        })->orderBy('created_at')->get();

        return response()->json([
            'status' => true,
            'message' => 'fetch successfully',
            'data' => [
                'messages' => $messages,
            ]
        ]);
    }

    public function markAsSeen(Request $request)
    {
        $request->validate([
            'sender_id' => 'required|exists:users,id'
        ]);


        Message::where('sender_id', $request->sender_id)
            ->where('receiver_id', auth()->id())
            ->update([
                'is_seen' => true,
                'seen_at' => now()
            ]);

        return response()->json([
            'status' => true,
            'message' => 'seen'
        ]);
    }

    public function delete(Request $request)
    {
        $request->validate([
            'message_id' => 'required|exists:messages,id'
        ]);

        $message = Message::findOrFail($request->message_id);
        $authId = auth()->id();

        if ($message->sender_id == $authId) {
            // Delete uploaded attachments if any
            if ($message->attachment) {
                $attachments = json_decode($message->attachment, true);
                if (is_array($attachments)) {
                    foreach ($attachments as $path) {
                        Storage::disk('public')->delete($path);
                    }
                } else {
                    // In case a single file was stored as a string
                    Storage::disk('public')->delete($message->attachment);
                }
            }

            $message->sender_deleted = true;
        } elseif ($message->receiver_id == $authId) {
            $message->receiver_deleted = true;
        } else {
            return response()->json([
                'status' => false,
                'message' => 'Unauthorized'
            ], 400);
        }

        $message->save();
        return response()->json([
            'status' => true,
            'message' => 'Message deleted successfully',
            'deleted' => true
        ]);
    }

    public function remainingMessages(Request $request)
    {
        $user = Auth::user();

        if (!$user) {
            return response()->json([
                'status' => false,
                'message' => 'Unauthorized',
            ], 401);
        }

        $remaining = $user->message_limit - $user->message_count;

        if ($remaining <= 0) {
            return response()->json([
                'status' => false,
                'message' => 'Your limit has ended',
                'remaining_message' => 0,
            ]);
        }

        return response()->json([
            'status' => true,
            'message' => 'Remaining messages fetched successfully',
            'remaining_message' => $remaining,
        ]);
    }
}
