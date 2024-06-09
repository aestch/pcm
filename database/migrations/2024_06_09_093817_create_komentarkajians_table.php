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
        Schema::create('komentarkajians', function (Blueprint $table) {
            $table->id();
            $table->text('komentar_kajian');
            $table->unsignedBigInteger('kajian_id'); // Menambahkan kolom kajian_id
            $table->foreign('kajian_id')->references('id')->on('kajians'); // Menambahkan foreign key constraint
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('komentarkajians');
    }
};
