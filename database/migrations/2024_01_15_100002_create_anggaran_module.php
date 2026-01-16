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
        // Anggaran - Aturan Kebijakan
        Schema::create('anggaran_aturan_kebijakan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->string('judul', 100)->nullable();
            $table->string('file', 100)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });

        // Anggaran - Dokumen RRA
        Schema::create('anggaran_dokumen_rra', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('direktorat', 100)->nullable();
            $table->string('nomor_nota', 100)->nullable();
            $table->string('nomor_sukka', 255)->nullable();
            $table->string('file', 100)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });

        // Anggaran - Laporan PRBC
        Schema::create('anggaran_laporan_prbc', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->unsignedInteger('tahun')->nullable();
            $table->unsignedInteger('bulan')->nullable();
            $table->string('file', 100)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });

        // Anggaran - Rencana Kerja Direktorat
        Schema::create('anggaran_rencana_kerja_direktorat', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->unsignedInteger('tahun')->nullable();
            $table->string('direktorat', 100)->nullable();
            $table->string('judul', 100)->nullable();
            $table->string('file', 100)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });

        // Anggaran - Rencana Kerja Tahunan
        Schema::create('anggaran_rencana_kerja_tahunan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->unsignedInteger('tahun')->nullable();
            $table->string('judul', 100)->nullable();
            $table->string('file', 255)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });

        // Anggaran - Rencana Kerja Triwulan
        Schema::create('anggaran_rencana_kerja_triwulan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->unsignedInteger('tahun')->nullable();
            $table->string('judul', 100)->nullable();
            $table->string('file', 255)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('anggaran_rencana_kerja_triwulan');
        Schema::dropIfExists('anggaran_rencana_kerja_tahunan');
        Schema::dropIfExists('anggaran_rencana_kerja_direktorat');
        Schema::dropIfExists('anggaran_laporan_prbc');
        Schema::dropIfExists('anggaran_dokumen_rra');
        Schema::dropIfExists('anggaran_aturan_kebijakan');
    }
};
