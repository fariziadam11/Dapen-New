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
        // Master Divisi
        Schema::create('master_divisi', function (Blueprint $table) {
            $table->increments('id');
            $table->string('kode_divisi', 20)->unique();
            $table->string('nama_divisi', 100);
            $table->unsignedInteger('id_module')->nullable();
            $table->text('description')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->foreign('id_module')->references('id')->on('base_modules')->onDelete('set null');
        });

        // Master Department (NEW)
        Schema::create('master_department', function (Blueprint $table) {
            $table->increments('id');
            $table->string('kode_department', 20)->unique();
            $table->string('nama_department', 100);
            $table->unsignedInteger('id_divisi')->nullable();
            $table->text('description')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->foreign('id_divisi')->references('id')->on('master_divisi')->onDelete('set null');
        });

        // Master Jabatan
        Schema::create('master_jabatan', function (Blueprint $table) {
            $table->increments('id');
            $table->string('kode_jabatan', 20)->unique();
            $table->string('nama_jabatan', 100);
            $table->unsignedInteger('id_divisi')->nullable();
            $table->unsignedInteger('id_department')->nullable();
            $table->unsignedInteger('id_role_default')->nullable();
            $table->tinyInteger('level_jabatan')->nullable()->comment('1:Staff, 2:Supervisor, 3:Manager, 4:Director');
            $table->text('description')->nullable();
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->foreign('id_divisi')->references('id')->on('master_divisi')->onDelete('set null');
            $table->foreign('id_department')->references('id')->on('master_department')->onDelete('set null');
            $table->foreign('id_role_default')->references('id')->on('base_roles')->onDelete('set null');
        });

        // User Jabatan History
        Schema::create('user_jabatan_history', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedBigInteger('id_user')->nullable();
            $table->string('nik', 20);
            $table->unsignedInteger('id_jabatan')->nullable();
            $table->unsignedInteger('id_divisi')->nullable();
            $table->unsignedInteger('id_department')->nullable();
            $table->date('valid_from');
            $table->date('valid_till')->nullable();
            $table->tinyInteger('is_active')->default(1);
            $table->timestamps();
            $table->softDeletes();
            $table->unsignedBigInteger('created_by')->nullable();
            $table->unsignedBigInteger('updated_by')->nullable();
            $table->unsignedBigInteger('deleted_by')->nullable();

            $table->foreign('id_user')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('id_jabatan')->references('id')->on('master_jabatan')->onDelete('set null');
            $table->foreign('id_divisi')->references('id')->on('master_divisi')->onDelete('set null');
            $table->foreign('id_department')->references('id')->on('master_department')->onDelete('set null');

            $table->index(['nik', 'is_active'], 'idx_nik_active');
            $table->index(['valid_from', 'valid_till'], 'idx_valid_dates');
        });

        // Add foreign key to base_roles for id_divisi
        Schema::table('base_roles', function (Blueprint $table) {
            $table->foreign('id_divisi')->references('id')->on('master_divisi')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('base_roles', function (Blueprint $table) {
            $table->dropForeign(['id_divisi']);
        });

        Schema::dropIfExists('user_jabatan_history');
        Schema::dropIfExists('master_jabatan');
        Schema::dropIfExists('master_department');
        Schema::dropIfExists('master_divisi');
    }
};
