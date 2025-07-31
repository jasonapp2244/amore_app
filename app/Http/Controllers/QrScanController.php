<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class QrScanController extends Controller
{
    // public function scan(Request $request)
    // {
    //     $request->validate([
    //         'qr_token' => 'required|string'
    //     ]);

    //     $scanner = auth()->user();
    //     $linkedUser = User::where('qr_token', $request->qr_token)->first();


    //     if (!$linkedUser) {
    //         return response()->json([
    //             'status' => false,
    //             'message' => 'Invalid QR token',
    //         ], 400);
    //     }

    //     if ($linkedUser->id === $scanner->id) {
    //         return response()->json([
    //             'status' => false,
    //             'message' => 'You cannot scan your own QR'
    //         ], 400);
    //     }

    //     // Check if already linked
    //     $exists = DB::table('user_links')->where([
    //         ['user_id', $scanner->id],
    //         ['linked_user_id', $linkedUser->id],
    //     ])->exists();

    //     if (!$exists) {
    //         DB::table('user_links')->insert([
    //             'user_id' => $scanner->id,
    //             'linked_user_id' => $linkedUser->id,
    //             'created_at' => now(),
    //             'updated_at' => now()
    //         ]);
    //     }

    //     return response()->json([
    //         'status' => true,
    //         'data' => [
    //             'id' => $linkedUser->id,
    //             'first_name' => $linkedUser->first_name,
    //             'last_name' => $linkedUser->last_name,
    //             'email' => $linkedUser->email,
    //         ]
    //     ]);
    // }

    // public function linkedUsers()
    // {
    //     $user = auth()->user();

    //     $linked = DB::table('user_links')
    //         ->join('users', 'users.id', '=', 'user_links.linked_user_id')
    //         ->where('user_links.user_id', $user->id)
    //         ->select('users.id', 'users.first_name','users.last_name','users.profile_image','users.email')
    //         ->get();

    //     return response()->json([
    //         'status'=>true,
    //         'message'=>'Linked Users',
    //         'data'=>[
    //             'linked'=>$linked,
    //         ]
    //         ],200);
    // }
    
    
    public function scan(Request $request)
    {
        $request->validate([
            'qr_token' => 'required|string'
        ]);

        $scanner = auth()->user();

        $linkedUser = User::where('qr_token', $request->qr_token)->first();

        if (!$linkedUser) {
            return response()->json([
                'status' => false,
                'message' => 'Invalid QR token',
            ], 400);
        }

        if ($linkedUser->id === $scanner->id) {
            return response()->json([
                'status' => false,
                'message' => 'You cannot scan your own QR',
            ], 400);
        }

        // Check if already linked in either direction
        $exists = DB::table('user_links')->where(function ($query) use ($scanner, $linkedUser) {
            $query->where('user_id', $scanner->id)
                  ->where('linked_user_id', $linkedUser->id);
        })->exists();

        if (!$exists) {
            // Insert both directions
            DB::table('user_links')->insert([
                [
                    'user_id' => $scanner->id,
                    'linked_user_id' => $linkedUser->id,
                    'created_at' => now(),
                    'updated_at' => now()
                ],
                [
                    'user_id' => $linkedUser->id,
                    'linked_user_id' => $scanner->id,
                    'created_at' => now(),
                    'updated_at' => now()
                ],
            ]);
        }

        return response()->json([
            'status' => true,
            'data' => [
                'id' => $linkedUser->id,
                'first_name' => $linkedUser->first_name,
                'last_name' => $linkedUser->last_name,
                'email' => $linkedUser->email,
            ]
        ]);
    }

    /**
     * List of users linked with the authenticated user
     */
public function linkedUsers()
{
    $user = auth()->user();

    $linked = DB::table('user_links')
        ->join('users', 'users.id', '=', 'user_links.linked_user_id')
        ->where('user_links.user_id', $user->id)
        ->where('users.id', '!=', $user->id) // 👈 exclude self from result
        ->select(
            'users.id',
            'users.first_name',
            'users.last_name',
            'users.profile_image',
            'users.email'
        )
        ->get();

    return response()->json([
        'status' => true,
        'message' => 'Linked Users',
        'data' => [
            'linked' => $linked,
        ]
    ], 200);
}

}
