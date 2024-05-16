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
        Schema::create('portalberitas', function (Blueprint $table) {
            $table->id();
            $table->string('judul');
            $table->string('image')->nullable();
            $table->text('body');
            $table->text('excerpt');
            $table->unsignedBigInteger('kategoriberita_id'); // Menambahkan kolom kategoriberita_id
            $table->foreign('kategoriberita_id')->references('id')->on('kategoriberitas'); // Menambahkan foreign key constraint
            $table->timestamp('published_at')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('portalberitas');
    }
};
