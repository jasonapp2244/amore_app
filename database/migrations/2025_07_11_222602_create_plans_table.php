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
      Schema::create('plans', function (Blueprint $table) {
            $table->id();
            $table->string('slug')->nullable(); // e.g. message_pack_5
            $table->string('title')->nullable(); // display title (optional)
            $table->integer('messages')->default(0); // messages included
            $table->integer('rings')->default(0);    // rings included
            $table->decimal('amount', 8, 2)->nullable();          // e.g. 5.99
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('plans');
    }
};
