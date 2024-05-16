@extends('dashboard.layouts.main')

@section('container')

<div class="container">
    <div class="row my-5">
        <div class="col-lg-8">
            <h2 class="mb-3">{{ $portalberita->judul }}</h2><hr>
            <p>{{ $portalberita->kategoriberita->kategori_berita }} | {{ $portalberita->created_at->diffForHumans()}}</p>
            <a href="/dashboard/portal-berita" class="btn btn-success btn-sm"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="/dashboard/portal-berita/{{ $portalberita->id }}/edit" class="btn btn-warning btn-sm"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/portal-berita/{{ $portalberita->id }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span> Delete</button>
            </form>

            <img src="{{ asset('storage/portal-berita/' . $portalberita->image) }}" alt="{{ $portalberita->kategoriberita->kategori_berita }}" class="img-fluid mt-3">

            {{-- @if($portalberita->image)
            <div style="max-height: 350px; overflow:hidden;">
                <img src="{{ asset('storage/portal-berita' . $portalberita->image) }}" alt="{{ $portalberita->kategoriberita->kategori_berita }}" class="img-fluid mt-3">
            </div>
            @else
                <img src="https://source.unsplash.com/1200x400?{{ $portalberita->kategoriberita->kategori_berita }}" alt="{{ $portalberita->kategoriberita->kategori_berita }}" class="img-fluid mt-3">
            @endif --}}

            <article class="my-3 fs-6" style="text-align: justify;">
                {!! $portalberita->body !!}
            </article>
            
        </div>
    </div>
</div>

@endsection
