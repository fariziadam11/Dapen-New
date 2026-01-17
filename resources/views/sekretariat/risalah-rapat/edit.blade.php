@extends('layouts.app')
@section('title', 'Edit Risalah Rapat')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('sekretariat.risalah-rapat.index') }}">Risalah Rapat</a></li>
    <li class="breadcrumb-item active">Edit</li>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Edit Risalah Rapat</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('sekretariat.risalah-rapat.update', $item->id) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        @include('sekretariat.risalah-rapat._form')
                        <div class="text-end mt-3">
                            <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                            <a href="{{ route('sekretariat.risalah-rapat.index') }}" class="btn btn-secondary">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
