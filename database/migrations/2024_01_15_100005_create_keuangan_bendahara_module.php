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
        // Keuangan Bendahara - Surat Bayar (Parent)
        Schema::create('keuangan_bendaharapajak_surat', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal_surat_bayar')->nullable();
            $table->string('nomor_surat_bayar', 100)->nullable();
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

        // Keuangan Bendahara - SPB (Surat Perintah Bayar)
        Schema::create('keuangan_bendaharapajak_spb', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_surat_bayar');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal_spb')->nullable();
            $table->string('nomor_spb', 100)->nullable();
            $table->double('nominal', 16, 2)->nullable();
            $table->string('tujuan', 255)->nullable();
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

            $table->foreign('id_surat_bayar')->references('id')->on('keuangan_bendaharapajak_surat');
            $table->index('id_divisi');
        });

        // Keuangan Bendahara - SPPB (Surat Permintaan Pembayaran Biaya)
        Schema::create('keuangan_bendaharapajak_sppb', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_surat_bayar');
            $table->unsignedInteger('id_spb');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal_sppb')->nullable();
            $table->string('nomor_sppb', 100)->nullable();
            $table->double('nominal', 16, 2)->nullable();
            $table->string('tujuan', 255)->nullable();
            $table->string('dibuat', 255)->nullable();
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

            $table->foreign('id_surat_bayar')->references('id')->on('keuangan_bendaharapajak_surat');
            $table->foreign('id_spb')->references('id')->on('keuangan_bendaharapajak_spb');
            $table->index('id_divisi');
        });

        // Keuangan Bendahara - Cashflow
        Schema::create('keuangan_bendaharapajak_cashflow', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->double('nominal', 16, 2)->nullable();
            $table->string('uraian', 255)->nullable();
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

        // Keuangan Bendahara - Penempatan
        Schema::create('keuangan_bendaharapajak_penempatan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->double('nominal', 16, 2)->nullable();
            $table->string('uraian', 255)->nullable();
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

        // Keuangan Bendahara - Pemindahbukuan
        Schema::create('keuangan_bendaharapajak_pemindahbukuan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tanggal')->nullable();
            $table->double('nominal', 16, 2)->nullable();
            $table->string('uraian', 255)->nullable();
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

        // Keuangan Bendahara - Pajak
        Schema::create('keuangan_bendaharapajak_pajak', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('masa', 50)->nullable();
            $table->year('tahun')->nullable();
            $table->string('uraian', 255)->nullable();
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
        Schema::dropIfExists('keuangan_bendaharapajak_pajak');
        Schema::dropIfExists('keuangan_bendaharapajak_pemindahbukuan');
        Schema::dropIfExists('keuangan_bendaharapajak_penempatan');
        Schema::dropIfExists('keuangan_bendaharapajak_cashflow');
        Schema::dropIfExists('keuangan_bendaharapajak_sppb');
        Schema::dropIfExists('keuangan_bendaharapajak_spb');
        Schema::dropIfExists('keuangan_bendaharapajak_surat');
    }
};
