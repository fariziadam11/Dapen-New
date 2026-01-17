@extends('layouts.app')
@section('title', 'Transaksi Investasi')
@section('breadcrumb')
    <li class="breadcrumb-item">
        <a href="#">Investasi</a>
    </li>
    <li class="breadcrumb-item active">Transaksi Investasi</li>
@endsection
@section('content')
    <div class="page-header d-flex justify-content-between align-items-center mb-4">
        <h1 class="page-title">Transaksi Investasi</h1>
        <a href="{{ route('investasi.transaksi.create') }}" class="btn btn-primary"><i class="bi bi-plus-lg me-1"></i>
            Tambah</a>
    </div>
    <div class="card mb-4">
        <div class="card-body">
            <form method="GET" class="row g-3">
                <div class="col-md-8"><input type="text" name="search" class="form-control" placeholder="Cari..."
                        value="{{ request('search') }}"></div>
                <div class="col-md-4"><button type="submit" class="btn btn-primary w-100"><i class="bi bi-search"></i>
                        Cari</button></div>
            </form>
        </div>
    </div>
    <div class="card">
        <div class="card-body p-0">
            <table class="table table-hover mb-0">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Tipe</th>
                        <th>Tanggal</th>
                        <th>Perihal</th>
                        <th>Saham</th>
                        <th>Broker</th>
                        <th>File</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse($data as $i => $item)
                        <tr>
                            <td>{{ $data->firstItem() + $i }}</td>
                            <td>{{ $item->type ?? '-' }}</td>
                            <td>{{ $item->tgl_transaksi ? date('d/m/Y', strtotime($item->tgl_transaksi)) : '-' }}</td>
                            <td>{{ $item->perihal ?? '-' }}</td>
                            <td>{{ $item->saham ?? '-' }}</td>
                            <td>{{ $item->broker ?? '-' }}</td>
                            <td>
                                @if ($item->file_name)
                                    <a href="{{ route('investasi.transaksi.download', $item->id) }}" class="text-primary"><i
                                            class="bi bi-download"></i></a>
                                @else
                                    -
                                @endif
                            </td>
                            <td>
                                <div class="btn-group btn-group-sm">
                                    <a href="{{ route('investasi.transaksi.show', $item->id) }}"
                                        class="btn btn-outline-primary"><i class="bi bi-eye"></i></a>
                                    <a href="{{ route('investasi.transaksi.edit', $item->id) }}"
                                        class="btn btn-outline-warning"><i class="bi bi-pencil"></i></a>
                                    <form action="{{ route('investasi.transaksi.destroy', $item->id) }}" method="POST"
                                        class="d-inline">@csrf @method('DELETE')<button class="btn btn-outline-danger"><i
                                                class="bi bi-trash"></i></button></form>
                                </div>
                            </td>
                        </tr>
                    @empty
                        <tr>
                            <td colspan="8" class="text-center py-4 text-muted">Belum ada data</td>
                        </tr>
                    @endforelse
                </tbody>
            </table>
        </div>
        @if ($data->hasPages())
            <div class="card-footer">{{ $data->withQueryString()->links() }}</div>
        @endif
    </div>
@endsection
