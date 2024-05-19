@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Buat Pengumuman Baru</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/pengumuman" method="post" class="mb-5">
        @csrf
        <div class="mb-3">
            <label for="judul_pengumuman" class="form-label">Judul Pengumuman</label>
            <input type="text" class="form-control @error('judul_pengumuman') is-invalid @enderror" id="judul_pengumuman" name="judul_pengumuman" value="{{ old('judul_pengumuman') }}" required autofocus>

            @error('judul_pengumuman')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="isi_pengumuman" class="form-label">Isi Pengumuman</label>
            {{-- <input type="text" class="form-control @error('isi_pengumuman') is-invalid @enderror" id="isi_pengumuman" name="isi_pengumuman" value="{{ old('isi_pengumuman') }}" required> --}}
            <textarea class="form-control @error('isi_pengumuman') is-invalid @enderror" rows="5" id="isi_pengumuman" name="isi_pengumuman" required>{{ old('isi_pengumuman') }}</textarea>
            @error('isi_pengumuman')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        
        <button type="submit" class="btn btn-primary">Simpan</button>
    </form>
</div>

@endsection