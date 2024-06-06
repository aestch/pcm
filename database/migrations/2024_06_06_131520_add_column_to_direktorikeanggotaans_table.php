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
        Schema::table('direktorikeanggotaans', function (Blueprint $table) {
            $table->enum('jabatan', ['Ketua', 'Wakil Ketua', 'Sekretaris', 'Bendahara', 'Anggota'])->default('Anggota');
            $table->enum('status', ['Menunggu Persetujuan', 'Disetujui', 'Ditolak'])->default('Menunggu Persetujuan');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('direktorikeanggotaans', function (Blueprint $table) {
            //
        });
    }
};
