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
        // Hukum Kepatuhan - Kajian Hukum
        Schema::create('hukumkepatuhan_kajian_hukum', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->text('judul')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('keterangan', 100)->nullable();
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

        // Hukum Kepatuhan - Legal Memo
        Schema::create('hukumkepatuhan_legal_memo', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->text('judul')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('keterangan', 100)->nullable();
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

        // Hukum Kepatuhan - Regulasi Internal
        Schema::create('hukumkepatuhan_regulasi_internal', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->text('judul')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('inisiator', 100)->nullable();
            $table->string('status', 100)->nullable();
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

        // Hukum Kepatuhan - Regulasi External
        Schema::create('hukumkepatuhan_regulasi_external', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->text('judul')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('status', 100)->nullable();
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

        // Hukum Kepatuhan - Kontrak
        Schema::create('hukumkepatuhan_kontrak', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->text('judul')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('berlaku_awal', 100)->nullable();
            $table->string('berlaku_akhir', 100)->nullable();
            $table->string('jenis', 100)->nullable();
            $table->string('pihak', 100)->nullable();
            $table->string('pemilik', 100)->nullable();
            $table->string('status', 100)->nullable();
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

        // Hukum Kepatuhan - Putusan
        Schema::create('hukumkepatuhan_putusan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->date('tanggal')->nullable();
            $table->string('klarifikasi', 255)->nullable();
            $table->string('tingkat_pengadilan', 100)->nullable();
            $table->string('status', 100)->nullable();
            $table->string('pihak', 100)->nullable();
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

        // Hukum Kepatuhan - Compliance Check
        Schema::create('hukumkepatuhan_compliance_check', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('nomor', 100)->nullable();
            $table->text('perihal')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('keterangan', 100)->nullable();
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

        // Hukum Kepatuhan - Penomoran
        Schema::create('hukumkepatuhan_penomoran', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->text('perihal')->nullable();
            $table->string('keterangan', 100)->nullable();
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

        // Hukum Kepatuhan - Lembar Rekomendasi
        Schema::create('hukumkepatuhan_lembar_rekomendasi', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->text('perihal')->nullable();
            $table->string('keterangan', 100)->nullable();
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

        // Hukum Kepatuhan - Lembar Keputusan
        Schema::create('hukumkepatuhan_lembar_keputusan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->text('perihal')->nullable();
            $table->string('keterangan', 100)->nullable();
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

        // Hukum Kepatuhan - Executive Summary
        Schema::create('hukumkepatuhan_executive_summary', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
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
        Schema::dropIfExists('hukumkepatuhan_executive_summary');
        Schema::dropIfExists('hukumkepatuhan_lembar_keputusan');
        Schema::dropIfExists('hukumkepatuhan_lembar_rekomendasi');
        Schema::dropIfExists('hukumkepatuhan_penomoran');
        Schema::dropIfExists('hukumkepatuhan_compliance_check');
        Schema::dropIfExists('hukumkepatuhan_putusan');
        Schema::dropIfExists('hukumkepatuhan_kontrak');
        Schema::dropIfExists('hukumkepatuhan_regulasi_external');
        Schema::dropIfExists('hukumkepatuhan_regulasi_internal');
        Schema::dropIfExists('hukumkepatuhan_legal_memo');
        Schema::dropIfExists('hukumkepatuhan_kajian_hukum');
    }
};
