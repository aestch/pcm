@extends('dashboard.layouts.main')

@section('container')
<style>
    .icon-large {
        width: 32px;
        height: 32px;
    }
</style>

<div class="container">
    <div class="row my-5">
        <div class="col-lg-8">
            <h2 class="mb-3">{{ $artikel->judul }}</h2><hr>
            <p>{{ $artikel->kategoriartikel->kategori_artikel }} | {{ $artikel->created_at->locale('id')->diffForHumans()}}</p>
            <a href="/dashboard/artikel" class="btn btn-success btn-sm"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="/dashboard/artikel/{{ $artikel->id }}/edit" class="btn btn-warning btn-sm"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/artikel/{{ $artikel->id }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span> Delete</button>
            </form>

            <img src="{{ asset('storage/artikel/' . $artikel->image) }}" alt="{{ $artikel->kategoriartikel->kategori_artikel }}" class="img-fluid mt-3">

            <article class="my-3 fs-6" style="text-align: justify;">
                {!! $artikel->body !!}
            </article>

            {{-- <h4>Komentar </h4><hr>

            <form action="/dashboard/portal-berita/{{ $portalberita->id }}/comment" method="post">
                @csrf
                <div class="mb-3">
                  <label for="komentar_berita" class="form-label">Tambahkan Komentar</label>
                  <input type="hidden" name="portalberita_id" value="{{ $portalberita->id }}">
                  <textarea class="form-control @error('komentar_berita') is-invalid @enderror" id="komentar_berita" name="komentar_berita" rows="3" placeholder="Tuliskan Komentar....">{{ old('komentar_berita') }}</textarea>
                  @error('komentar_berita')
                    <div class="invalid-feedback">{{ $message }}</div>
                  @enderror
                </div>
                <button type="submit" class="btn btn-primary"><span data-feather="message-square"></span> Komentar</button>
            </form>
            <hr>
            @if(session()->has('success'))
                <div class="alert alert-success col-lg-10" role="alert">
                    {{ session('success') }}
                </div>
            @endif

            @if (count($portalberita->Komentarberita) > 0)
                <ul class="list-group">
                    @foreach ($portalberita->komentarberita->sortByDesc('created_at') as $comment)
                        <li class="list-group-item">
                            <div class="comment-container">
                                <span data-feather="user"></span>
                                <span class="comment-content">
                                    <strong>Anonym</strong> - {{ $comment->komentar_berita }}
                                </span>
                            </div>
                            <small>{{ $comment->created_at->locale('id')->diffForHumans() }}</small>
                        </li>
                    @endforeach
                </ul>
            @else 
                <div class="alert alert-warning">Belum ada komentar. Jadilah yang pertama berkomentar!</div>
            @endif --}}
            
        </div>
    </div>
</div>


@endsection
