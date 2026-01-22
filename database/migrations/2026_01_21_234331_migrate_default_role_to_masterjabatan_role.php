<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

return new class extends Migration
{
    public function up(): void
    {
        $now = Carbon::now();

        DB::table('master_jabatan')
            ->whereNotNull('id_role_default')
            ->orderBy('id')
            ->chunkById(100, function ($jabatans) use ($now) {
                foreach ($jabatans as $jabatan) {

                    // hindari duplikasi
                    $exists = DB::table('base_masterjabatan_role')
                        ->where('id_jabatan', $jabatan->id)
                        ->where('id_role', $jabatan->id_role_default)
                        ->whereNull('deleted_at')
                        ->exists();

                    if (! $exists) {
                        DB::table('base_masterjabatan_role')->insert([
                            'id_jabatan' => $jabatan->id,
                            'id_role'    => $jabatan->id_role_default,
                            'created_at' => $now,
                            'updated_at' => $now,
                        ]);
                    }
                }
            });
    }

    public function down(): void
    {
        // rollback hanya menghapus data hasil migrasi
        DB::table('base_masterjabatan_role')->truncate();
    }
};
