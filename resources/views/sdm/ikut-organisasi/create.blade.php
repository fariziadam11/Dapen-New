@extends('layouts.app')
@section('title', 'Tambah Ikut Organisasi')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Sdm</a></li>
<li class="breadcrumb-item"><a href="{{ route('sdm.ikut-organisasi.index') }}">Ikut Organisasi</a></li>
<li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Tambah Ikut Organisasi</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('sdm.ikut-organisasi.store') }}" method="POST" enctype="multipart/form-data" data-confirm="Apakah Anda yakin ingin menyimpan data ini?">
        @csrf
        @include('sdm.ikut-organisasi._form', ['record' => null])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('sdm.ikut-organisasi.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Simpan</button>
        </div>
    </form>
</div></div>
@endsection