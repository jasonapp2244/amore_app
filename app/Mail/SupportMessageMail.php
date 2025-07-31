<?php
namespace App\Mail;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use App\Models\UserSupport;
use App\Models\User;

class SupportMessageMail extends Mailable
{
    use Queueable, SerializesModels;

    public $messageData;
    public $user;

    public function __construct(UserSupport $messageData, User $user)
    {
        $this->messageData = $messageData;
        $this->user = $user;
    }

    public function build()
    {
        return $this->subject('New Support Message')
                    ->view('Mails.support_message');
    }
}
