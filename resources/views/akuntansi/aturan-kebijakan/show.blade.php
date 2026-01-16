@extends('layouts.app')

@section('title', 'Detail - ' . $moduleName)

@section('breadcrumb')
    <li class="breadcrumb-item">
        <a href="#">Akuntansi</a>
    </li>
    <li class="breadcrumb-item"><a href="{{ route('akuntansi.aturan-kebijakan.index') }}">Aturan Kebijakan</a></li>
    <li class="breadcrumb-item active">Detail</li>
@endsection

@section('content')
    <div class="page-header d-flex justify-content-between align-items-center mb-4">
        <h1 class="page-title">Detail {{ $moduleName }}</h1>
        <div>
            <a href="{{ route('akuntansi.aturan-kebijakan.edit', $record->id) }}" class="btn btn-warning">
                <i class="bi bi-pencil me-1"></i> Edit
            </a>
            @if ($record->file)
                <a href="{{ route('akuntansi.aturan-kebijakan.download', $record->id) }}" class="btn btn-success">
                    <i class="bi bi-download me-1"></i> Download
                </a>
            @endif
        </div>
    </div>

    <div class="row g-4">
        <div class="col-lg-8">
            <div class="card">
                <div class="card-header">Informasi Dokumen</div>
                <div class="card-body">
                    <table class="table table-borderless">
                        <tr>
                            <th width="200">Judul</th>
                            <td>{{ $record->judul ?? '-' }}</td>
                        </tr>
                        <tr>
                            <th>Nomor</th>
                            <td><code>{{ $record->nomor ?? '-' }}</code></td>
                        </tr>
                        <tr>
                            <th>Tanggal</th>
                            <td>{{ $record->tanggal ? \Carbon\Carbon::parse($record->tanggal)->format('d F Y') : '-' }}</td>
                        </tr>
                        <tr>
                            <th>Divisi</th>
                            <td>{{ $record->divisi?->nama_divisi ?? '-' }}</td>
                        </tr>
                        <tr>
                            <th>Klasifikasi</th>
                            <td>
                                @if ($record->sifat_dokumen == 'Rahasia')
                                    <span class="badge badge-secret"><i class="bi bi-lock me-1"></i>Rahasia</span>
                                @else
                                    <span class="badge badge-public"><i class="bi bi-unlock me-1"></i>Umum</span>
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th>Versi</th>
                            <td><span class="badge bg-primary">v{{ $record->version ?? 1 }}</span></td>
                        </tr>
                        <tr>
                            <th>Lokasi Fisik</th>
                            <td>{{ $record->lokasi ?? '-' }}</td>
                        </tr>
                    </table>

                    @if ($record->file)
                        <hr>
                        <div class="d-flex align-items-center p-3 bg-light rounded">
                            <i class="bi bi-file-earmark-pdf text-danger fs-1 me-3"></i>
                            <div class="flex-grow-1">
                                <strong>{{ $record->file_name }}</strong>
                                <br><small class="text-muted">File terlampir</small>
                            </div>
                            <a href="{{ route('akuntansi.aturan-kebijakan.download', $record->id) }}"
                                class="btn btn-outline-primary">
                                <i class="bi bi-download me-1"></i> Download
                            </a>
                        </div>
                    @endif
                </div>
            </div>

            @if ($record->versions && $record->versions->count() > 0)
                <div class="card mt-4">
                    <div class="card-header">Riwayat Versi</div>
                    <div class="card-body p-0">
                        <table class="table table-hover mb-0">
                            <thead>
                                <tr>
                                    <th>Versi</th>
                                    <th>File</th>
                                    <th>Diupload</th>
                                    <th>Tanggal</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($record->versions as $version)
                                    <tr class="{{ $version->is_current ? 'table-success' : '' }}">
                                        <td>v{{ $version->version_number }} @if ($version->is_current)
                                                <span class="badge bg-success">Current</span>
                                            @endif
                                        </td>
                                        <td>{{ $version->file_name }}</td>
                                        <td>{{ $version->uploader?->name ?? '-' }}</td>
                                        <td>{{ $version->upload_date?->format('d M Y H:i') ?? '-' }}</td>
                                        <td><a href="{{ route('akuntansi.aturan-kebijakan.download-version', [$record->id, $version->id]) }}"
                                                class="btn btn-sm btn-outline-primary"><i class="bi bi-download"></i></a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            @endif
        </div>

        <div class="col-lg-4">
            <div class="card">
                <div class="card-header">Informasi Sistem</div>
                <div class="card-body">
                    <p class="mb-2"><small class="text-muted">Dibuat
                            oleh:</small><br>{{ $record->creator?->name ?? 'System' }}</p>
                    <p class="mb-2"><small class="text-muted">Dibuat
                            pada:</small><br>{{ $record->created_at?->format('d M Y H:i') }}</p>
                    <p class="mb-0"><small class="text-muted">Diperbarui
                            pada:</small><br>{{ $record->updated_at?->format('d M Y H:i') }}</p>
                </div>
            </div>

            <div class="card mt-4">
                <div class="card-header">Aksi</div>
                <div class="card-body">
                    <a href="{{ route('akuntansi.aturan-kebijakan.edit', $record->id) }}"
                        class="btn btn-warning w-100 mb-2"><i class="bi bi-pencil me-1"></i> Edit</a>
                    @if ($record->file)
                        <a href="{{ route('akuntansi.aturan-kebijakan.download', $record->id) }}"
                            class="btn btn-success w-100 mb-2"><i class="bi bi-download me-1"></i> Download</a>
                    @endif
                    <form action="{{ route('akuntansi.aturan-kebijakan.destroy', $record->id) }}" method="POST"
                        onsubmit="return confirm('Yakin hapus?')">
                        @csrf @method('DELETE')
                        <button type="submit" class="btn btn-outline-danger w-100"><i class="bi bi-trash me-1"></i>
                            Hapus</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="mt-4">
        <a href="{{ route('akuntansi.aturan-kebijakan.index') }}" class="btn btn-outline-secondary"><i
                class="bi bi-arrow-left me-1"></i> Kembali</a>
    </div>
@endsection
