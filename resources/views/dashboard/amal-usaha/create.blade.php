@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Data Amal Usaha Muhammadiyah</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/amal-usaha" method="post" class="mb-5">
        @csrf
        
        <div class="mb-3">
            <label for="nama_amal" class="form-label">Nama Amal Usaha</label>
            <input type="text" class="form-control @error('nama_amal') is-invalid @enderror" id="nama_amal" name="nama_amal" value="{{ old('nama_amal') }}" required>

            @error('nama_amal')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="link_amal" class="form-label">Link Amal Usaha</label>
            <input type="text" class="form-control @error('link_amal') is-invalid @enderror" id="link_amal" name="link_amal" value="{{ old('link_amal') }}" required>

            @error('link_amal')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>

        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

@endsection