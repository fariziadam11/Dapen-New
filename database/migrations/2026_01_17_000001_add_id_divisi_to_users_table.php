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
            $table->unsignedInteger('id_divisi')->nullable()->after('email');

            // Add foreign key if master_divisi table exists
            if (Schema::hasTable('master_divisi')) {
                $table->foreign('id_divisi')
                    ->references('id')
                    ->on('master_divisi')
                    ->onDelete('set null');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            if (Schema::hasColumn('users', 'id_divisi')) {
                $table->dropForeign(['id_divisi']);
                $table->dropColumn('id_divisi');
            }
        });
    }
};
