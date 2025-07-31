<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class WpUserSyncController extends Controller
{

    public function syncUsersFromWP()
    {
        $customers = DB::connection('wordpress')->table('wc_customer_lookup')->get();
        $imported = 0;
        foreach ($customers as $customer) {
            $token = rand(1000000000, 99999999999);
            if ($customer->email && !User::where('email', $customer->email)->exists()) {
                User::create([
                    'first_name'              => $customer->first_name,
                    'last_name'               => $customer->last_name,
                    'email'                   => $customer->email,
                    'otp_token'               => null,
                    'otp_expires_at'          => null,
                    'otp_last_sent_at'        => null,
                    'otp_status'              => 'pending',
                    'profile_image'           => null,
                    'qr_token'                => $token,
                    'qr_code_link'            => null,
                    'qr_code_status'          => 0,
                    'is_paid'                 => 0,
                    'message_limit'           => 0,
                    'message_count'           => 0,
                    'message_count_status'    => 0,
                    'user_status'             => 1,
                    'email_verified_at'       => now(),
                    'remember_token'          => null,
                    'created_at'              => now(),
                    'updated_at'              => now(),
                ]);

                $imported++;
            }
        }
        return response()->json([
            'status' => true,
            'message' => "$imported users imported successfully.",
            'data' => $imported,
        ], 200);
    }
}
