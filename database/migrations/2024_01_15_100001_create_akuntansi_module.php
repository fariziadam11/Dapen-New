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
        // Akuntansi - Aturan Kebijakan
        Schema::create('akuntansi_aturan_kebijakan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_folder')->nullable();
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

            $table->index('id_folder');
            $table->index('id_divisi');
        });

        // Akuntansi - Jurnal Umum
        Schema::create('akuntansi_jurnal_umum', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->unsignedInteger('tahun')->nullable();
            $table->unsignedInteger('bulan')->nullable();
            $table->text('keterangan')->nullable();
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

        // Akuntansi - Laporan Audit Investasi
        Schema::create('akuntansi_laporan_audit_investasi', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->text('judul')->nullable();
            $table->string('nama_kap', 100)->nullable();
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

        // Akuntansi - Laporan Audit Keuangan
        Schema::create('akuntansi_laporan_audit_keuangan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->text('judul')->nullable();
            $table->string('nama_kap', 100)->nullable();
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

        // Akuntansi - Laporan Bulanan
        Schema::create('akuntansi_laporan_bulanan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
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
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('akuntansi_laporan_bulanan');
        Schema::dropIfExists('akuntansi_laporan_audit_keuangan');
        Schema::dropIfExists('akuntansi_laporan_audit_investasi');
        Schema::dropIfExists('akuntansi_jurnal_umum');
        Schema::dropIfExists('akuntansi_aturan_kebijakan');
    }
};
