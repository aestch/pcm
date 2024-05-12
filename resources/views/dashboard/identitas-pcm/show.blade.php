@extends('dashboard.layouts.main')

@section('container')

<div class="container">
    <div class="row my-5">
        <div class="col-lg-8">

            <a href="/dashboard/identitas-pcm" class="btn btn-success btn-sm"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="/dashboard/identitas-pcm/{{ $identitaspcm->id }}/edit" class="btn btn-warning btn-sm"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/identitas-pcm/{{ $identitaspcm->id }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span> Delete</button>
            </form>

            <center><h2 class="mb-3">Sejarah</h2></center>
            <hr>
            <article class="my-3 fs-6" style="text-align: justify;">
                {!! $identitaspcm->sejarah !!}
            </article>

            <center><h2 class="mb-3">Kata Sambutan Ketua PCM</h2></center>
            <hr>
            <article class="my-3 fs-6" style="text-align: justify;">
                {!! $identitaspcm->kata_sambutan !!}
            </article>

            <center><h2 class="mb-3">Visi dan Misi</h2></center>
            <hr>
            <article class="my-3 fs-6" style="text-align: justify;">
                {!! $identitaspcm->visimisi !!}
            </article>
            
            
            

        </div>
    </div>
</div>

@endsection
