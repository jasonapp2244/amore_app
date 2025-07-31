<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;

class UserQrController extends Controller
{
    public function getToken()
    {
        $user = auth()->user();

        if (!$user->qr_token) {
            $user->qr_token = Str::uuid();
            // dd($user->qr_token);
            $user->save();
        }

        return response()->json([
            'status'=>true,
            'message'=>"Token Generate Successfully",
            'user_id' => $user->id,
            'first_name' => $user->first_name,
            'last_name' => $user->last_name,
            'email' => $user->email,
            'qr_token' => $user->qr_token,
        ]);
    }
}
