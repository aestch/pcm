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
        Schema::create('arsipadministrasis', function (Blueprint $table) {
            $table->id();
            $table->date('tgl_arsip');
            $table->string('no_surat');
            $table->unsignedBigInteger('kategoriarsip_id'); // Menambahkan kolom user_id
            $table->foreign('kategoriarsip_id')->references('id')->on('kategoriarsips'); // Menambahkan foreign key constraint
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('arsipadministrasis');
    }
};
