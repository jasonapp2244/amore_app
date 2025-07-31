<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Message extends Model
{
     protected $fillable = [
        'sender_id',
        'receiver_id',
        'message',
        'type',
        'attachment',
        'is_seen',
        'seen_at',
        'status',
        'created_at',
        'updated_at',
    ];

    // Optionally, you can also define the dates if you want to handle them as Carbon instances
    protected $dates = [
        'created_at',
        'updated_at',
        'seen_at',
    ];

    public function sender()
{
    return $this->belongsTo(User::class, 'sender_id');
}
}
