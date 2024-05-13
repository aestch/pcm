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
        Schema::create('arsipfiles', function (Blueprint $table) {
            $table->id();
            $table->string('nama_file');
            $table->date('tgl_arsipfile');
            $table->string('upload_arsipfile');
            $table->unsignedBigInteger('user_id'); // Menambahkan kolom user_id
            $table->foreign('user_id')->references('id')->on('users'); // Menambahkan foreign key constraint
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('arsipfiles');
    }
};
