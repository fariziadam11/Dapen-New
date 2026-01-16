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
        // Logistik Sarpen - Procurement
        Schema::create('logistiksarpen_procurement', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('no_drp', 50)->nullable();
            $table->text('nama_kegiatan')->nullable();
            $table->string('direktorat', 255)->nullable();
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

        // Logistik Sarpen - Cleaning Service
        Schema::create('logistiksarpen_cleaning_service', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->year('tahun')->nullable();
            $table->string('bulan', 50)->nullable();
            $table->text('nama_kegiatan')->nullable();
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

        // Logistik Sarpen - Keamanan
        Schema::create('logistiksarpen_keamanan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->year('tahun')->nullable();
            $table->string('bulan', 50)->nullable();
            $table->text('nama_kegiatan')->nullable();
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

        // Logistik Sarpen - Kendaraan
        Schema::create('logistiksarpen_kendaraan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->year('tahun')->nullable();
            $table->string('bulan', 50)->nullable();
            $table->text('nama_kegiatan')->nullable();
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

        // Logistik Sarpen - Sarana Penunjang
        Schema::create('logistiksarpen_sarana_penunjang', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->year('tahun')->nullable();
            $table->string('bulan', 50)->nullable();
            $table->text('nama_kegiatan')->nullable();
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

        // Logistik Sarpen - Pelaporan PRBC
        Schema::create('logistiksarpen_pelaporan_prbc', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('bulan', 50)->nullable();
            $table->date('tanggal')->nullable();
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

        // Logistik Sarpen - User Satisfaction
        Schema::create('logistiksarpen_user_satisfaction', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->year('tahun')->nullable();
            $table->date('tanggal')->nullable();
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

        // Logistik Sarpen - Vendor Satisfaction
        Schema::create('logistiksarpen_vendor_satisfaction', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->year('tahun')->nullable();
            $table->date('tanggal')->nullable();
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

        // Logistik Sarpen - SMK3
        Schema::create('logistiksarpen_smk3', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->year('tahun')->nullable();
            $table->string('bulan', 50)->nullable();
            $table->text('nama_kegiatan')->nullable();
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

        // Logistik Sarpen - Polis Asuransi
        Schema::create('logistiksarpen_polis_asuransi', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->year('tahun')->nullable();
            $table->date('berlaku_mulai')->nullable();
            $table->date('berlaku_akhir')->nullable();
            $table->string('nilai', 100)->nullable();
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

        // Logistik Sarpen - Jaminan
        Schema::create('logistiksarpen_jaminan', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('id_divisi')->nullable();
            $table->string('jenis_jaminan', 50)->nullable()->comment('Jaminan Penawaran, Jaminan Uang Muka, Jaminan Pelaksanaan, Jaminan Pemeliharaan');
            $table->string('nomor_drp', 100)->nullable();
            $table->text('nama_pengadaan')->nullable();
            $table->string('vendor', 255)->nullable();
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
        Schema::dropIfExists('logistiksarpen_jaminan');
        Schema::dropIfExists('logistiksarpen_polis_asuransi');
        Schema::dropIfExists('logistiksarpen_smk3');
        Schema::dropIfExists('logistiksarpen_vendor_satisfaction');
        Schema::dropIfExists('logistiksarpen_user_satisfaction');
        Schema::dropIfExists('logistiksarpen_pelaporan_prbc');
        Schema::dropIfExists('logistiksarpen_sarana_penunjang');
        Schema::dropIfExists('logistiksarpen_kendaraan');
        Schema::dropIfExists('logistiksarpen_keamanan');
        Schema::dropIfExists('logistiksarpen_cleaning_service');
        Schema::dropIfExists('logistiksarpen_procurement');
    }
};
