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
        Schema::create('uang_kas', function (Blueprint $table) {
            $table->id('id_kas');
            $table->date('tanggal_kas');
            $table->string('deskripsi');
            $table->enum('tipe', ['Pengeluaran', 'Pendapatan']);
            $table->decimal('jumlah', 10,2);
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
        Schema::dropIfExists('uang_kas');
    }
};
