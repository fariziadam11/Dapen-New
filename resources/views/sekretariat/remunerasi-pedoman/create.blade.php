@extends('layouts.app')
@section('title', 'Tambah Remunerasi Pedoman')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('sekretariat.remunerasi-pedoman.index') }}">Remunerasi Pedoman</a></li>
    <li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Tambah Remunerasi Pedoman</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('sekretariat.remunerasi-pedoman.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @include('sekretariat.remunerasi-pedoman._form')
                        <div class="text-end mt-3">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                            <a href="{{ route('sekretariat.remunerasi-pedoman.index') }}" class="btn btn-secondary">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
