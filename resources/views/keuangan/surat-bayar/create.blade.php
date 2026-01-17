@extends('layouts.app')
@section('title', 'Tambah Surat Bayar')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Keuangan</a></li>
<li class="breadcrumb-item"><a href="{{ route('keuangan.surat-bayar.index') }}">Surat Bayar</a></li>
<li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Tambah Surat Bayar</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('keuangan.surat-bayar.store') }}" method="POST" enctype="multipart/form-data" data-confirm="Apakah Anda yakin ingin menyimpan data ini?">
        @csrf
        @include('keuangan.surat-bayar._form', ['record' => null])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('keuangan.surat-bayar.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Simpan</button>
        </div>
    </form>
</div></div>
@endsection