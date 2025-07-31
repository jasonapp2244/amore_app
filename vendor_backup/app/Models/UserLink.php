<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserLink extends Model
{
    protected $table = "user_links";
      protected $fillable = [
        'user_id',
        'linked_user_id',
        'status',
    ];
}
