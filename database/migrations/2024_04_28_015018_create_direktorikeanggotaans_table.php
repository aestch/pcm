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
        Schema::create('direktorikeanggotaans', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->integer('nbm');
            $table->string('jenis_kelamin');
            $table->string('tempat_lahir');
            $table->date('tanggal_lahir');
            $table->string('cabang');
            $table->string('ranting');
            $table->string('alamat');
            $table->string('status_pernikahan');
            $table->string('email');
            $table->string('no_hp');
            $table->string('pekerjaan');
            $table->string('foto_diri');
            $table->string('ktam')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('direktorikeanggotaans');
    }
};
