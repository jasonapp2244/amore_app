<?php

namespace App\Http\Controllers;

use App\Models\Message;
use App\Models\User;
use Illuminate\Http\Request;
use App\Events\MessageSent;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class MessageController extends Controller
{
    public function send(Request $request)
    {

        // dd('fdfd');
        $request->validate([
            'receiver_id' => 'required|exists:users,id',
            'message' => 'nullable|string',
            'attachment' => 'nullable',
            'type' => 'required|in:text,image,audio,video,file'
        ]);


        $user = auth()->user();

        // Check if blocked
        // $isBlocked = DB::table('user_links')
        //     ->where(function ($q) use ($user, $request) {
        //         $q->where('user_id', $request->receiver_id)
        //             ->where('linked_user_id', $user->id)
        //             ->where('status', 'blocked');
        //     })
        //     ->exists();


        $isBlocked = DB::table('user_links')
            ->where(function ($q) use ($user, $request) {
                // Condition 1: Receiver ne sender ko block kiya ho
                $q->where(function ($sub) use ($user, $request) {
                    $sub->where('user_id', $request->receiver_id)
                        ->where('linked_user_id', $user->id)
                        ->where('status', 'blocked');
                })
                    // Condition 2: Dono linked na hon
                    ->orWhere(function ($sub) use ($user, $request) {
                        $sub->where(function ($sub) use ($user, $request) {
                            $sub->where('user_id', $user->id)
                                ->where('linked_user_id', $request->receiver_id);
                        })->orWhere(function ($sub) use ($user, $request) {
                            $sub->where('user_id', $request->receiver_id)
                                ->where('linked_user_id', $user->id);
                        });
                    });
            })
            // Check if the link doesn't exist
            ->doesntExist();

        if ($isBlocked) {
            return response()->json([
                'status' => false,
                'message' => 'You are not allowed to message this user.'
            ], 400);
        }


        if ($isBlocked) {
            return response()->json([
                'status' => false,
                'message' => 'You are blocked by this user.'
            ], 400);
        }

        // Check limit
        if (!$user->is_paid && $user->message_count >= $user->message_limit) {
            return response()->json([
                'status' => false,
                'message' => 'Free message limit reached. Upgrade to continue.'
            ], 402);
        }


        $filePaths = [];

        if ($request->hasFile('attachment')) {
            foreach ($request->file('attachment') as $file) {
                $filePaths[] = $file->store('chat_uploads', 'public');
            }
        }

        $message = Message::create([
            'sender_id' => $user->id,
            'receiver_id' => $request->receiver_id,
            'message' => $request->message,
            'attachment' => json_encode($filePaths), // store as JSON
            'type' => $request->type,
        ]);


        $user->increment('message_count');

        broadcast(new MessageSent($message))->toOthers();

        return response()->json([
            'status' => true,
            'message' => 'All messages fetched successfully',
            'data' => [
                'messages' => $message,
            ]
        ], 200);
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
}
