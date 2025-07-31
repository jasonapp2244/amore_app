<?php

namespace App\Events;

use App\Models\Message;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcastNow;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;

class MessageSent implements ShouldBroadcastNow
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $message;

    /**
     * Create a new event instance.
     *
     * @param \App\Models\Message $message
     */
    public function __construct(Message $message)
    {
        $this->message = $message->load('sender');  // Sender relation load karo
        \Log::info('MessageSent event constructed', ['message_id' => $this->message->id]);
    }

    /**
     * The channel the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        \Log::info('MessageSent broadcastOn called', ['channel' => 'chat.' . $this->message->receiver_id]);
        return new PrivateChannel('chat.' . $this->message->receiver_id);
    }

    /**
     * The data to broadcast.
     *
     * @return array
     */
    public function broadcastWith()
    {
        \Log::info('MessageSent broadcastWith payload generated');

        return [
            'id' => $this->message->id,
            'message' => $this->message->message,
            'type' => $this->message->type,
            'sender_id' => $this->message->sender_id,
            'receiver_id' => $this->message->receiver_id,
            'sender_name' => $this->message->sender->first_name . ' ' . $this->message->sender->last_name,
            'attachment_url' => $this->message->attachment
                ? asset('storage/' . $this->message->attachment)
                : null,
            'created_at' => $this->message->created_at->toDateTimeString(),
        ];
    }

    public function broadcastAs()
    {
        return 'new-message';
    }
}
