<?php
// Script to generate individual controller files from bundled controllers
// Run: php generate_controllers.php

$controllers = [
    // Anggaran
    'Anggaran' => [
        'AturanKebijakanController' => ['model' => 'Anggaran\\AturanKebijakan', 'view' => 'anggaran.aturan-kebijakan', 'route' => 'anggaran.aturan-kebijakan'],
        'DokumenRraController' => ['model' => 'Anggaran\\DokumenRra', 'view' => 'anggaran.dokumen-rra', 'route' => 'anggaran.dokumen-rra'],
        'LaporanPrbcController' => ['model' => 'Anggaran\\LaporanPrbc', 'view' => 'anggaran.laporan-prbc', 'route' => 'anggaran.laporan-prbc'],
        'RencanaKerjaDirektoratController' => ['model' => 'Anggaran\\RencanaKerjaDirektorat', 'view' => 'anggaran.rencana-kerja-direktorat', 'route' => 'anggaran.rencana-kerja-direktorat'],
        'RencanaKerjaTahunanController' => ['model' => 'Anggaran\\RencanaKerjaTahunan', 'view' => 'anggaran.rencana-kerja-tahunan', 'route' => 'anggaran.rencana-kerja-tahunan'],
        'RencanaKerjaTriwulanController' => ['model' => 'Anggaran\\RencanaKerjaTriwulan', 'view' => 'anggaran.rencana-kerja-triwulan', 'route' => 'anggaran.rencana-kerja-triwulan'],
    ],
    // HukumKepatuhan
    'HukumKepatuhan' => [
        'KajianHukumController' => ['model' => 'HukumKepatuhan\\KajianHukum', 'view' => 'hukum-kepatuhan.kajian-hukum', 'route' => 'hukum-kepatuhan.kajian-hukum'],
        'LegalMemoController' => ['model' => 'HukumKepatuhan\\LegalMemo', 'view' => 'hukum-kepatuhan.legal-memo', 'route' => 'hukum-kepatuhan.legal-memo'],
        'RegulasiInternalController' => ['model' => 'HukumKepatuhan\\RegulasiInternal', 'view' => 'hukum-kepatuhan.regulasi-internal', 'route' => 'hukum-kepatuhan.regulasi-internal'],
        'RegulasiExternalController' => ['model' => 'HukumKepatuhan\\RegulasiExternal', 'view' => 'hukum-kepatuhan.regulasi-external', 'route' => 'hukum-kepatuhan.regulasi-external'],
        'KontrakController' => ['model' => 'HukumKepatuhan\\Kontrak', 'view' => 'hukum-kepatuhan.kontrak', 'route' => 'hukum-kepatuhan.kontrak'],
        'PutusanController' => ['model' => 'HukumKepatuhan\\Putusan', 'view' => 'hukum-kepatuhan.putusan', 'route' => 'hukum-kepatuhan.putusan'],
        'ComplianceCheckController' => ['model' => 'HukumKepatuhan\\ComplianceCheck', 'view' => 'hukum-kepatuhan.compliance-check', 'route' => 'hukum-kepatuhan.compliance-check'],
    ],
    // Investasi
    'Investasi' => [
        'SuratController' => ['model' => 'Investasi\\Surat', 'view' => 'investasi.surat', 'route' => 'investasi.surat'],
        'PerencanaanTransaksiController' => ['model' => 'Investasi\\PerencanaanTransaksi', 'view' => 'investasi.perencanaan-transaksi', 'route' => 'investasi.perencanaan-transaksi'],
        'PerencanaanSuratController' => ['model' => 'Investasi\\PerencanaanSurat', 'view' => 'investasi.perencanaan-surat', 'route' => 'investasi.perencanaan-surat'],
        'PropensaTransaksiController' => ['model' => 'Investasi\\PropensaTransaksi', 'view' => 'investasi.propensa-transaksi', 'route' => 'investasi.propensa-transaksi'],
        'PropensaSuratController' => ['model' => 'Investasi\\PropensaSurat', 'view' => 'investasi.propensa-surat', 'route' => 'investasi.propensa-surat'],
    ],
    // Keuangan
    'Keuangan' => [
        'SuratBayarController' => ['model' => 'Keuangan\\SuratBayar', 'view' => 'keuangan.surat-bayar', 'route' => 'keuangan.surat-bayar'],
        'SpbController' => ['model' => 'Keuangan\\Spb', 'view' => 'keuangan.spb', 'route' => 'keuangan.spb'],
        'SppbController' => ['model' => 'Keuangan\\Sppb', 'view' => 'keuangan.sppb', 'route' => 'keuangan.sppb'],
        'CashflowController' => ['model' => 'Keuangan\\Cashflow', 'view' => 'keuangan.cashflow', 'route' => 'keuangan.cashflow'],
        'PenempatanController' => ['model' => 'Keuangan\\Penempatan', 'view' => 'keuangan.penempatan', 'route' => 'keuangan.penempatan'],
        'PemindahbukuanController' => ['model' => 'Keuangan\\Pemindahbukuan', 'view' => 'keuangan.pemindahbukuan', 'route' => 'keuangan.pemindahbukuan'],
        'PajakController' => ['model' => 'Keuangan\\Pajak', 'view' => 'keuangan.pajak', 'route' => 'keuangan.pajak'],
    ],
    // Sdm
    'Sdm' => [
        'PksController' => ['model' => 'Sdm\\Pks', 'view' => 'sdm.pks', 'route' => 'sdm.pks'],
        'RarusController' => ['model' => 'Sdm\\Rarus', 'view' => 'sdm.rarus', 'route' => 'sdm.rarus'],
        'PeraturanController' => ['model' => 'Sdm\\Peraturan', 'view' => 'sdm.peraturan', 'route' => 'sdm.peraturan'],
        'RekrutMasukController' => ['model' => 'Sdm\\RekrutMasuk', 'view' => 'sdm.rekrut-masuk', 'route' => 'sdm.rekrut-masuk'],
        'PromosiMutasiController' => ['model' => 'Sdm\\PromosiMutasi', 'view' => 'sdm.promosi-mutasi', 'route' => 'sdm.promosi-mutasi'],
        'NaikGajiController' => ['model' => 'Sdm\\NaikGaji', 'view' => 'sdm.naik-gaji', 'route' => 'sdm.naik-gaji'],
        'SuratMasukController' => ['model' => 'Sdm\\SuratMasuk', 'view' => 'sdm.surat-masuk', 'route' => 'sdm.surat-masuk'],
        'SuratKeluarController' => ['model' => 'Sdm\\SuratKeluar', 'view' => 'sdm.surat-keluar', 'route' => 'sdm.surat-keluar'],
    ],
    // Sekretariat
    'Sekretariat' => [
        'RisalahRapatController' => ['model' => 'Sekretariat\\RisalahRapat', 'view' => 'sekretariat.risalah-rapat', 'route' => 'sekretariat.risalah-rapat'],
        'MateriController' => ['model' => 'Sekretariat\\Materi', 'view' => 'sekretariat.materi', 'route' => 'sekretariat.materi'],
        'LaporanController' => ['model' => 'Sekretariat\\Laporan', 'view' => 'sekretariat.laporan', 'route' => 'sekretariat.laporan'],
        'SuratController' => ['model' => 'Sekretariat\\Surat', 'view' => 'sekretariat.surat', 'route' => 'sekretariat.surat'],
        'PengadaanController' => ['model' => 'Sekretariat\\Pengadaan', 'view' => 'sekretariat.pengadaan', 'route' => 'sekretariat.pengadaan'],
    ],
    // Logistik
    'Logistik' => [
        'ProcurementController' => ['model' => 'Logistik\\Procurement', 'view' => 'logistik.procurement', 'route' => 'logistik.procurement'],
        'CleaningServiceController' => ['model' => 'Logistik\\CleaningService', 'view' => 'logistik.cleaning-service', 'route' => 'logistik.cleaning-service'],
        'KeamananController' => ['model' => 'Logistik\\Keamanan', 'view' => 'logistik.keamanan', 'route' => 'logistik.keamanan'],
        'KendaraanController' => ['model' => 'Logistik\\Kendaraan', 'view' => 'logistik.kendaraan', 'route' => 'logistik.kendaraan'],
        'SaranaPenunjangController' => ['model' => 'Logistik\\SaranaPenunjang', 'view' => 'logistik.sarana-penunjang', 'route' => 'logistik.sarana-penunjang'],
        'Smk3Controller' => ['model' => 'Logistik\\Smk3', 'view' => 'logistik.smk3', 'route' => 'logistik.smk3'],
        'PolisAsuransiController' => ['model' => 'Logistik\\PolisAsuransi', 'view' => 'logistik.polis-asuransi', 'route' => 'logistik.polis-asuransi'],
        'JaminanController' => ['model' => 'Logistik\\Jaminan', 'view' => 'logistik.jaminan', 'route' => 'logistik.jaminan'],
    ],
];

$template = '<?php

namespace App\Http\Controllers\{NAMESPACE};

use App\Http\Controllers\BaseDocumentController;
use App\Models\{MODEL};

class {CLASSNAME} extends BaseDocumentController
{
    protected string $modelClass = {MODEL}::class;
    protected string $viewPrefix = \'{VIEW}\';
    protected string $routePrefix = \'{ROUTE}\';
    protected string $moduleName = \'{MODULENAME}\';

    protected function getValidationRules(): array
    {
        return [
            \'id_divisi\' => \'required|exists:master_divisi,id\',
            \'judul\' => \'nullable|string|max:255\',
            \'perihal\' => \'nullable|string|max:255\',
            \'nomor\' => \'nullable|string|max:100\',
            \'tanggal\' => \'nullable|date\',
            \'file\' => \'nullable|file|max:10240|mimes:pdf,doc,docx,xls,xlsx\',
            \'sifat_dokumen\' => \'nullable|in:Umum,Rahasia\',
            \'lokasi\' => \'nullable|string|max:255\',
        ];
    }
}
';

$basePath = __DIR__ . '/app/Http/Controllers';

foreach ($controllers as $namespace => $controllerList) {
    $nsPath = $basePath . '/' . $namespace;
    if (!is_dir($nsPath)) {
        mkdir($nsPath, 0755, true);
    }

    foreach ($controllerList as $className => $config) {
        $moduleName = preg_replace('/Controller$/', '', $className);
        $moduleName = preg_replace('/([A-Z])/', ' $1', $moduleName);
        $moduleName = trim($moduleName);

        $content = str_replace(
            ['{NAMESPACE}', '{MODEL}', '{CLASSNAME}', '{VIEW}', '{ROUTE}', '{MODULENAME}'],
            [$namespace, $config['model'], $className, $config['view'], $config['route'], $moduleName],
            $template
        );

        $filePath = $nsPath . '/' . $className . '.php';
        file_put_contents($filePath, $content);
        echo "Created: $filePath\n";
    }
}

echo "\n✅ All controllers generated!\n";
