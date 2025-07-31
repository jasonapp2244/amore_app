<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Payment extends Model
{
 protected $fillable = [
    'user_id', 'payment_for', 'name', 'phone_number', 'card_number', 'cvc_number',
    'expire_date', 'country', 'postal_code', 'messages_added', 'amount_paid',
    'payment_method', 'payment_status', 'ring_exchange_resion', 'purchased_at',
];


     protected $dates = ['purchased_at'];


         public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }
}
