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
        Schema::create('keanggotaans', function (Blueprint $table) {
            $table->id();
            $table->string('nama');
            $table->integer('nbm');
            $table->string('tempat_lahir');
            $table->date('tgl_lahir');
            $table->string('cabang');
            $table->string('ranting');
            $table->text('alamat');
            $table->string('status_perkawinan');
            $table->string('email');
            $table->bigInteger('no_hp');
            $table->string('pekerjaan');
            $table->string('foto_diri');
            $table->string('file_ktam');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('keanggotaans');
    }
};
