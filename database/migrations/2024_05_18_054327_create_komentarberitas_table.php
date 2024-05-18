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
        Schema::create('komentarberitas', function (Blueprint $table) {
            $table->id();
            $table->text('komentar_berita');
            $table->unsignedBigInteger('portalberita_id'); // Menambahkan kolom portalberita_id
            $table->foreign('portalberita_id')->references('id')->on('portalberitas'); // Menambahkan foreign key constraint
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('komentarberitas');
    }
};
