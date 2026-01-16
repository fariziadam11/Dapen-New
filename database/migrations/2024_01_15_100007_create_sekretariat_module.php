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
        // Sekretariat - Risalah Rapat
        Schema::create('sekretariat_risalah_rapat', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('periode', 25)->nullable();
            $table->string('kategori', 50)->nullable()->comment('PRBC, Rapat Pengurus, Rapat Gabungan, Rapat Sekretariat, Lainnya');
            $table->text('perihal')->nullable();
            $table->text('peserta')->nullable();
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

        // Sekretariat - Materi
        Schema::create('sekretariat_materi', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('periode', 25)->nullable();
            $table->text('perihal')->nullable();
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

        // Sekretariat - Laporan
        Schema::create('sekretariat_laporan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('periode', 25)->nullable();
            $table->string('kategori', 50)->nullable()->comment('Bulanan, Triwulanan, Semesteran, Tahunan, Lainnya');
            $table->text('perihal')->nullable();
            $table->string('tujuan', 255)->nullable();
            $table->date('dilaporkan')->nullable();
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

        // Sekretariat - Surat
        Schema::create('sekretariat_surat', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('kategori', 50)->nullable()->comment('Surat Masuk, Surat Keluar');
            $table->text('perihal')->nullable();
            $table->string('dari', 255)->nullable();
            $table->string('tujuan', 255)->nullable();
            $table->string('disposisi', 255)->nullable();
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

        // Sekretariat - Pengadaan
        Schema::create('sekretariat_pengadaan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('kategori', 50)->nullable()->comment('TOR, Justifikasi, Kontrak, SPMK, Berita Acara');
            $table->text('perihal')->nullable();
            $table->text('tujuan')->nullable();
            $table->string('masa_akhir', 255)->nullable();
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

        // Sekretariat - Remunerasi Pedoman
        Schema::create('sekretariat_remunerasi_pedoman', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('periode', 25)->nullable();
            $table->text('perihal')->nullable();
            $table->string('masa_akhir', 255)->nullable();
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

        // Sekretariat - Remunerasi Dokumen
        Schema::create('sekretariat_remunerasi_dokumen', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('periode', 25)->nullable();
            $table->string('kategori', 255)->nullable()->comment('Bulanan, THR, Jasa Usaha');
            $table->text('perihal')->nullable();
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
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('sekretariat_remunerasi_dokumen');
        Schema::dropIfExists('sekretariat_remunerasi_pedoman');
        Schema::dropIfExists('sekretariat_pengadaan');
        Schema::dropIfExists('sekretariat_surat');
        Schema::dropIfExists('sekretariat_laporan');
        Schema::dropIfExists('sekretariat_materi');
        Schema::dropIfExists('sekretariat_risalah_rapat');
    }
};
