@extends('layouts.app')
@section('title', 'Tambah Vendor Satisfaction')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('logistik.vendor-satisfaction.index') }}">Vendor Satisfaction</a></li>
    <li class="breadcrumb-item active">Tambah</li>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Tambah Vendor Satisfaction</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('logistik.vendor-satisfaction.store') }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @include('logistik.vendor-satisfaction._form')
                        <div class="text-end mt-3">
                            <button type="submit" class="btn btn-primary">Simpan</button>
                            <a href="{{ route('logistik.vendor-satisfaction.index') }}" class="btn btn-secondary">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
