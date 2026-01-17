<?php

/**
 * Add File Preview Feature to All Index Views
 * Updates file column to include preview icon
 */

$baseDir = __DIR__;
$viewsDir = $baseDir . '/resources/views';

$modules = [
    'akuntansi' => ['aturan-kebijakan', 'jurnal-umum', 'laporan-audit-investasi', 'laporan-audit-keuangan', 'laporan-bulanan'],
    'anggaran' => ['aturan-kebijakan', 'dokumen-rra', 'laporan-prbc', 'rencana-kerja-direktorat', 'rencana-kerja-tahunan', 'rencana-kerja-triwulan'],
    'investasi' => ['transaksi', 'surat', 'perencanaan-transaksi', 'perencanaan-surat', 'propensa-transaksi', 'propensa-surat'],
    'keuangan' => ['surat-bayar', 'spb', 'sppb', 'cashflow', 'penempatan', 'pemindahbukuan', 'pajak'],
    'hukum-kepatuhan' => ['aturan-kebijakan', 'kajian-hukum', 'kontrak', 'legal-memo', 'compliance-check', 'executive-summary', 'lembar-keputusan', 'lembar-rekomendasi', 'penomoran', 'putusan', 'regulasi-external', 'regulasi-internal'],
    'sdm' => ['aturan-kebijakan', 'pks', 'peraturan', 'surat-masuk', 'surat-keluar', 'naik-gaji', 'rekrut-masuk', 'capeg-pegrus', 'penghargaan', 'ikut-organisasi', 'aspurjab', 'rekon'],
    'sekretariat' => ['risalah-rapat', 'materi', 'laporan', 'pengadaan', 'surat', 'remunerasi-dokumen', 'remunerasi-pedoman'],
    'logistik' => ['procurement', 'keamanan', 'cleaning-service', 'jaminan', 'kendaraan', 'pelaporan-prbc', 'polis-asuransi', 'sarana-penunjang', 'smk3', 'user-satisfaction', 'vendor-satisfaction'],
];

$updatedCount = 0;

foreach ($modules as $module => $submodules) {
    foreach ($submodules as $submodule) {
        $indexFile = "$viewsDir/$module/$submodule/index.blade.php";

        if (!file_exists($indexFile)) {
            echo "Skipped (not found): $module/$submodule/index.blade.php\n";
            continue;
        }

        $content = file_get_contents($indexFile);
        $routePrefix = "$module.$submodule";

        // Pattern 1: Single line format
        $oldPattern1 = "<td>@if(\$item->file_name)<a href=\"{{ route('$routePrefix.download', \$item->id) }}\" class=\"text-primary\"><i class=\"bi bi-download\"></i></a>@else - @endif</td>";
        $newPattern1 = "<td>@if(\$item->file_name)<a href=\"#\" onclick=\"previewFile('{{ route('$routePrefix.download', \$item->id) }}', '{{ \$item->file_name }}'); return false;\" class=\"text-primary me-2\" title=\"Preview\"><i class=\"bi bi-eye\"></i></a><a href=\"{{ route('$routePrefix.download', \$item->id) }}\" class=\"text-success\" title=\"Download\"><i class=\"bi bi-download\"></i></a>@else - @endif</td>";

        // Pattern 2: Multi-line format (for investasi/transaksi and keuangan/spb)
        $oldPattern2 = "@if(\$item->file_name)\n                                    <a href=\"{{ route('$routePrefix.download', \$item->id) }}\" class=\"text-primary\"><i\n                                            class=\"bi bi-download\"></i></a>\n                                @else\n                                    -\n                                @endif";
        $newPattern2 = "@if(\$item->file_name)\n                                    <a href=\"#\" onclick=\"previewFile('{{ route('$routePrefix.download', \$item->id) }}', '{{ \$item->file_name }}'); return false;\" class=\"text-primary me-2\" title=\"Preview\"><i class=\"bi bi-eye\"></i></a>\n                                    <a href=\"{{ route('$routePrefix.download', \$item->id) }}\" class=\"text-success\" title=\"Download\"><i class=\"bi bi-download\"></i></a>\n                                @else\n                                    -\n                                @endif";

        $updated = false;

        // Try pattern 1
        if (strpos($content, $oldPattern1) !== false) {
            $content = str_replace($oldPattern1, $newPattern1, $content);
            $updated = true;
        }

        // Try pattern 2
        if (strpos($content, $oldPattern2) !== false) {
            $content = str_replace($oldPattern2, $newPattern2, $content);
            $updated = true;
        }

        if ($updated) {
            file_put_contents($indexFile, $content);
            echo "Updated: $module/$submodule/index.blade.php\n";
            $updatedCount++;
        } else {
            echo "No match: $module/$submodule/index.blade.php\n";
        }
    }
}

echo "\n=== FILE PREVIEW FEATURE ADDED ===\n";
echo "Total files updated: $updatedCount\n";
