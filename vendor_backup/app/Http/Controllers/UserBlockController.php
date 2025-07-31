<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserBlockController extends Controller
{
    public function block(Request $request)
    {
        $request->validate(['user_id' => 'required|exists:users,id']);
        DB::table('user_links')
            ->updateOrInsert([
             'user_id' => auth()->id(),
             'linked_user_id' => $request->user_id
            ],
    ['status' => 'blocked']
        );
        return response()->json(['blocked' => true]);
    }

    public function unblock(Request $request)
    {
        $request->validate(['user_id' => 'required|exists:users,id']);
        DB::table('user_links')->where([
            'user_id' => auth()->id(),
            'linked_user_id' => $request->user_id
        ])->update(['status' => 'active']);
        return response()->json(['unblocked' => true]);
    }
}
