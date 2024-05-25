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
        Schema::create('kajians', function (Blueprint $table) {
            $table->id();
            $table->string('judul');
            $table->string('image')->nullable();
            $table->text('body');
            $table->text('excerpt');
            $table->unsignedBigInteger('bidangkajian_id'); // Menambahkan kolom bidangkajian_id
            $table->foreign('bidangkajian_id')->references('id')->on('bidangkajians'); // Menambahkan foreign key constraint
            $table->timestamp('published_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('kajians');
    }
};
