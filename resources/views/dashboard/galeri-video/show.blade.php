@extends('dashboard.layouts.main')

@section('container')

<div class="container">
    <div class="row my-5">
        <div class="col-lg-8">

            <a href="/dashboard/galeri-video" class="btn btn-success btn-sm"><span data-feather="arrow-left"></span> Kembali</a>
            <a href="/dashboard/galeri-video/{{ $galerivideo->id }}/edit" class="btn btn-warning btn-sm"><span data-feather="edit"></span> Edit</a>
            <form action="/dashboard/galeri-video/{{ $galerivideo->id }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?')"><span data-feather="x-circle"></span> Delete</button>
            </form>

            <center><h2 class="mb-3 mt-5">{!! $galerivideo->judul_video !!}</h2></center>
            <hr>

            <div class="mt-3">
                <iframe width="780" height="400" src="{{ $galerivideo->link_video }}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            </div>
            
            

        </div>
    </div>
</div>

@endsection
