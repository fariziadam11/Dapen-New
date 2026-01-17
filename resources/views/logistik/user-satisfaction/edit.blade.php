@extends('layouts.app')
@section('title', 'Edit User Satisfaction')
@section('breadcrumb')
    <li class="breadcrumb-item"><a href="{{ route('logistik.user-satisfaction.index') }}">User Satisfaction</a></li>
    <li class="breadcrumb-item active">Edit</li>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                    <h5 class="card-title mb-0">Edit User Satisfaction</h5>
                </div>
                <div class="card-body">
                    <form action="{{ route('logistik.user-satisfaction.update', $item->id) }}" method="POST"
                        enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        @include('logistik.user-satisfaction._form')
                        <div class="text-end mt-3">
                            <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                            <a href="{{ route('logistik.user-satisfaction.index') }}" class="btn btn-secondary">Batal</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection
