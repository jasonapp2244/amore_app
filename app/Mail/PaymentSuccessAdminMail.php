<?php

namespace App\Mail;

use App\Models\User;
use App\Models\Plan;
use App\Models\Payment;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class PaymentSuccessAdminMail extends Mailable
{
    use Queueable, SerializesModels;

    public $user, $plan, $payment;

    public function __construct(User $user, Plan $plan, Payment $payment)
    {
        $this->user = $user;
        $this->plan = $plan;
        $this->payment = $payment;
    }

    public function build()
    {
        return $this->subject('New Payment Received from ' . $this->user->name)
                    ->view('mails.payment_success_admin');
    }
}
