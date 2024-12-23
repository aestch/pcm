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
        Schema::create('saved_portalberitas', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id'); // User yang menyimpan berita
            $table->unsignedBigInteger('portalberita_id'); // Berita yang disimpan
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('portalberita_id')->references('id')->on('portalberitas')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('saved_portalberitas');
    }
};
