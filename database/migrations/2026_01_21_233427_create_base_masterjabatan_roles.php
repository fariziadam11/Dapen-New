<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('base_masterjabatan_role', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('id_jabatan');
            $table->unsignedBigInteger('id_role');

            $table->timestamps();
            $table->softDeletes();

            // mencegah duplikasi role pada jabatan yang sama (data aktif)
            $table->unique(
                ['id_jabatan', 'id_role', 'deleted_at'],
                'uq_jabatan_role_active'
            );

            // foreign key constraints
            $table->foreign('id_jabatan')
                ->references('id')
                ->on('master_jabatan')
                ->onDelete('cascade');

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
