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
        Schema::create('komentarartikels', function (Blueprint $table) {
            $table->id();
            $table->text('komentar_artikel');
            $table->unsignedBigInteger('artikel_id'); // Menambahkan kolom artikel_id
            $table->foreign('artikel_id')->references('id')->on('artikels'); // Menambahkan foreign key constraint
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('komentarartikels');
    }
};
