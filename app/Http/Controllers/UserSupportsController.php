<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserSupport;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use App\Mail\SupportMessageMail;
use Exception;

class UserSupportsController extends Controller
{
    public function messageQuery(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'help_description' => 'required|string',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'status' => false,
                    'message' => 'Validation failed',
                    'errors' => $validator->errors(),
                ], 400);
            }

            $message = new UserSupport();

            $message->user_id = auth()->id();
            $message->help_description = $request->help_description;

            if (!$message->save()) {
                return response()->json([
                    'status' => false,
                    'message' => 'Failed to save message.',
                ], 500);
            }

            $authUser = auth()->user();
            $adminEmail = 'tauseefchoohan0401@gmail.com';

            Mail::to($authUser->email)->send(new SupportMessageMail($message, $authUser));

            Mail::to($adminEmail)->send(new SupportMessageMail($message, $authUser));

            return response()->json([
                'status' => true,
                'message' => 'Support message submitted and emails sent.',
            ],200);
        } catch (Exception $e) {

            return response()->json([
                'status' => false,
                'message' => 'An error occurred.',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
}
