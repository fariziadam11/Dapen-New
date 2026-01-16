@extends('layouts.app')
@section('title', 'Detail - ' . ($moduleName ?? 'Laporan Audit Keuangan'))
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Akuntansi</a></li>
<li class="breadcrumb-item"><a href="{{ route($routePrefix . '.index') }}">Laporan Audit Keuangan</a></li>
<li class="breadcrumb-item active">Detail</li>
@endsection
@section('content')
<div class="page-header d-flex justify-content-between align-items-center mb-4">
    <h1 class="page-title">Detail {{ $moduleName ?? 'Laporan Audit Keuangan' }}</h1>
    <div><a href="{{ route($routePrefix . '.edit', $record->id) }}" class="btn btn-warning"><i class="bi bi-pencil"></i> Edit</a>@if($record->file ?? false)<a href="{{ route($routePrefix . '.download', $record->id) }}" class="btn btn-success"><i class="bi bi-download"></i> Download</a>@endif</div>
</div>
<div class="row g-4">
    <div class="col-lg-8"><div class="card"><div class="card-header">Informasi</div><div class="card-body">
        <table class="table table-borderless">
            <tr><th width="200">Judul</th><td>{{ $record->judul ?? $record->perihal ?? $record->nama ?? $record->nama_divisi ?? '-' }}</td></tr>
            <tr><th>Nomor</th><td><code>{{ $record->nomor ?? $record->kode_divisi ?? '-' }}</code></td></tr>
            <tr><th>Tanggal</th><td>{{ $record->tanggal ? \Carbon\Carbon::parse($record->tanggal)->format('d F Y') : '-' }}</td></tr>
            <tr><th>Divisi</th><td>{{ $record->divisi->nama_divisi ?? '-' }}</td></tr>
            <tr><th>Klasifikasi</th><td>@if($record->sifat_dokumen == 'Rahasia')<span class="badge badge-secret">Rahasia</span>@else<span class="badge badge-public">Umum</span>@endif</td></tr>
            <tr><th>Versi</th><td><span class="badge bg-primary">v{{ $record->version ?? 1 }}</span></td></tr>
        </table>
        @if($record->file ?? false)<hr><div class="d-flex align-items-center p-3 bg-light rounded"><i class="bi bi-file-earmark-pdf text-danger fs-1 me-3"></i><div class="flex-grow-1"><strong>{{ $record->file_name }}</strong></div><a href="{{ route($routePrefix . '.download', $record->id) }}" class="btn btn-outline-primary"><i class="bi bi-download"></i></a></div>@endif
    </div></div></div>
    <div class="col-lg-4"><div class="card"><div class="card-header">Info Sistem</div><div class="card-body">
        <p class="mb-2"><small class="text-muted">Dibuat:</small><br>{{ $record->created_at?->format('d M Y H:i') ?? '-' }}</p>
        <p class="mb-0"><small class="text-muted">Diperbarui:</small><br>{{ $record->updated_at?->format('d M Y H:i') ?? '-' }}</p>
    </div></div>
    <div class="card mt-4"><div class="card-body">
        <a href="{{ route($routePrefix . '.edit', $record->id) }}" class="btn btn-warning w-100 mb-2"><i class="bi bi-pencil"></i> Edit</a>
        <form action="{{ route($routePrefix . '.destroy', $record->id) }}" method="POST" onsubmit="return confirm('Yakin?')">@csrf @method('DELETE')<button class="btn btn-outline-danger w-100"><i class="bi bi-trash"></i> Hapus</button></form>
    </div></div></div>
</div>
<div class="mt-4"><a href="{{ route($routePrefix . '.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a></div>
@endsection