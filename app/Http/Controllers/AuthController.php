<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\User;
use App\Mail\SendOtpMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\RateLimiter;

class AuthController extends Controller
{
    public function login(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email'
        ]);

        $user = User::where('email', $request->email)->first();

        if ($user && $user->otp_status == 'pending') {

            if (RateLimiter::tooManyAttempts('otp:' . $user->id, 3)) {
                $seconds = RateLimiter::availableIn('otp:' . $user->id);
                return response()->json([
                    'status' => false,
                    'message' => 'Too many OTP requests. Please try again in ' . $seconds . ' seconds.'
                ], 400);
            }

            $otp = rand(1000, 9999);
            $otp_expires_at = now()->addMinutes(15);

            $user->update([
                'otp' => Hash::make($otp),
                'otp_expires_at' => $otp_expires_at,
                'otp_last_sent_at' => now(),
                'otp_status' => 'pending',
                'user_status' => 0
            ]);

            RateLimiter::hit('otp:' . $user->id, 60);

            try {
                Mail::to($user->email)->send(new SendOtpMail($otp));
            } catch (\Exception $e) {
                return response()->json([
                    'status' => false,
                    'message' => 'Failed to send OTP email. Please try again later.',
                    'error' => $e->getMessage()
                ], 500);
            }

            return response()->json([
                'status' => true,
                'message' => 'OTP sent to your email',
                'user' => [
                    'email' => $user->email,
                    'otp' => $otp,
                    'otp_expires_in' => 15,
                    'can_resend_after' => 60
                ]
            ]);
        } else {
            Auth::login($user);

            $remaining_message = $user->message_limit - $user->message_count;

            // Convert to array and add remaining_message using the same $user variable
            $user = $user->toArray();
            $user['remaining_message'] = $remaining_message;

            return response()->json([
                'status' => true,
                'message' => "Login successful",
                'user' => $user,
                'token' => Auth::user()->createToken('auth_token')->plainTextToken
            ]);
        }
    }

    public function verifyOtp(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email',
            'otp' => 'required|numeric|digits:4'
        ]);

        $user = User::where('email', $request->email)->first();

        if (!$user->otp || $user->otp_expires_at < now()) {
            return response()->json([
                'status' => false,
                'message' => 'OTP expired. Please request a new one.',
                'action' => 'resend'
            ], 400);
        }

        if (!Hash::check($request->otp, $user->otp)) {
            return response()->json([
                'status' => false,
                'message' => 'Invalid OTP'
            ], 401);
        }

        $user->update([
            'otp' => null,
            'otp_expires_at' => null,
            'otp_last_sent_at' => null,
            'otp_status' => 'active',
            'user_status' => 1,
        ]);

        Auth::login($user);

        return response()->json([
            'status' => true,
            'user' => $user,
            'token' => $user->createToken('auth_token')->plainTextToken
        ]);
    }

    public function resendOtp(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users,email'
        ]);

        $user = User::where('email', $request->email)->first();
        $lastSent = $user->otp_last_sent_at ? Carbon::parse($user->otp_last_sent_at) : null;

        if ($lastSent && $lastSent->addMinute() > now()) {
            $seconds = $lastSent->addMinute()->diffInSeconds(now());
            return response()->json([
                'status' => false,
                'message' => 'Please wait ' . $seconds . ' seconds before requesting a new OTP'
            ], 400);
        }

        $otp = rand(1000, 9999);
        $otp_expires_at = now()->addMinutes(15);

        $user->update([
            'otp' => Hash::make($otp),
            'otp_expires_at' => $otp_expires_at,
            'otp_last_sent_at' => now()
        ]);

        try {
            Mail::to($user->email)->send(new SendOtpMail($otp));
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Failed to send OTP email. Please try again later.',
                'error' => $e->getMessage()
            ], 500);
        }

        return response()->json([
            'status' => true,
            'message' => 'New OTP sent to your email',
            'user' => [
                'email' => $user->email,
                'otp' => $otp,
                'otp_expires_in' => 15,
                'can_resend_after' => 60
            ]
        ]);
    }


    public function user(Request $request)
    {
        return response()->json($request->user());
    }

    public function logout(Request $request)
    {
        $user = Auth::user();

        if ($user) {
            $user->otp_status = 'pending';
            $user->save();
            $user->currentAccessToken()->delete();
        }

        return response()->json([
            'status' => true,
            'message' => 'Logged out successfully'
        ]);
    }
}
