<?php

namespace App\Models;

// use Illuminate\Contracts\Auth\MustVerifyEmail;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    /** @use HasFactory<\Database\Factories\UserFactory> */
    use HasApiTokens, HasFactory, Notifiable;
    /**
     * The attributes that are mass assignable.
     *
     * @var list<string>
     */
    protected $fillable = [
        'id',
        'first_name',
        'last_name',
        'email',
        'password',
        'otp',
        'otp_expires_at',
        'otp_last_sent_at',
        'otp_status',
        'profile_image',
        'qr_token',
        'qr_code_link',
        'qr_code_status',
        'is_paid',
        'message_limit',
        'message_count',
        'message_count_status',
        'user_status',
        'email_verified_at',
        'remember_token',
        'created_at',
        'updated_at',
    ];



    /**
     * The attributes that should be hidden for serialization.
     *
     * @var list<string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $dates = [
        'otp_last_sent_at',
        'otp_expires_at',
        'created_at',
        'updated_at'
    ];
    /**
     * Get the attributes that should be cast.
     *
     * @return array<string, string>
     */
    protected function casts(): array
    {
        return [
            'email_verified_at' => 'datetime',
            'password' => 'hashed',
        ];
    }



    // public function profile()
    // {
    //     return $this->hasOne(Profile::class);
    // }

    // public function linkedUsers()
    // {
    //     return $this->hasMany(LinkedUser::class, 'user_id');
    // }

    
}
