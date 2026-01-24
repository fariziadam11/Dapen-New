<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('base_masterjabatan_role', function (Blueprint $table) {
            $table->bigIncrements('id');

            /**
             * WAJIB SAMA dengan master_jabatan.id
             * master_jabatan.id = INT UNSIGNED
             */
            $table->unsignedInteger('id_jabatan');

            /**
             * Sesuaikan dengan base_roles.id
             * (biasanya INT UNSIGNED di project lama)
             */
            $table->unsignedInteger('id_role');

            /**
             * Flag opsional:
             * - false = additional role
             * - true  = default tambahan (opsional, bukan pengganti id_role_default)
             */
            $table->boolean('is_default')->default(false);

            $table->timestamps();
            $table->softDeletes();

            /**
             * Mencegah duplikasi role pada jabatan yang sama
             * hanya untuk data aktif (soft delete aware)
             */
            $table->unique(
                ['id_jabatan', 'id_role', 'deleted_at'],
                'uq_jabatan_role_active'
            );

            /**
             * Foreign Key: master_jabatan
             */
            $table->foreign('id_jabatan')
                ->references('id')
                ->on('master_jabatan')
                ->onDelete('cascade');

            /**
             * Foreign Key: base_roles
             */
            $table->foreign('id_role')
                ->references('id')
                ->on('base_roles')
                ->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('base_masterjabatan_role');
    }
};
