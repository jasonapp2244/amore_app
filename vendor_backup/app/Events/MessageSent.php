<?php

namespace App\Events;

use App\Models\Message;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Queue\SerializesModels;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Foundation\Events\Dispatchable;

class MessageSent implements ShouldBroadcast
{
    use Dispatchable, InteractsWithSockets, SerializesModels;

    public $message;

    /**
     * Create a new event instance.
     *
     * @param \App\Models\Message $message
     * @return void
     */
    public function __construct(Message $message)
    {
        // Load the sender relationship along with the message
        $this->message = $message->load('sender');
    }

    /**
     * Get the channels the event should broadcast on.
     *
     * @return \Illuminate\Broadcasting\Channel|array
     */
    public function broadcastOn()
    {
        // Private channel based on receiver_id
        return new PrivateChannel('chat.' . $this->message->receiver_id);
    }

    /**
     * Custom payload for broadcast.
     *
     * @return array
     */
    public function broadcastWith()
    {
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
}
