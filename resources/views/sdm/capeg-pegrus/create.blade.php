@extends('layouts.app')
@section('title', 'Tambah Capeg Pegrus')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="#">Sdm</a></li>
    <li class="breadcrumb-item"><a href="{{ route('sdm.capeg-pegrus.index') }}">Capeg Pegrus</a></li>
    <li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
    <div class="page-header mb-4">
        <h1 class="page-title">Tambah Capeg Pegrus</h1>
    </div>
    <div class="card">
        <div class="card-body">
            <form action="{{ route('sdm.capeg-pegrus.store') }}" method="POST" enctype="multipart/form-data"
                data-confirm="Apakah Anda yakin ingin menyimpan data ini?">
                @csrf
                @include('sdm.capeg-pegrus._form', ['record' => null])
                <hr class="my-4">
                <div class="d-flex justify-content-between">
                    <a href="{{ route('sdm.capeg-pegrus.index') }}" class="btn btn-outline-secondary"><i
                            class="bi bi-arrow-left"></i> Kembali</a>
                    <button type="submit" class="btn btn-primary"><i class="bi bi-check-lg"></i> Simpan</button>
                </div>
            </form>
        </div>
    </div>
@endsection
