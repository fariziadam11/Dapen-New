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
        // 1. Remove id_divisi from master_department
        Schema::table('master_department', function (Blueprint $table) {
            // Drop foreign key first if it exists.
            // The constraint name usually follows table_column_foreign syntax, but explicitly: master_department_id_divisi_foreign
            $table->dropForeign(['id_divisi']);
            $table->dropColumn('id_divisi');
        });

        // 2. Add id_department to master_divisi
        Schema::table('master_divisi', function (Blueprint $table) {
            $table->unsignedInteger('id_department')->nullable()->after('nama_divisi');
            $table->foreign('id_department')->references('id')->on('master_department')->onDelete('set null');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Reverse: Remove id_department from master_divisi
        Schema::table('master_divisi', function (Blueprint $table) {
            $table->dropForeign(['id_department']);
            $table->dropColumn('id_department');
        });

        // Reverse: Add id_divisi back to master_department
        Schema::table('master_department', function (Blueprint $table) {
            $table->unsignedInteger('id_divisi')->nullable();
            $table->foreign('id_divisi')->references('id')->on('master_divisi')->onDelete('set null');
        });
    }
};
