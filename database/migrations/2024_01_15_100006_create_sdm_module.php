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
        // SDM - PKS (Perjanjian Kerja Sama)
        Schema::create('sdm_pks', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->text('nama')->nullable();
            $table->date('mulai')->nullable();
            $table->date('akhir')->nullable();
            $table->string('kategori', 100)->nullable()->comment('Prohire/Kontrak, Yakes, Telkomedika, Insani, Renang, Bank, Lain-Lain');
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

        // SDM - RARUS
        Schema::create('sdm_rarus', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->text('perihal')->nullable();
            $table->string('kategori', 100)->nullable()->comment('Remunerasi, Organisasi, Promosi & Mutasi, IBO, Lain-Lain');
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

        // SDM - Peraturan
        Schema::create('sdm_peraturan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->date('tanggal')->nullable();
            $table->text('perihal')->nullable();
            $table->string('kategori', 100)->nullable()->comment('Remunerasi, Pola Karir, Organisasi, Pensiun Normal, Pensiun Pendi, Pensiun APS, Perusahaan, IC, Lain-Lain');
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

        // SDM - Rekrut Masuk
        Schema::create('sdm_rekrut_masuk', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nik', 25)->nullable();
            $table->string('nama', 100)->nullable();
            $table->smallInteger('status')->nullable();
            $table->text('perihal')->nullable();
            $table->date('tanggal')->nullable();
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

        // SDM - Capeg Pegrus
        Schema::create('sdm_capeg_pegrus', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nik', 25)->nullable();
            $table->string('nama', 100)->nullable();
            $table->smallInteger('status')->nullable();
            $table->text('perihal')->nullable();
            $table->date('tanggal')->nullable();
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

        // SDM - Promosi Mutasi
        Schema::create('sdm_promosi_mutasi', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nik', 25)->nullable();
            $table->string('nama', 100)->nullable();
            $table->smallInteger('status')->nullable();
            $table->text('perihal')->nullable();
            $table->date('tanggal')->nullable();
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

        // SDM - Naik Gaji
        Schema::create('sdm_naik_gaji', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nik', 25)->nullable();
            $table->string('nama', 100)->nullable();
            $table->smallInteger('status')->nullable();
            $table->text('perihal')->nullable();
            $table->date('tanggal')->nullable();
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

        // SDM - Penghargaan
        Schema::create('sdm_penghargaan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nik', 25)->nullable();
            $table->string('nama', 100)->nullable();
            $table->smallInteger('status')->nullable();
            $table->text('perihal')->nullable();
            $table->date('tanggal')->nullable();
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

        // SDM - Ikut Organisasi
        Schema::create('sdm_ikut_organisasi', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nik', 25)->nullable();
            $table->string('nama', 100)->nullable();
            $table->smallInteger('status')->nullable();
            $table->text('perihal')->nullable();
            $table->date('tanggal')->nullable();
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

        // SDM - Surat Masuk
        Schema::create('sdm_surat_masuk', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('perihal', 100)->nullable();
            $table->string('kategori', 100)->nullable()->comment('Surat Masuk Umum, Surat Magang/PKL, Surat Lamaran');
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

        // SDM - Surat Keluar
        Schema::create('sdm_surat_keluar', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('perihal', 100)->nullable();
            $table->string('kategori', 100)->nullable()->comment('Surat Keluar Umum, Surat Magang/PKL');
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

        // SDM - Aspurjab
        Schema::create('sdm_aspurjab', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->binary('nomor')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('nama', 100)->nullable();
            $table->date('mulai')->nullable();
            $table->date('akhir')->nullable();
            $table->string('kategori', 100)->nullable()->comment('Kontrak Induk, Nama Perjanjian, Nama Sertifikat');
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

        // SDM - Rekon
        Schema::create('sdm_rekon', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('ba', 100)->nullable();
            $table->string('hasil', 100)->nullable();
            $table->string('kategori', 100)->nullable()->comment('Telkom, YAKES, Dapen, BPJS, Lain-Lain');
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
        Schema::dropIfExists('sdm_rekon');
        Schema::dropIfExists('sdm_aspurjab');
        Schema::dropIfExists('sdm_surat_keluar');
        Schema::dropIfExists('sdm_surat_masuk');
        Schema::dropIfExists('sdm_ikut_organisasi');
        Schema::dropIfExists('sdm_penghargaan');
        Schema::dropIfExists('sdm_naik_gaji');
        Schema::dropIfExists('sdm_promosi_mutasi');
        Schema::dropIfExists('sdm_capeg_pegrus');
        Schema::dropIfExists('sdm_rekrut_masuk');
        Schema::dropIfExists('sdm_peraturan');
        Schema::dropIfExists('sdm_rarus');
        Schema::dropIfExists('sdm_pks');
    }
};
