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

        // Fetch the user based on email
        $user = User::where('email', $request->email)->first();

        // Check if the user exists and is active, and OTP is verified (otp_status = "active")
        if ($user && $user->status == 0 && $user->otp_status == 'pending') {

            if (RateLimiter::tooManyAttempts('otp:' . $user->id, 3)) {
                $seconds = RateLimiter::availableIn('otp:' . $user->id);
                return response()->json([
                    'status' => false,
                    'message' => 'Too many OTP requests. Please try again in ' . $seconds . ' seconds.'
                ], 400);
            }

            // If OTP is not verified (status is not active), generate a new OTP
            if ($user && (empty($user->otp_status) || $user->otp_status !== 'active')) {
                // Generate a new OTP
                $otp = rand(1000, 9999);
                $otp_expires_at = now()->addMinutes(15);

                // Update user with the new OTP and expiration time
                $user->update([
                    'otp' => Hash::make($otp),
                    'otp_expires_at' => $otp_expires_at,
                    'otp_last_sent_at' => now(),
                    'otp_status' => 'pending',
                    'user_status' => 0
                ]);

                // Hit rate limiter for OTP request
                RateLimiter::hit('otp:' . $user->id, 60);

                // Uncomment the mail line when ready to send OTP email
                // Mail::to($user->email)->send(new SendOtpMail($otp));

                return response()->json([
                    'status' => true,
                    'message' => 'OTP sent to your email',
                    'user' => [
                        'email' => $user->email,
                        'otp' => $otp,
                        //  'token' => $user->createToken('auth_token')->plainTextToken,
                        'otp_expires_in' => 15,  // OTP expiration time in minutes
                        'can_resend_after' => 60  // OTP resend limit in seconds
                    ]
                ]);
            }
        } else {
            Auth::login($user);

            return response()->json([
                'status' => true,
                'message' => "login successsfully",
                'user' => $user,
                'token' => $user->createToken('auth_token')->plainTextToken
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

        // Mail::to($user->email)->send(new SendOtpMail($otp));

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
        $request->user()->currentAccessToken()->delete();
        return response()->json([
            'status' => true,
            'message' => 'Logged out successfully'
        ]);
    }
}
