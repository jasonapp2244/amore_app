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
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id');
            $table->string('payment_intent_id')->nullable();
            $table->enum('payment_for', ['message', 'ring_exchange']);
            $table->string('name')->nullable();
            $table->string('phone_number')->nullable();
            $table->string('card_number')->nullable();
            $table->string('cvc_number')->nullable();
            $table->datetime('expire_date')->nullable();
            $table->string('country')->nullable();
            $table->string('postal_code')->nullable();
            $table->integer('messages_added')->nullable();
            $table->decimal('amount_paid', 8, 2)->default(0.00);
            $table->enum('payment_method', ['paypal', 'stripe', 'card', 'google', 'apple'])->nullable();
            $table->string('payment_status')->default('pending');
            $table->string('ring_exchange_resion')->nullable();
            $table->timestamp('purchased_at')->nullable();
            $table->timestamps();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('payments');
    }
};
