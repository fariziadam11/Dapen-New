<?php
// Run with: php generate_views.php

$modules = [
    'anggaran' => [
        'dokumen-rra' => 'Dokumen RRA',
        'laporan-prbc' => 'Laporan PRBC',
        'rencana-kerja-direktorat' => 'Rencana Kerja Direktorat',
        'rencana-kerja-tahunan' => 'Rencana Kerja Tahunan',
        'rencana-kerja-triwulan' => 'Rencana Kerja Triwulan',
    ],
    'hukum-kepatuhan' => [
        'kajian-hukum' => 'Kajian Hukum',
        'legal-memo' => 'Legal Memo',
        'regulasi-internal' => 'Regulasi Internal',
        'regulasi-external' => 'Regulasi External',
        'kontrak' => 'Kontrak',
        'putusan' => 'Putusan',
        'compliance-check' => 'Compliance Check',
        'penomoran' => 'Penomoran',
        'lembar-rekomendasi' => 'Lembar Rekomendasi',
        'lembar-keputusan' => 'Lembar Keputusan',
        'executive-summary' => 'Executive Summary',
    ],
    'investasi' => [
        'transaksi' => 'Transaksi',
        'surat' => 'Surat',
        'perencanaan-transaksi' => 'Perencanaan Transaksi',
        'perencanaan-surat' => 'Perencanaan Surat',
        'propensa-transaksi' => 'Propensa Transaksi',
        'propensa-surat' => 'Propensa Surat',
    ],
    'keuangan' => [
        'surat-bayar' => 'Surat Bayar',
        'spb' => 'SPB',
        'sppb' => 'SPPB',
        'cashflow' => 'Cashflow',
        'penempatan' => 'Penempatan',
        'pemindahbukuan' => 'Pemindahbukuan',
        'pajak' => 'Pajak',
    ],
    'sdm' => [
        'pks' => 'PKS',
        'rarus' => 'Rarus',
        'peraturan' => 'Peraturan',
        'rekrut-masuk' => 'Rekrut Masuk',
        'capeg-pegrus' => 'Capeg/Pegrus',
        'promosi-mutasi' => 'Promosi/Mutasi',
        'naik-gaji' => 'Naik Gaji',
        'penghargaan' => 'Penghargaan',
        'ikut-organisasi' => 'Ikut Organisasi',
        'surat-masuk' => 'Surat Masuk',
        'surat-keluar' => 'Surat Keluar',
        'aspurjab' => 'Aspurjab',
        'rekon' => 'Rekon',
    ],
    'sekretariat' => [
        'risalah-rapat' => 'Risalah Rapat',
        'materi' => 'Materi',
        'laporan' => 'Laporan',
        'surat' => 'Surat',
        'pengadaan' => 'Pengadaan',
        'remunerasi-pedoman' => 'Remunerasi Pedoman',
        'remunerasi-dokumen' => 'Remunerasi Dokumen',
    ],
    'logistik' => [
        'procurement' => 'Procurement',
        'cleaning-service' => 'Cleaning Service',
        'keamanan' => 'Keamanan',
        'kendaraan' => 'Kendaraan',
        'sarana-penunjang' => 'Sarana Penunjang',
        'pelaporan-prbc' => 'Pelaporan PRBC',
        'user-satisfaction' => 'User Satisfaction',
        'vendor-satisfaction' => 'Vendor Satisfaction',
        'smk3' => 'SMK3',
        'polis-asuransi' => 'Polis Asuransi',
        'jaminan' => 'Jaminan',
    ],
];

$basePath = __DIR__ . '/resources/views';

foreach ($modules as $module => $subModules) {
    // Create base templates for each module
    $modulePath = $basePath . '/' . $module;
    if (!is_dir($modulePath)) {
        mkdir($modulePath, 0755, true);
    }

    // Create _index.blade.php
    $indexTemplate = '@extends(\'layouts.app\')
@section(\'title\', $moduleName)
@section(\'breadcrumb\')
<li class="breadcrumb-item"><a href="#">' . ucwords(str_replace('-', ' ', $module)) . '</a></li>
<li class="breadcrumb-item active">{{ $subModule }}</li>
@endsection
@section(\'content\')
<div class="page-header d-flex justify-content-between align-items-center mb-4">
    <h1 class="page-title">{{ $moduleName }}</h1>
    <a href="{{ route($routePrefix . \'.create\') }}" class="btn btn-primary"><i class="bi bi-plus-lg me-1"></i> Tambah</a>
</div>
<div class="card mb-4"><div class="card-body">
    <form method="GET" class="row g-3">
        <div class="col-md-4"><input type="text" name="search" class="form-control" placeholder="Cari..." value="{{ request(\'search\') }}"></div>
        <div class="col-md-3"><select name="id_divisi" class="form-select"><option value="">Semua Divisi</option>@foreach(\App\Models\MasterDivisi::all() as $d)<option value="{{ $d->id }}" {{ request(\'id_divisi\') == $d->id ? \'selected\' : \'\' }}>{{ $d->nama_divisi }}</option>@endforeach</select></div>
        <div class="col-md-3"><select name="sifat_dokumen" class="form-select"><option value="">Semua</option><option value="Umum" {{ request(\'sifat_dokumen\') == \'Umum\' ? \'selected\' : \'\' }}>Umum</option><option value="Rahasia" {{ request(\'sifat_dokumen\') == \'Rahasia\' ? \'selected\' : \'\' }}>Rahasia</option></select></div>
        <div class="col-md-2"><button type="submit" class="btn btn-primary w-100"><i class="bi bi-search"></i></button></div>
    </form>
</div></div>
<div class="card"><div class="card-body p-0">
    <table class="table table-hover mb-0">
        <thead><tr><th>#</th><th>Judul</th><th>Divisi</th><th>Tanggal</th><th>Klasifikasi</th><th>Versi</th><th>Aksi</th></tr></thead>
        <tbody>
            @forelse($data as $i => $item)
            <tr>
                <td>{{ $data->firstItem() + $i }}</td>
                <td><i class="bi bi-file-earmark-text text-primary me-2"></i><strong>{{ $item->judul ?? $item->perihal ?? $item->nama ?? \'-\' }}</strong></td>
                <td>{{ $item->divisi?->nama_divisi ?? \'-\' }}</td>
                <td>{{ $item->tanggal ? \Carbon\Carbon::parse($item->tanggal)->format(\'d M Y\') : \'-\' }}</td>
                <td>@if($item->sifat_dokumen == \'Rahasia\')<span class="badge badge-secret"><i class="bi bi-lock"></i></span>@else<span class="badge badge-public"><i class="bi bi-unlock"></i></span>@endif</td>
                <td><span class="badge bg-secondary">v{{ $item->version ?? 1 }}</span></td>
                <td>
                    <div class="btn-group btn-group-sm">
                        <a href="{{ route($routePrefix . \'.show\', $item->id) }}" class="btn btn-outline-primary"><i class="bi bi-eye"></i></a>
                        <a href="{{ route($routePrefix . \'.edit\', $item->id) }}" class="btn btn-outline-warning"><i class="bi bi-pencil"></i></a>
                        @if($item->file)<a href="{{ route($routePrefix . \'.download\', $item->id) }}" class="btn btn-outline-success"><i class="bi bi-download"></i></a>@endif
                        <form action="{{ route($routePrefix . \'.destroy\', $item->id) }}" method="POST" class="d-inline" onsubmit="return confirm(\'Yakin?\')">@csrf @method(\'DELETE\')<button class="btn btn-outline-danger"><i class="bi bi-trash"></i></button></form>
                    </div>
                </td>
            </tr>
            @empty
            <tr><td colspan="7" class="text-center py-4 text-muted">Belum ada data</td></tr>
            @endforelse
        </tbody>
    </table>
</div>@if($data->hasPages())<div class="card-footer">{{ $data->withQueryString()->links() }}</div>@endif</div>
@endsection';

    file_put_contents($modulePath . '/_index.blade.php', $indexTemplate);
    echo "Created: $modulePath/_index.blade.php\n";

    // Create _form.blade.php
    $formTemplate = '@extends(\'layouts.app\')
@section(\'title\', (isset($record) ? \'Edit\' : \'Tambah\') . \' - \' . $moduleName)
@section(\'breadcrumb\')
<li class="breadcrumb-item"><a href="#">' . ucwords(str_replace('-', ' ', $module)) . '</a></li>
<li class="breadcrumb-item"><a href="{{ route($routePrefix . \'.index\') }}">{{ $subModule }}</a></li>
<li class="breadcrumb-item active">{{ isset($record) ? \'Edit\' : \'Tambah\' }}</li>
@endsection
@section(\'content\')
<div class="page-header mb-4"><h1 class="page-title">{{ isset($record) ? \'Edit\' : \'Tambah\' }} {{ $moduleName }}</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ isset($record) ? route($routePrefix . \'.update\', $record->id) : route($routePrefix . \'.store\') }}" method="POST" enctype="multipart/form-data">
        @csrf @if(isset($record)) @method(\'PUT\') @endif
        <div class="row g-4">
            <div class="col-md-6"><label class="form-label">Divisi <span class="text-danger">*</span></label><select name="id_divisi" class="form-select" required><option value="">Pilih Divisi</option>@foreach($divisions as $d)<option value="{{ $d->id }}" {{ old(\'id_divisi\', $record->id_divisi ?? \'\') == $d->id ? \'selected\' : \'\' }}>{{ $d->nama_divisi }}</option>@endforeach</select></div>
            <div class="col-md-6"><label class="form-label">Klasifikasi</label><select name="sifat_dokumen" class="form-select"><option value="Umum" {{ old(\'sifat_dokumen\', $record->sifat_dokumen ?? \'\') == \'Umum\' ? \'selected\' : \'\' }}>Umum</option><option value="Rahasia" {{ old(\'sifat_dokumen\', $record->sifat_dokumen ?? \'\') == \'Rahasia\' ? \'selected\' : \'\' }}>Rahasia</option></select></div>
            <div class="col-md-6"><label class="form-label">Nomor</label><input type="text" name="nomor" class="form-control" value="{{ old(\'nomor\', $record->nomor ?? \'\') }}"></div>
            <div class="col-md-6"><label class="form-label">Tanggal</label><input type="date" name="tanggal" class="form-control" value="{{ old(\'tanggal\', isset($record->tanggal) ? \Carbon\Carbon::parse($record->tanggal)->format(\'Y-m-d\') : \'\') }}"></div>
            <div class="col-12"><label class="form-label">Judul/Perihal <span class="text-danger">*</span></label><input type="text" name="judul" class="form-control" value="{{ old(\'judul\', $record->judul ?? $record->perihal ?? \'\') }}" required></div>
            <div class="col-12"><label class="form-label">Lokasi Fisik</label><input type="text" name="lokasi" class="form-control" value="{{ old(\'lokasi\', $record->lokasi ?? \'\') }}"></div>
            <div class="col-12"><label class="form-label">File @if(!isset($record))<span class="text-danger">*</span>@endif</label><input type="file" name="file" class="form-control" accept=".pdf,.doc,.docx,.xls,.xlsx" {{ !isset($record) ? \'required\' : \'\' }}>@if(isset($record) && $record->file)<div class="mt-2"><span class="badge bg-success">{{ $record->file_name }}</span></div>@endif</div>
            @if(isset($record))<div class="col-12"><label class="form-label">Catatan Perubahan</label><textarea name="change_notes" class="form-control" rows="2"></textarea></div>@endif
        </div>
        <hr class="my-4">
        <div class="d-flex justify-content-between"><a href="{{ route($routePrefix . \'.index\') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a><button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> {{ isset($record) ? \'Update\' : \'Simpan\' }}</button></div>
    </form>
</div></div>
@endsection';

    file_put_contents($modulePath . '/_form.blade.php', $formTemplate);
    echo "Created: $modulePath/_form.blade.php\n";

    // Create _show.blade.php
    $showTemplate = '@extends(\'layouts.app\')
@section(\'title\', \'Detail - \' . $moduleName)
@section(\'breadcrumb\')
<li class="breadcrumb-item"><a href="#">' . ucwords(str_replace('-', ' ', $module)) . '</a></li>
<li class="breadcrumb-item"><a href="{{ route($routePrefix . \'.index\') }}">{{ $subModule }}</a></li>
<li class="breadcrumb-item active">Detail</li>
@endsection
@section(\'content\')
<div class="page-header d-flex justify-content-between align-items-center mb-4">
    <h1 class="page-title">Detail {{ $moduleName }}</h1>
    <div><a href="{{ route($routePrefix . \'.edit\', $record->id) }}" class="btn btn-warning"><i class="bi bi-pencil"></i> Edit</a>@if($record->file)<a href="{{ route($routePrefix . \'.download\', $record->id) }}" class="btn btn-success"><i class="bi bi-download"></i> Download</a>@endif</div>
</div>
<div class="row g-4">
    <div class="col-lg-8"><div class="card"><div class="card-header">Informasi Dokumen</div><div class="card-body">
        <table class="table table-borderless">
            <tr><th width="200">Judul</th><td>{{ $record->judul ?? $record->perihal ?? \'-\' }}</td></tr>
            <tr><th>Nomor</th><td><code>{{ $record->nomor ?? \'-\' }}</code></td></tr>
            <tr><th>Tanggal</th><td>{{ $record->tanggal ? \Carbon\Carbon::parse($record->tanggal)->format(\'d F Y\') : \'-\' }}</td></tr>
            <tr><th>Divisi</th><td>{{ $record->divisi?->nama_divisi ?? \'-\' }}</td></tr>
            <tr><th>Klasifikasi</th><td>@if($record->sifat_dokumen == \'Rahasia\')<span class="badge badge-secret">Rahasia</span>@else<span class="badge badge-public">Umum</span>@endif</td></tr>
            <tr><th>Versi</th><td><span class="badge bg-primary">v{{ $record->version ?? 1 }}</span></td></tr>
        </table>
        @if($record->file)<hr><div class="d-flex align-items-center p-3 bg-light rounded"><i class="bi bi-file-earmark-pdf text-danger fs-1 me-3"></i><div class="flex-grow-1"><strong>{{ $record->file_name }}</strong></div><a href="{{ route($routePrefix . \'.download\', $record->id) }}" class="btn btn-outline-primary"><i class="bi bi-download"></i></a></div>@endif
    </div></div></div>
    <div class="col-lg-4"><div class="card"><div class="card-header">Info Sistem</div><div class="card-body">
        <p class="mb-2"><small class="text-muted">Dibuat:</small><br>{{ $record->created_at?->format(\'d M Y H:i\') }}</p>
        <p class="mb-0"><small class="text-muted">Diperbarui:</small><br>{{ $record->updated_at?->format(\'d M Y H:i\') }}</p>
    </div></div>
    <div class="card mt-4"><div class="card-header">Aksi</div><div class="card-body">
        <a href="{{ route($routePrefix . \'.edit\', $record->id) }}" class="btn btn-warning w-100 mb-2"><i class="bi bi-pencil"></i> Edit</a>
        @if($record->file)<a href="{{ route($routePrefix . \'.download\', $record->id) }}" class="btn btn-success w-100 mb-2"><i class="bi bi-download"></i> Download</a>@endif
        <form action="{{ route($routePrefix . \'.destroy\', $record->id) }}" method="POST" onsubmit="return confirm(\'Yakin?\')">@csrf @method(\'DELETE\')<button class="btn btn-outline-danger w-100"><i class="bi bi-trash"></i> Hapus</button></form>
    </div></div></div>
</div>
<div class="mt-4"><a href="{{ route($routePrefix . \'.index\') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a></div>
@endsection';

    file_put_contents($modulePath . '/_show.blade.php', $showTemplate);
    echo "Created: $modulePath/_show.blade.php\n";

    // Create sub-module views
    foreach ($subModules as $slug => $name) {
        $subPath = $modulePath . '/' . $slug;
        if (!is_dir($subPath)) {
            mkdir($subPath, 0755, true);
        }

        // index.blade.php
        file_put_contents($subPath . '/index.blade.php', "@include('{$module}._index', ['subModule' => '{$name}'])\n");

        // create.blade.php
        file_put_contents($subPath . '/create.blade.php', "@include('{$module}._form', ['subModule' => '{$name}'])\n");

        // edit.blade.php
        file_put_contents($subPath . '/edit.blade.php', "@include('{$module}._form', ['subModule' => '{$name}'])\n");

        // show.blade.php
        file_put_contents($subPath . '/show.blade.php', "@include('{$module}._show', ['subModule' => '{$name}'])\n");

        echo "Created views for: $module/$slug\n";
    }
}

echo "\n✅ All views generated successfully!\n";
