@extends('layouts.app')
@section('title', 'Tambah Divisi')
@section('breadcrumb')
<li class="breadcrumb-item"><a href="#">Master</a></li>
<li class="breadcrumb-item"><a href="{{ route('master.divisi.index') }}">Divisi</a></li>
<li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
<div class="page-header mb-4"><h1 class="page-title">Tambah Divisi</h1></div>
<div class="card"><div class="card-body">
    <form action="{{ route('master.divisi.store') }}" method="POST" data-confirm="Apakah Anda yakin ingin menyimpan data ini?">
        @csrf
        @include('master.divisi._form', ['record' => null])
        <hr class="my-4">
        <div class="d-flex justify-content-between">
            <a href="{{ route('master.divisi.index') }}" class="btn btn-outline-secondary"><i class="bi bi-arrow-left"></i> Kembali</a>
            <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Simpan</button>
        </div>
    </form>
</div></div>
@endsection