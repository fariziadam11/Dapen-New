{{-- Akuntansi - Aturan Kebijakan - Index --}}
@extends('layouts.app')

@section('title', $moduleName)

@section('breadcrumb')
    <li class="breadcrumb-item"><a href="#">Akuntansi</a></li>
    <li class="breadcrumb-item active">Aturan Kebijakan</li>
@endsection

@section('content')
    <div class="page-header d-flex justify-content-between align-items-center mb-4">
        <h1 class="page-title">{{ $moduleName }}</h1>
        <a href="{{ route('akuntansi.aturan-kebijakan.create') }}" class="btn btn-primary">
            <i class="bi bi-plus-lg me-1"></i> Tambah Data
        </a>
    </div>

    <!-- Filter Card -->
    <div class="card mb-4">
        <div class="card-body">
            <form action="{{ route('akuntansi.aturan-kebijakan.index') }}" method="GET" class="row g-3">
                <div class="col-md-4">
                    <label class="form-label">Cari</label>
                    <input type="text" name="search" class="form-control" placeholder="Cari judul, nomor..."
                        value="{{ request('search') }}">
                </div>
                <div class="col-md-3">
                    <label class="form-label">Divisi</label>
                    <select name="id_divisi" class="form-select">
                        <option value="">Semua Divisi</option>
                        @foreach (\App\Models\MasterDivisi::all() as $div)
                            <option value="{{ $div->id }}" {{ request('id_divisi') == $div->id ? 'selected' : '' }}>
                                {{ $div->nama_divisi }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-3">
                    <label class="form-label">Klasifikasi</label>
                    <select name="sifat_dokumen" class="form-select">
                        <option value="">Semua</option>
                        <option value="Umum" {{ request('sifat_dokumen') == 'Umum' ? 'selected' : '' }}>Umum</option>
                        <option value="Rahasia" {{ request('sifat_dokumen') == 'Rahasia' ? 'selected' : '' }}>Rahasia
                        </option>
                    </select>
                </div>
                <div class="col-md-2 d-flex align-items-end">
                    <button type="submit" class="btn btn-primary w-100">
                        <i class="bi bi-search me-1"></i> Filter
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Data Table -->
    <div class="card">
        <div class="card-body p-0">
            <div class="table-responsive">
                <table class="table table-hover mb-0">
                    <thead>
                        <tr>
                            <th width="50">#</th>
                            <th>Nomor</th>
                            <th>Judul</th>
                            <th>Divisi</th>
                            <th>Tanggal</th>
                            <th>Klasifikasi</th>
                            <th>Versi</th>
                            <th width="150">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($data as $index => $item)
                            <tr>
                                <td>{{ $data->firstItem() + $index }}</td>
                                <td><code>{{ $item->nomor ?? '-' }}</code></td>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <i class="bi bi-file-earmark-ruled text-primary me-2"></i>
                                        <strong>{{ $item->judul ?? '-' }}</strong>
                                    </div>
                                </td>
                                <td>{{ $item->divisi?->nama_divisi ?? '-' }}</td>
                                <td>{{ $item->tanggal ? \Carbon\Carbon::parse($item->tanggal)->format('d M Y') : '-' }}
                                </td>
                                <td>
                                    @if ($item->sifat_dokumen == 'Rahasia')
                                        <span class="badge badge-secret"><i class="bi bi-lock me-1"></i>Rahasia</span>
                                    @else
                                        <span class="badge badge-public"><i class="bi bi-unlock me-1"></i>Umum</span>
                                    @endif
                                </td>
                                <td><span class="badge bg-secondary">v{{ $item->version ?? 1 }}</span></td>
                                <td>
                                    <div class="btn-group btn-group-sm">
                                        <a href="{{ route('akuntansi.aturan-kebijakan.show', $item->id) }}"
                                            class="btn btn-outline-primary" title="Lihat">
                                            <i class="bi bi-eye"></i>
                                        </a>
                                        <a href="{{ route('akuntansi.aturan-kebijakan.edit', $item->id) }}"
                                            class="btn btn-outline-warning" title="Edit">
                                            <i class="bi bi-pencil"></i>
                                        </a>
                                        @if ($item->file)
                                            <a href="{{ route('akuntansi.aturan-kebijakan.download', $item->id) }}"
                                                class="btn btn-outline-success" title="Download">
                                                <i class="bi bi-download"></i>
                                            </a>
                                        @endif
                                        <form action="{{ route('akuntansi.aturan-kebijakan.destroy', $item->id) }}"
                                            method="POST" class="d-inline" onsubmit="return confirm('Yakin hapus?')">
                                            @csrf @method('DELETE')
                                            <button type="submit" class="btn btn-outline-danger" title="Hapus"><i
                                                    class="bi bi-trash"></i></button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="8" class="text-center py-4">
                                    <i class="bi bi-inbox fs-1 text-muted"></i>
                                    <p class="text-muted mb-0">Belum ada data</p>
                                </td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
        @if ($data->hasPages())
            <div class="card-footer">{{ $data->withQueryString()->links() }}</div>
        @endif
    </div>
@endsection
