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
        Schema::create('artikels', function (Blueprint $table) {
            $table->id();
            $table->string('judul');
            $table->string('image')->nullable();
            $table->text('body');
            $table->text('excerpt');
            $table->unsignedBigInteger('kategoriartikel_id'); // Menambahkan kolom kategoriartikel_id
            $table->foreign('kategoriartikel_id')->references('id')->on('kategoriartikels'); // Menambahkan foreign key constraint
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('artikels');
    }
};
