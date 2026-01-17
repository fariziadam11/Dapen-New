@extends('layouts.app')
@section('title', 'Edit Materi')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('sekretariat.materi.index') }}">Materi</a></li>
    <li class="breadcrumb-item active">Edit</li>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Edit Materi</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('sekretariat.materi.update', $item->id) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        @include('sekretariat.materi._form')
                        <div class="text-end mt-3">
                            <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                            <a href="{{ route('sekretariat.materi.index') }}" class="btn btn-secondary">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
