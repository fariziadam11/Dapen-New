@extends('layouts.app')
@section('title', 'Tambah Cleaning Service')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('logistik.cleaning-service.index') }}">Cleaning Service</a></li>
    <li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Tambah Cleaning Service</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('logistik.cleaning-service.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @include('logistik.cleaning-service._form')
                        <div class="text-end mt-3">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                            <a href="{{ route('logistik.cleaning-service.index') }}" class="btn btn-secondary">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
