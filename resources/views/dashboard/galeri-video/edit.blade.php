@extends('dashboard.layouts.main')

@section('container')
<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Edit Galeri Video</h1>
</div>

<div class="col-lg-8">
    <form action="/dashboard/galeri-video/{{ $galerivideo->id }}" method="post" class="mb-5">
        @method('put')
        @csrf
        <div class="mb-3">
            <label for="judul_video" class="form-label">Judul Video</label>
            <input type="text" class="form-control @error('judul_video') is-invalid @enderror" id="judul_video" name="judul_video" value="{{ old('judul_video', $galerivideo->judul_video) }}" required autofocus>

            @error('judul_video')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <div class="mb-3">
            <label for="link_video" class="form-label">Link Video</label>
            <input type="text" class="form-control @error('link_video') is-invalid @enderror" id="link_video" name="link_video" value="{{ old('link_video', $galerivideo->link_video) }}" required autofocus>

            @error('link_video')
            <div class="invalid-feedback">
                {{ $message }}
            </div>
            @enderror
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

@endsection
