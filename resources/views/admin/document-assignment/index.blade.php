@extends('layouts.app')
@section('title', 'Assignment Dokumen ke Divisi')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="#">Admin</a></li>
    <li class="breadcrumb-item active">Document Assignment</li>
@endsection
@section('content')
    <div class="page-header d-flex justify-content-between align-items-center mb-4">
        <div>
            <h1 class="page-title">Assignment Dokumen ke Divisi</h1>
            <p class="text-muted mb-0">Kelola kepemilikan dokumen per divisi</p>
        </div>
    </div>

    <!-- Filter by Division -->
    <div class="card mb-4">
        <div class="card-body">
            <form method="GET" class="row g-3">
                <div class="col-md-10">
                    <select name="id_divisi" class="form-select">
                        <option value="">Semua Divisi</option>
                        @foreach ($divisions as $d)
                            <option value="{{ $d->id }}" {{ $selectedDivision == $d->id ? 'selected' : '' }}>
                                {{ $d->nama_divisi }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-md-2">
                    <button type="submit" class="btn btn-primary w-100"><i class="bi bi-filter"></i> Filter</button>
                </div>
            </form>
        </div>
    </div>

    <!-- Division Overview Cards -->
    <div class="row g-4 mb-4">
        @foreach ($divisions as $division)
            <div class="col-md-3">
                <div class="card h-100">
                    <div class="card-body">
                        <h6 class="text-muted mb-2">{{ $division->nama_divisi }}</h6>
                        <h3 class="mb-0">
                            {{ $division->aturan_kebijakan_akuntansi_count + $division->jurnal_umum_count + $division->transaksi_investasi_count }}
                        </h3>
                        <small class="text-muted">dokumen</small>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <!-- Document Statistics by Table -->
    <div class="card">
        <div class="card-header">
            <strong>Statistik Dokumen per Modul</strong>
        </div>
        <div class="card-body p-0">
            <table class="table table-hover mb-0">
                <thead>
                    <tr>
                        <th>Modul</th>
                        <th class="text-center">Total Dokumen</th>
                        <th class="text-center">Belum Assign</th>
                        <th class="text-center">Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($documentStats as $stat)
                        <tr>
                            <td><strong>{{ $stat['name'] }}</strong></td>
                            <td class="text-center"><span class="badge bg-primary">{{ $stat['total'] }}</span></td>
                            <td class="text-center">
                                @if ($stat['unassigned'] > 0)
                                    <span class="badge bg-warning text-dark">{{ $stat['unassigned'] }}</span>
                                @else
                                    <span class="badge bg-success">0</span>
                                @endif
                            </td>
                            <td class="text-center">
                                <a href="{{ route('admin.document-assignment.module', str_replace('_', '-', $stat['table'])) }}"
                                    class="btn btn-sm btn-outline-primary">
                                    <i class="bi bi-pencil"></i> Kelola
                                </a>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="4" class="text-center py-4 text-muted">Tidak ada data</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
@endsection
