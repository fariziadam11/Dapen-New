@extends('layouts.app')
@section('title', 'Detail Laporan')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Sekretariat</a></li>
<li class="breadcrumb-item"><a href="{{ route('sekretariat.laporan.index') }}">Laporan</a></li>
<li class="breadcrumb-item active">Detail</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Detail Laporan</h1></div>
<div class="card">
    <div class="card-body">
        <table class="table table-bordered">
        <tr><th width="200">Periode</th><td>{{ $record->periode ?? '-' }}</td></tr>
        <tr><th width="200">Kategori</th><td>{{ $record->kategori ?? '-' }}</td></tr>
        <tr><th width="200">Perihal</th><td>{{ $record->perihal ?? '-' }}</td></tr>
        <tr><th width="200">Tujuan</th><td>{{ $record->tujuan ?? '-' }}</td></tr>
        <tr><th width="200">Divisi</th><td>{{ $record->divisi->nama_divisi ?? '-' }}</td></tr>
        <tr><th>Sifat Dokumen</th><td><span class="badge bg-{{ $record->sifat_dokumen == 'Rahasia' ? 'danger' : 'success' }}">{{ $record->sifat_dokumen ?? 'Umum' }}</span></td></tr>
        <tr><th>File</th><td>@if($record->file_name)<a href="{{ route('sekretariat.laporan.download', $record->id) }}" class="btn btn-sm btn-outline-primary"><i class="bi bi-download"></i> {{ $record->file_name }}</a>@else - @endif</td></tr>
        <tr><th>Dibuat</th><td>{{ $record->created_at ? $record->created_at->format('d F Y H:i') : '-' }}</td></tr>
        <tr><th>Diupdate</th><td>{{ $record->updated_at ? $record->updated_at->format('d F Y H:i') : '-' }}</td></tr>
        </table>
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('sekretariat.laporan.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <div>
                <a href="{{ route('sekretariat.laporan.edit', $record->id) }}" class="btn btn-warning"><i class="bi bi-pencil"></i> Edit</a>
                <form action="{{ route('sekretariat.laporan.destroy', $record->id) }}" method="POST" class="d-inline">@csrf @method('DELETE')<button class="btn btn-danger"><i class="bi bi-trash"></i> Hapus</button></form>
            </div>
        </div>
    </div>
</div>
@endsection