@extends('layouts.app')
@section('title', 'Tambah Perencanaan Surat')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Investasi</a></li>
<li class="breadcrumb-item"><a href="{{ route('investasi.perencanaan-surat.index') }}">Perencanaan Surat</a></li>
<li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Tambah Perencanaan Surat</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('investasi.perencanaan-surat.store') }}" method="POST" enctype="multipart/form-data" data-confirm="Apakah Anda yakin ingin menyimpan data ini?">
        @csrf
        @include('investasi.perencanaan-surat._form', ['record' => null])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('investasi.perencanaan-surat.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Simpan</button>
        </div>
    </form>
</div></div>
@endsection