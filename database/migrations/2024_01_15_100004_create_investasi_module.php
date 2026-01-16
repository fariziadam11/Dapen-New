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
        // Transaksi (Investasi - Pembelian/Penjualan)
        Schema::create('transaksi', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->tinyInteger('type')->unsigned()->nullable()->comment('1: Pembelian; 2: Penjualan;');
            $table->date('tgl_transaksi')->nullable();
            $table->string('perihal', 250)->nullable();
            $table->string('saham', 100)->nullable();
            $table->string('broker', 100)->nullable();
            $table->text('keterangan')->nullable();
            $table->string('file', 50)->nullable();
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
            $table->index('type');
        });

        // Surat (Investasi - Masuk/Keluar)
        Schema::create('surat', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->date('tgl_surat')->nullable();
            $table->tinyInteger('type')->unsigned()->nullable()->comment('1: Keluar; 2: Masuk;');
            $table->string('no_surat', 100)->nullable();
            $table->string('no_agenda', 100)->nullable();
            $table->string('perihal', 100)->nullable();
            $table->tinyInteger('jenis')->unsigned()->nullable()->comment('1: Keluar; 2: Masuk;');
            $table->string('nama_perusahaan', 100)->nullable();
            $table->smallInteger('klasifikasi')->unsigned()->nullable();
            $table->text('keterangan')->nullable();
            $table->string('file', 50)->nullable();
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
            $table->index('type');
        });

        // Investasi Perencanaan - Transaksi
        Schema::create('investasi_perencanaan_transaksi', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->tinyInteger('type')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('perihal', 255)->nullable();
            $table->text('keterangan')->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->string('file', 50)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });

        // Investasi Perencanaan - Surat
        Schema::create('investasi_perencanaan_surat', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->tinyInteger('type')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->string('perihal', 255)->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->string('file', 50)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });

        // Investasi Propensa - Transaksi
        Schema::create('investasi_propensa_transaksi', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->tinyInteger('type')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('perihal', 255)->nullable();
            $table->text('keterangan')->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->string('file', 50)->nullable();
            $table->string('file_name', 255)->nullable();
            $table->integer('version')->default(1);
            $table->enum('sifat_dokumen', ['Rahasia', 'Umum'])->default('Umum');
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->index('id_divisi');
        });

        // Investasi Propensa - Surat
        Schema::create('investasi_propensa_surat', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->tinyInteger('type')->nullable();
            $table->date('tanggal')->nullable();
            $table->string('nomor', 50)->nullable();
            $table->string('perihal', 255)->nullable();
            $table->string('lokasi', 255)->nullable();
            $table->string('file', 50)->nullable();
            $table->string('file_name', 255)->nullable();
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
        Schema::dropIfExists('investasi_propensa_surat');
        Schema::dropIfExists('investasi_propensa_transaksi');
        Schema::dropIfExists('investasi_perencanaan_surat');
        Schema::dropIfExists('investasi_perencanaan_transaksi');
        Schema::dropIfExists('surat');
        Schema::dropIfExists('transaksi');
    }
};
