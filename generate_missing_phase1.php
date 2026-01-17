<?php
// Script to generate missing controllers and views
// Run: php generate_missing_phase1.php

$baseControllersPath = __DIR__ . '/app/Http/Controllers';
$baseViewsPath = __DIR__ . '/resources/views';

// Missing controllers to create
$missingControllers = [
    // HukumKepatuhan
    'HukumKepatuhan' => [
        'ExecutiveSummaryController' => ['model' => 'HukumKepatuhan\\ExecutiveSummary', 'view' => 'hukum-kepatuhan.executive-summary', 'route' => 'hukum-kepatuhan.executive-summary', 'name' => 'Executive Summary'],
        'LembarKeputusanController' => ['model' => 'HukumKepatuhan\\LembarKeputusan', 'view' => 'hukum-kepatuhan.lembar-keputusan', 'route' => 'hukum-kepatuhan.lembar-keputusan', 'name' => 'Lembar Keputusan'],
        'LembarRekomendasiController' => ['model' => 'HukumKepatuhan\\LembarRekomendasi', 'view' => 'hukum-kepatuhan.lembar-rekomendasi', 'route' => 'hukum-kepatuhan.lembar-rekomendasi', 'name' => 'Lembar Rekomendasi'],
        'PenomoranController' => ['model' => 'HukumKepatuhan\\Penomoran', 'view' => 'hukum-kepatuhan.penomoran', 'route' => 'hukum-kepatuhan.penomoran', 'name' => 'Penomoran'],
    ],
    // SDM
    'Sdm' => [
        'CapegPegrusController' => ['model' => 'Sdm\\CapegPegrus', 'view' => 'sdm.capeg-pegrus', 'route' => 'sdm.capeg-pegrus', 'name' => 'Capeg Pegrus'],
        'PenghargaanController' => ['model' => 'Sdm\\Penghargaan', 'view' => 'sdm.penghargaan', 'route' => 'sdm.penghargaan', 'name' => 'Penghargaan'],
        'IkutOrganisasiController' => ['model' => 'Sdm\\IkutOrganisasi', 'view' => 'sdm.ikut-organisasi', 'route' => 'sdm.ikut-organisasi', 'name' => 'Ikut Organisasi'],
        'AspurjabController' => ['model' => 'Sdm\\Aspurjab', 'view' => 'sdm.aspurjab', 'route' => 'sdm.aspurjab', 'name' => 'Aspurjab'],
        'RekonController' => ['model' => 'Sdm\\Rekon', 'view' => 'sdm.rekon', 'route' => 'sdm.rekon', 'name' => 'Rekon'],
    ],
    // Sekretariat
    'Sekretariat' => [
        'RemunerasiPedomanController' => ['model' => 'Sekretariat\\RemunerasiPedoman', 'view' => 'sekretariat.remunerasi-pedoman', 'route' => 'sekretariat.remunerasi-pedoman', 'name' => 'Remunerasi Pedoman'],
        'RemunerasiDokumenController' => ['model' => 'Sekretariat\\RemunerasiDokumen', 'view' => 'sekretariat.remunerasi-dokumen', 'route' => 'sekretariat.remunerasi-dokumen', 'name' => 'Remunerasi Dokumen'],
    ],
    // Logistik
    'Logistik' => [
        'PelaporanPrbcController' => ['model' => 'Logistik\\PelaporanPrbc', 'view' => 'logistik.pelaporan-prbc', 'route' => 'logistik.pelaporan-prbc', 'name' => 'Pelaporan PRBC'],
        'UserSatisfactionController' => ['model' => 'Logistik\\UserSatisfaction', 'view' => 'logistik.user-satisfaction', 'route' => 'logistik.user-satisfaction', 'name' => 'User Satisfaction'],
        'VendorSatisfactionController' => ['model' => 'Logistik\\VendorSatisfaction', 'view' => 'logistik.vendor-satisfaction', 'route' => 'logistik.vendor-satisfaction', 'name' => 'Vendor Satisfaction'],
    ],
];

$controllerTemplate = '<?php

namespace App\Http\Controllers\{NAMESPACE};

use App\Http\Controllers\BaseDocumentController;
use Illuminate\Http\Request;

class {CLASSNAME} extends BaseDocumentController
{
    protected $model = \App\Models\{MODEL}::class;
    protected $viewPath = \'{VIEW}\';
    protected $routePrefix = \'{ROUTE}\';
    protected $moduleName = \'{NAME}\';

    protected function validateRequest(Request $request, $id = null): array
    {
        return $request->validate([
            \'id_divisi\' => \'required|exists:master_divisi,id\',
            \'file\' => \'nullable|file|max:10240|mimes:pdf,doc,docx,xls,xlsx\',
            \'sifat_dokumen\' => \'nullable|in:Umum,Rahasia\',
        ]);
    }
}
';

// Create controllers
foreach ($missingControllers as $namespace => $controllers) {
    $nsPath = $baseControllersPath . '/' . $namespace;
    if (!is_dir($nsPath)) {
        mkdir($nsPath, 0755, true);
    }

    foreach ($controllers as $className => $config) {
        $filePath = $nsPath . '/' . $className . '.php';
        if (file_exists($filePath)) {
            echo "Skip existing: $className\n";
            continue;
        }

        $content = str_replace(
            ['{NAMESPACE}', '{MODEL}', '{CLASSNAME}', '{VIEW}', '{ROUTE}', '{NAME}'],
            [$namespace, $config['model'], $className, $config['view'], $config['route'], $config['name']],
            $controllerTemplate
        );

        file_put_contents($filePath, $content);
        echo "Created controller: $namespace/$className\n";
    }
}

// View template
$viewIndexTemplate = '@extends(\'layouts.app\')
@section(\'title\', $moduleName)
@section(\'breadcrumb\')
<li class="breadcrumb-item"><a href="#">{MODULE}</a></li>
<li class="breadcrumb-item active">{{ $moduleName }}</li>
@endsection
@section(\'content\')
<div class="page-header d-flex justify-content-between align-items-center mb-4">
    <h1 class="page-title">{{ $moduleName }}</h1>
    <a href="{{ route($routePrefix . \'.create\') }}" class="btn btn-primary"><i class="bi bi-plus-lg me-1"></i> Tambah</a>
</div>
<div class="card mb-4"><div class="card-body">
    <form method="GET" class="row g-3">
        <div class="col-md-4"><input type="text" name="search" class="form-control" placeholder="Cari..." value="{{ request(\'search\') }}"></div>
        <div class="col-md-3"><select name="id_divisi" class="form-select"><option value="">Semua Divisi</option>@foreach($divisions ?? [] as $d)<option value="{{ $d->id }}" {{ request(\'id_divisi\') == $d->id ? \'selected\' : \'\' }}>{{ $d->nama_divisi }}</option>@endforeach</select></div>
        <div class="col-md-3"><select name="sifat_dokumen" class="form-select"><option value="">Semua</option><option value="Umum" {{ request(\'sifat_dokumen\') == \'Umum\' ? \'selected\' : \'\' }}>Umum</option><option value="Rahasia" {{ request(\'sifat_dokumen\') == \'Rahasia\' ? \'selected\' : \'\' }}>Rahasia</option></select></div>
        <div class="col-md-2"><button type="submit" class="btn btn-primary w-100"><i class="bi bi-search"></i></button></div>
    </form>
</div></div>
<div class="card"><div class="card-body p-0">
    <table class="table table-hover mb-0">
        <thead><tr><th>#</th><th>Judul/Perihal</th><th>Divisi</th><th>Tanggal</th><th>Klasifikasi</th><th>Aksi</th></tr></thead>
        <tbody>
            @forelse($data as $i => $item)
            <tr>
                <td>{{ $data->firstItem() + $i }}</td>
                <td><i class="bi bi-file-earmark-text text-primary me-2"></i><strong>{{ $item->judul ?? $item->perihal ?? $item->nama ?? \'-\' }}</strong></td>
                <td>{{ $item->divisi->nama_divisi ?? \'-\' }}</td>
                <td>{{ $item->tanggal ? \Carbon\Carbon::parse($item->tanggal)->format(\'d M Y\') : \'-\' }}</td>
                <td>@if($item->sifat_dokumen == \'Rahasia\')<span class="badge bg-danger">Rahasia</span>@else<span class="badge bg-success">Umum</span>@endif</td>
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
            <tr><td colspan="6" class="text-center py-4 text-muted">Belum ada data</td></tr>
            @endforelse
        </tbody>
    </table>
</div>@if($data->hasPages())<div class="card-footer">{{ $data->withQueryString()->links() }}</div>@endif</div>
@endsection';

$viewFormTemplate = '@extends(\'layouts.app\')
@section(\'title\', (isset($record) ? \'Edit\' : \'Tambah\') . \' - \' . $moduleName)
@section(\'breadcrumb\')
<li class="breadcrumb-item"><a href="#">{MODULE}</a></li>
<li class="breadcrumb-item"><a href="{{ route($routePrefix . \'.index\') }}">{{ $moduleName }}</a></li>
<li class="breadcrumb-item active">{{ isset($record) ? \'Edit\' : \'Tambah\' }}</li>
@endsection
@section(\'content\')
<div class="page-header mb-4"><h1 class="page-title">{{ isset($record) ? \'Edit\' : \'Tambah\' }} {{ $moduleName }}</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ isset($record) ? route($routePrefix . \'.update\', $record->id) : route($routePrefix . \'.store\') }}" method="POST" enctype="multipart/form-data">
        @csrf @if(isset($record)) @method(\'PUT\') @endif
        <div class="row g-4">
            <div class="col-md-6"><label class="form-label">Divisi <span class="text-danger">*</span></label><select name="id_divisi" class="form-select" required><option value="">Pilih Divisi</option>@foreach($divisions ?? [] as $d)<option value="{{ $d->id }}" {{ old(\'id_divisi\', $record->id_divisi ?? \'\') == $d->id ? \'selected\' : \'\' }}>{{ $d->nama_divisi }}</option>@endforeach</select></div>
            <div class="col-md-6"><label class="form-label">Klasifikasi</label><select name="sifat_dokumen" class="form-select"><option value="Umum" {{ old(\'sifat_dokumen\', $record->sifat_dokumen ?? \'\') == \'Umum\' ? \'selected\' : \'\' }}>Umum</option><option value="Rahasia" {{ old(\'sifat_dokumen\', $record->sifat_dokumen ?? \'\') == \'Rahasia\' ? \'selected\' : \'\' }}>Rahasia</option></select></div>
            <div class="col-12"><label class="form-label">File @if(!isset($record))<span class="text-danger">*</span>@endif</label><input type="file" name="file" class="form-control" accept=".pdf,.doc,.docx,.xls,.xlsx" {{ !isset($record) ? \'required\' : \'\' }}>@if(isset($record) && $record->file)<div class="mt-2"><span class="badge bg-success">{{ $record->file_name }}</span></div>@endif</div>
        </div>
        <hr class="my-4">
        <div class="d-flex justify-content-between"><a href="{{ route($routePrefix . \'.index\') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a><button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> {{ isset($record) ? \'Update\' : \'Simpan\' }}</button></div>
    </form>
</div></div>
@endsection';

$viewShowTemplate = '@extends(\'layouts.app\')
@section(\'title\', \'Detail - \' . $moduleName)
@section(\'breadcrumb\')
<li class="breadcrumb-item"><a href="#">{MODULE}</a></li>
<li class="breadcrumb-item"><a href="{{ route($routePrefix . \'.index\') }}">{{ $moduleName }}</a></li>
<li class="breadcrumb-item active">Detail</li>
@endsection
@section(\'content\')
<div class="page-header d-flex justify-content-between align-items-center mb-4">
    <h1 class="page-title">Detail {{ $moduleName }}</h1>
    <div><a href="{{ route($routePrefix . \'.edit\', $record->id) }}" class="btn btn-warning"><i class="bi bi-pencil"></i> Edit</a>@if($record->file ?? false)<a href="{{ route($routePrefix . \'.download\', $record->id) }}" class="btn btn-success ms-2"><i class="bi bi-download"></i> Download</a>@endif</div>
</div>
<div class="card"><div class="card-body">
    <table class="table table-borderless">
        <tr><th width="200">Divisi</th><td>{{ $record->divisi->nama_divisi ?? \'-\' }}</td></tr>
        <tr><th>Klasifikasi</th><td>@if($record->sifat_dokumen == \'Rahasia\')<span class="badge bg-danger">Rahasia</span>@else<span class="badge bg-success">Umum</span>@endif</td></tr>
        <tr><th>File</th><td>{{ $record->file_name ?? \'-\' }}</td></tr>
        <tr><th>Dibuat</th><td>{{ $record->created_at?->format(\'d M Y H:i\') ?? \'-\' }}</td></tr>
    </table>
</div></div>
<div class="mt-4"><a href="{{ route($routePrefix . \'.index\') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a></div>
@endsection';

// Create views
$viewMappings = [
    'hukum-kepatuhan' => ['executive-summary', 'lembar-keputusan', 'lembar-rekomendasi', 'penomoran'],
    'sdm' => ['capeg-pegrus', 'penghargaan', 'ikut-organisasi', 'aspurjab', 'rekon'],
    'sekretariat' => ['remunerasi-pedoman', 'remunerasi-dokumen'],
    'logistik' => ['pelaporan-prbc', 'user-satisfaction', 'vendor-satisfaction'],
];

$moduleNames = [
    'hukum-kepatuhan' => 'Hukum & Kepatuhan',
    'sdm' => 'SDM',
    'sekretariat' => 'Sekretariat',
    'logistik' => 'Logistik & Sarpen',
];

foreach ($viewMappings as $module => $submodules) {
    $modulePath = $baseViewsPath . '/' . $module;
    if (!is_dir($modulePath)) {
        mkdir($modulePath, 0755, true);
    }

    foreach ($submodules as $submodule) {
        $viewPath = $modulePath . '/' . $submodule;
        if (!is_dir($viewPath)) {
            mkdir($viewPath, 0755, true);
        }

        $moduleName = $moduleNames[$module];

        // Create index
        $index = str_replace('{MODULE}', $moduleName, $viewIndexTemplate);
        file_put_contents($viewPath . '/index.blade.php', $index);

        // Create create
        $form = str_replace('{MODULE}', $moduleName, $viewFormTemplate);
        file_put_contents($viewPath . '/create.blade.php', $form);
        file_put_contents($viewPath . '/edit.blade.php', $form);

        // Create show
        $show = str_replace('{MODULE}', $moduleName, $viewShowTemplate);
        file_put_contents($viewPath . '/show.blade.php', $show);

        echo "Created views: $module/$submodule\n";
    }
}

echo "\n✅ All missing controllers and views created!\n";
