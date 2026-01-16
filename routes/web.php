<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use App\Http\Controllers\GlobalSearchController;
use App\Http\Controllers\FileAccessController;
use App\Http\Controllers\Master\DivisiController;
use App\Http\Controllers\Master\DepartmentController;
use App\Http\Controllers\Master\JabatanController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
*/

Route::get('/', fn() => redirect()->route('login'));

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Authenticated routes
Route::middleware(['auth'])->group(function () {

    // Dashboard
    Route::get('/dashboard', fn() => view('dashboard'))->name('dashboard');

    // Global Search
    Route::get('/search', [GlobalSearchController::class, 'search'])->name('search');
    Route::post('/search/request-access', [GlobalSearchController::class, 'requestAccess'])->name('search.request-access');

    // File Access Management
    Route::prefix('access')->name('access.')->group(function () {
        Route::get('/', [FileAccessController::class, 'index'])->name('index');
        Route::get('/my-requests', [FileAccessController::class, 'myRequests'])->name('my-requests');
        Route::post('/{id}/approve', [FileAccessController::class, 'approve'])->name('approve');
        Route::post('/{id}/reject', [FileAccessController::class, 'reject'])->name('reject');
        Route::post('/assign', [FileAccessController::class, 'assignAccess'])->name('assign');
        Route::delete('/{id}', [FileAccessController::class, 'removeAccess'])->name('remove');
    });

    // Master Data
    Route::prefix('master')->name('master.')->group(function () {
        Route::resource('divisi', DivisiController::class);
        Route::resource('department', DepartmentController::class);
        Route::resource('jabatan', JabatanController::class);
        Route::get('jabatan/departments/{divisi}', [JabatanController::class, 'getDepartmentsByDivision'])->name('jabatan.departments');
    });

    // ======================
    // MODULE: AKUNTANSI
    // ======================
    Route::prefix('akuntansi')->name('akuntansi.')->group(function () {
        Route::resource('aturan-kebijakan', \App\Http\Controllers\Akuntansi\AturanKebijakanController::class);
        Route::get('aturan-kebijakan/{id}/download', [\App\Http\Controllers\Akuntansi\AturanKebijakanController::class, 'download'])->name('aturan-kebijakan.download');
        Route::resource('jurnal-umum', \App\Http\Controllers\Akuntansi\JurnalUmumController::class);
        Route::get('jurnal-umum/{id}/download', [\App\Http\Controllers\Akuntansi\JurnalUmumController::class, 'download'])->name('jurnal-umum.download');
        Route::resource('laporan-audit-investasi', \App\Http\Controllers\Akuntansi\LaporanAuditInvestasiController::class);
        Route::get('laporan-audit-investasi/{id}/download', [\App\Http\Controllers\Akuntansi\LaporanAuditInvestasiController::class, 'download'])->name('laporan-audit-investasi.download');
        Route::resource('laporan-audit-keuangan', \App\Http\Controllers\Akuntansi\LaporanAuditKeuanganController::class);
        Route::get('laporan-audit-keuangan/{id}/download', [\App\Http\Controllers\Akuntansi\LaporanAuditKeuanganController::class, 'download'])->name('laporan-audit-keuangan.download');
        Route::resource('laporan-bulanan', \App\Http\Controllers\Akuntansi\LaporanBulananController::class);
        Route::get('laporan-bulanan/{id}/download', [\App\Http\Controllers\Akuntansi\LaporanBulananController::class, 'download'])->name('laporan-bulanan.download');
    });

    // ======================
    // MODULE: ANGGARAN
    // ======================
    Route::prefix('anggaran')->name('anggaran.')->group(function () {
        Route::resource('aturan-kebijakan', \App\Http\Controllers\Anggaran\AturanKebijakanController::class);
        Route::get('aturan-kebijakan/{id}/download', [\App\Http\Controllers\Anggaran\AturanKebijakanController::class, 'download'])->name('aturan-kebijakan.download');
        Route::resource('dokumen-rra', \App\Http\Controllers\Anggaran\DokumenRraController::class);
        Route::get('dokumen-rra/{id}/download', [\App\Http\Controllers\Anggaran\DokumenRraController::class, 'download'])->name('dokumen-rra.download');
        Route::resource('laporan-prbc', \App\Http\Controllers\Anggaran\LaporanPrbcController::class);
        Route::get('laporan-prbc/{id}/download', [\App\Http\Controllers\Anggaran\LaporanPrbcController::class, 'download'])->name('laporan-prbc.download');
        Route::resource('rencana-kerja-direktorat', \App\Http\Controllers\Anggaran\RencanaKerjaDirektoratController::class);
        Route::get('rencana-kerja-direktorat/{id}/download', [\App\Http\Controllers\Anggaran\RencanaKerjaDirektoratController::class, 'download'])->name('rencana-kerja-direktorat.download');
        Route::resource('rencana-kerja-tahunan', \App\Http\Controllers\Anggaran\RencanaKerjaTahunanController::class);
        Route::get('rencana-kerja-tahunan/{id}/download', [\App\Http\Controllers\Anggaran\RencanaKerjaTahunanController::class, 'download'])->name('rencana-kerja-tahunan.download');
        Route::resource('rencana-kerja-triwulan', \App\Http\Controllers\Anggaran\RencanaKerjaTriwulanController::class);
        Route::get('rencana-kerja-triwulan/{id}/download', [\App\Http\Controllers\Anggaran\RencanaKerjaTriwulanController::class, 'download'])->name('rencana-kerja-triwulan.download');
    });

    // ======================
    // MODULE: HUKUM & KEPATUHAN
    // ======================
    Route::prefix('hukum-kepatuhan')->name('hukum-kepatuhan.')->group(function () {
        Route::resource('kajian-hukum', \App\Http\Controllers\HukumKepatuhan\KajianHukumController::class);
        Route::get('kajian-hukum/{id}/download', [\App\Http\Controllers\HukumKepatuhan\KajianHukumController::class, 'download'])->name('kajian-hukum.download');
        Route::resource('legal-memo', \App\Http\Controllers\HukumKepatuhan\LegalMemoController::class);
        Route::get('legal-memo/{id}/download', [\App\Http\Controllers\HukumKepatuhan\LegalMemoController::class, 'download'])->name('legal-memo.download');
        Route::resource('regulasi-internal', \App\Http\Controllers\HukumKepatuhan\RegulasiInternalController::class);
        Route::get('regulasi-internal/{id}/download', [\App\Http\Controllers\HukumKepatuhan\RegulasiInternalController::class, 'download'])->name('regulasi-internal.download');
        Route::resource('regulasi-external', \App\Http\Controllers\HukumKepatuhan\RegulasiExternalController::class);
        Route::get('regulasi-external/{id}/download', [\App\Http\Controllers\HukumKepatuhan\RegulasiExternalController::class, 'download'])->name('regulasi-external.download');
        Route::resource('kontrak', \App\Http\Controllers\HukumKepatuhan\KontrakController::class);
        Route::get('kontrak/{id}/download', [\App\Http\Controllers\HukumKepatuhan\KontrakController::class, 'download'])->name('kontrak.download');
        Route::resource('putusan', \App\Http\Controllers\HukumKepatuhan\PutusanController::class);
        Route::get('putusan/{id}/download', [\App\Http\Controllers\HukumKepatuhan\PutusanController::class, 'download'])->name('putusan.download');
        Route::resource('compliance-check', \App\Http\Controllers\HukumKepatuhan\ComplianceCheckController::class);
        Route::get('compliance-check/{id}/download', [\App\Http\Controllers\HukumKepatuhan\ComplianceCheckController::class, 'download'])->name('compliance-check.download');
    });

    // ======================
    // MODULE: INVESTASI
    // ======================
    Route::prefix('investasi')->name('investasi.')->group(function () {
        Route::resource('transaksi', \App\Http\Controllers\Investasi\TransaksiController::class);
        Route::get('transaksi/{id}/download', [\App\Http\Controllers\Investasi\TransaksiController::class, 'download'])->name('transaksi.download');
        Route::resource('surat', \App\Http\Controllers\Investasi\SuratController::class);
        Route::get('surat/{id}/download', [\App\Http\Controllers\Investasi\SuratController::class, 'download'])->name('surat.download');
        Route::resource('perencanaan-transaksi', \App\Http\Controllers\Investasi\PerencanaanTransaksiController::class);
        Route::get('perencanaan-transaksi/{id}/download', [\App\Http\Controllers\Investasi\PerencanaanTransaksiController::class, 'download'])->name('perencanaan-transaksi.download');
        Route::resource('perencanaan-surat', \App\Http\Controllers\Investasi\PerencanaanSuratController::class);
        Route::get('perencanaan-surat/{id}/download', [\App\Http\Controllers\Investasi\PerencanaanSuratController::class, 'download'])->name('perencanaan-surat.download');
        Route::resource('propensa-transaksi', \App\Http\Controllers\Investasi\PropensaTransaksiController::class);
        Route::get('propensa-transaksi/{id}/download', [\App\Http\Controllers\Investasi\PropensaTransaksiController::class, 'download'])->name('propensa-transaksi.download');
        Route::resource('propensa-surat', \App\Http\Controllers\Investasi\PropensaSuratController::class);
        Route::get('propensa-surat/{id}/download', [\App\Http\Controllers\Investasi\PropensaSuratController::class, 'download'])->name('propensa-surat.download');
    });

    // ======================
    // MODULE: KEUANGAN
    // ======================
    Route::prefix('keuangan')->name('keuangan.')->group(function () {
        Route::resource('surat-bayar', \App\Http\Controllers\Keuangan\SuratBayarController::class);
        Route::get('surat-bayar/{id}/download', [\App\Http\Controllers\Keuangan\SuratBayarController::class, 'download'])->name('surat-bayar.download');
        Route::resource('spb', \App\Http\Controllers\Keuangan\SpbController::class);
        Route::get('spb/{id}/download', [\App\Http\Controllers\Keuangan\SpbController::class, 'download'])->name('spb.download');
        Route::resource('sppb', \App\Http\Controllers\Keuangan\SppbController::class);
        Route::get('sppb/{id}/download', [\App\Http\Controllers\Keuangan\SppbController::class, 'download'])->name('sppb.download');
        Route::resource('cashflow', \App\Http\Controllers\Keuangan\CashflowController::class);
        Route::get('cashflow/{id}/download', [\App\Http\Controllers\Keuangan\CashflowController::class, 'download'])->name('cashflow.download');
        Route::resource('penempatan', \App\Http\Controllers\Keuangan\PenempatanController::class);
        Route::get('penempatan/{id}/download', [\App\Http\Controllers\Keuangan\PenempatanController::class, 'download'])->name('penempatan.download');
        Route::resource('pemindahbukuan', \App\Http\Controllers\Keuangan\PemindahbukuanController::class);
        Route::get('pemindahbukuan/{id}/download', [\App\Http\Controllers\Keuangan\PemindahbukuanController::class, 'download'])->name('pemindahbukuan.download');
        Route::resource('pajak', \App\Http\Controllers\Keuangan\PajakController::class);
        Route::get('pajak/{id}/download', [\App\Http\Controllers\Keuangan\PajakController::class, 'download'])->name('pajak.download');
    });

    // ======================
    // MODULE: SDM
    // ======================
    Route::prefix('sdm')->name('sdm.')->group(function () {
        Route::resource('pks', \App\Http\Controllers\Sdm\PksController::class);
        Route::get('pks/{id}/download', [\App\Http\Controllers\Sdm\PksController::class, 'download'])->name('pks.download');
        Route::resource('rarus', \App\Http\Controllers\Sdm\RarusController::class);
        Route::get('rarus/{id}/download', [\App\Http\Controllers\Sdm\RarusController::class, 'download'])->name('rarus.download');
        Route::resource('peraturan', \App\Http\Controllers\Sdm\PeraturanController::class);
        Route::get('peraturan/{id}/download', [\App\Http\Controllers\Sdm\PeraturanController::class, 'download'])->name('peraturan.download');
        Route::resource('rekrut-masuk', \App\Http\Controllers\Sdm\RekrutMasukController::class);
        Route::get('rekrut-masuk/{id}/download', [\App\Http\Controllers\Sdm\RekrutMasukController::class, 'download'])->name('rekrut-masuk.download');
        Route::resource('promosi-mutasi', \App\Http\Controllers\Sdm\PromosiMutasiController::class);
        Route::get('promosi-mutasi/{id}/download', [\App\Http\Controllers\Sdm\PromosiMutasiController::class, 'download'])->name('promosi-mutasi.download');
        Route::resource('naik-gaji', \App\Http\Controllers\Sdm\NaikGajiController::class);
        Route::get('naik-gaji/{id}/download', [\App\Http\Controllers\Sdm\NaikGajiController::class, 'download'])->name('naik-gaji.download');
        Route::resource('surat-masuk', \App\Http\Controllers\Sdm\SuratMasukController::class);
        Route::get('surat-masuk/{id}/download', [\App\Http\Controllers\Sdm\SuratMasukController::class, 'download'])->name('surat-masuk.download');
        Route::resource('surat-keluar', \App\Http\Controllers\Sdm\SuratKeluarController::class);
        Route::get('surat-keluar/{id}/download', [\App\Http\Controllers\Sdm\SuratKeluarController::class, 'download'])->name('surat-keluar.download');
    });

    // ======================
    // MODULE: SEKRETARIAT
    // ======================
    Route::prefix('sekretariat')->name('sekretariat.')->group(function () {
        Route::resource('risalah-rapat', \App\Http\Controllers\Sekretariat\RisalahRapatController::class);
        Route::get('risalah-rapat/{id}/download', [\App\Http\Controllers\Sekretariat\RisalahRapatController::class, 'download'])->name('risalah-rapat.download');
        Route::resource('materi', \App\Http\Controllers\Sekretariat\MateriController::class);
        Route::get('materi/{id}/download', [\App\Http\Controllers\Sekretariat\MateriController::class, 'download'])->name('materi.download');
        Route::resource('laporan', \App\Http\Controllers\Sekretariat\LaporanController::class);
        Route::get('laporan/{id}/download', [\App\Http\Controllers\Sekretariat\LaporanController::class, 'download'])->name('laporan.download');
        Route::resource('surat', \App\Http\Controllers\Sekretariat\SuratController::class);
        Route::get('surat/{id}/download', [\App\Http\Controllers\Sekretariat\SuratController::class, 'download'])->name('surat.download');
        Route::resource('pengadaan', \App\Http\Controllers\Sekretariat\PengadaanController::class);
        Route::get('pengadaan/{id}/download', [\App\Http\Controllers\Sekretariat\PengadaanController::class, 'download'])->name('pengadaan.download');
    });

    // ======================
    // MODULE: LOGISTIK & SARPEN
    // ======================
    Route::prefix('logistik')->name('logistik.')->group(function () {
        Route::resource('procurement', \App\Http\Controllers\Logistik\ProcurementController::class);
        Route::get('procurement/{id}/download', [\App\Http\Controllers\Logistik\ProcurementController::class, 'download'])->name('procurement.download');
        Route::resource('cleaning-service', \App\Http\Controllers\Logistik\CleaningServiceController::class);
        Route::get('cleaning-service/{id}/download', [\App\Http\Controllers\Logistik\CleaningServiceController::class, 'download'])->name('cleaning-service.download');
        Route::resource('keamanan', \App\Http\Controllers\Logistik\KeamananController::class);
        Route::get('keamanan/{id}/download', [\App\Http\Controllers\Logistik\KeamananController::class, 'download'])->name('keamanan.download');
        Route::resource('kendaraan', \App\Http\Controllers\Logistik\KendaraanController::class);
        Route::get('kendaraan/{id}/download', [\App\Http\Controllers\Logistik\KendaraanController::class, 'download'])->name('kendaraan.download');
        Route::resource('sarana-penunjang', \App\Http\Controllers\Logistik\SaranaPenunjangController::class);
        Route::get('sarana-penunjang/{id}/download', [\App\Http\Controllers\Logistik\SaranaPenunjangController::class, 'download'])->name('sarana-penunjang.download');
        Route::resource('smk3', \App\Http\Controllers\Logistik\Smk3Controller::class);
        Route::get('smk3/{id}/download', [\App\Http\Controllers\Logistik\Smk3Controller::class, 'download'])->name('smk3.download');
        Route::resource('polis-asuransi', \App\Http\Controllers\Logistik\PolisAsuransiController::class);
        Route::get('polis-asuransi/{id}/download', [\App\Http\Controllers\Logistik\PolisAsuransiController::class, 'download'])->name('polis-asuransi.download');
        Route::resource('jaminan', \App\Http\Controllers\Logistik\JaminanController::class);
        Route::get('jaminan/{id}/download', [\App\Http\Controllers\Logistik\JaminanController::class, 'download'])->name('jaminan.download');
    });

    // ======================
    // ADMIN ROUTES
    // ======================
    Route::prefix('admin')->name('admin.')->group(function () {
        Route::resource('menus', \App\Http\Controllers\Admin\MenuController::class);
        Route::post('menus/reorder', [\App\Http\Controllers\Admin\MenuController::class, 'reorder'])->name('menus.reorder');
        Route::resource('roles', \App\Http\Controllers\Admin\RoleController::class);
        Route::get('roles/{role}/privileges', [\App\Http\Controllers\Admin\RoleController::class, 'privileges'])->name('roles.privileges');
        Route::put('roles/{role}/privileges', [\App\Http\Controllers\Admin\RoleController::class, 'updatePrivileges'])->name('roles.privileges.update');
        Route::get('document-assignment', [\App\Http\Controllers\Admin\DocumentAssignmentController::class, 'index'])->name('document-assignment.index');
        Route::get('document-assignment/{module}', [\App\Http\Controllers\Admin\DocumentAssignmentController::class, 'showModule'])->name('document-assignment.module');
        Route::post('document-assignment/reassign', [\App\Http\Controllers\Admin\DocumentAssignmentController::class, 'reassign'])->name('document-assignment.reassign');
    });
});
