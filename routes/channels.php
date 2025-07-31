<?php

use Illuminate\Support\Facades\Broadcast;


Broadcast::channel('private-chat.{receiver_id}', function ($user, $receiver_id) {
    return (int) $user->id === (int) $receiver_id || 
           DB::table('user_links')
               ->where('user_id', $user->id)
               ->where('linked_user_id', $receiver_id)
               ->exists();
});

