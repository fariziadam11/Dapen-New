@extends('layouts.app')
@section('title', 'Tambah Jaminan')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Logistik</a></li>
<li class="breadcrumb-item"><a href="{{ route('logistik.jaminan.index') }}">Jaminan</a></li>
<li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Tambah Jaminan</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('logistik.jaminan.store') }}" method="POST" enctype="multipart/form-data" data-confirm="Apakah Anda yakin ingin menyimpan data ini?">
        @csrf
        @include('logistik.jaminan._form', ['record' => null])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('logistik.jaminan.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Simpan</button>
        </div>
    </form>
</div></div>
@endsection