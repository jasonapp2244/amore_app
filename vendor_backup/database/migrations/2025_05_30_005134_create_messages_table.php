<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('messages', function (Blueprint $table) {
            $table->id();
            $table->foreignId('sender_id')->nullable()->constrained('users')->onDelete('cascade');
            $table->foreignId('receiver_id')->nullable()->constrained('users')->onDelete('cascade');
            $table->text('message')->nullable();
            $table->enum('type', ['text', 'image', 'audio', 'video', 'file'])->default('text');
            $table->string('attachment')->nullable();
            $table->boolean('is_seen')->default(false);
            $table->timestamp('seen_at')->nullable();
            $table->string('status')->default('active');
            $table->boolean('sender_deleted')->default(false);
            $table->boolean('receiver_deleted')->default(false);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('messages');
    }
};
