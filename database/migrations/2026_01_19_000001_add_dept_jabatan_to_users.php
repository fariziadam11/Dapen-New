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
        Schema::table('users', function (Blueprint $table) {
            $table->unsignedBigInteger('id_department')->nullable()->after('id_divisi');
            $table->unsignedBigInteger('id_jabatan')->nullable()->after('id_department');

            // Foreign keys if tables exist (assuming they do based on context)
            $table->foreign('id_department')->references('id')->on('master_department')->onDelete('set null');
            $table->foreign('id_jabatan')->references('id')->on('master_jabatan')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropForeign(['id_department']);
            $table->dropForeign(['id_jabatan']);
            $table->dropColumn(['id_department', 'id_jabatan']);
        });
    }
};
