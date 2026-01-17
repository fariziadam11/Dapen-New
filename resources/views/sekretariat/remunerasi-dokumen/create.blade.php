@extends('layouts.app')
@section('title', 'Tambah Remunerasi Dokumen')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('sekretariat.remunerasi-dokumen.index') }}">Remunerasi Dokumen</a></li>
    <li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Tambah Remunerasi Dokumen</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('sekretariat.remunerasi-dokumen.store') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @include('sekretariat.remunerasi-dokumen._form')
                        <div class="text-end mt-3">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                            <a href="{{ route('sekretariat.remunerasi-dokumen.index') }}"
                                class="btn btn-secondary">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
