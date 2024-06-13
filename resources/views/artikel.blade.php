@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
@endsection
@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
            <h1 class="text-center">Semua Artikel</h1><hr>
            <br>
            <div class="row justify-content-center mb-3">
                <div class="col-md-6">
                    {{-- <form action="/artikel">
            
                        @if(request('category'))
                            <input type="hidden" name="category" value="{{ request('category') }}">
                        @endif
                        @if(request('author'))
                            <input type="hidden" name="author" value="{{ request('author') }}">
                        @endif
            
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Cari..." name="search" value="{{ request('search') }}">
                            <button class="btn btn-primary" type="submit">Cari</button>
                          </div>
                    </form> --}}
                </div>
            </div>
            
            @if($artikels->count())
            <div class="card mb-3">
                @if($artikels[0]->image)
                <div style="max-height: 400px; overflow:hidden;">
                    <img src="{{ asset('storage/artikel/' . $artikels[0]->image) }}" alt="{{ $artikels[0]->kategoriartikel->kategori_artikel }}" class="img-fluid">
                </div>
                @else
                    <img src="https://source.unsplash.com/1200x400?{{ $artikels[0]->kategoriartikel->kategori_artikel }}" class="card-img-top" alt="{{ $artikels[0]->kategoriartikel->kategori_artikel }}">
                @endif
                
                <div class="card-body text-center">
                    <h3 class="card-title"><a href="/artikel/{{ $artikels[0]->id }}" class="text-decoration-none text-dark">{{ $artikels[0]->judul }} </a></h3>
                    <p>
                        <small><a href="" class="text-decoration-none">{{ $artikels[0]->kategoriartikel->kategori_artikel }}</a> {{ $artikels[0]->created_at->locale('id')->diffForHumans() }}
                        </small>
                    </p>
                    <p class="card-text">{{ $artikels[0]->excerpt }}</p>
            
                    <a href="/artikel/{{ $artikels[0]->id }}" class="text-decoration-none btn btn-primary">Baca Selengkapnya</a>
            
                </div>
            </div>
            
            
            
            <div class="container">
                <div class="row">
                    @foreach($artikels->skip(1) as $artikel)
                    <div class="col-md-4 bt-3 mb-3">
                        <div class="card">
                            <div class="position-absolute bg-dark text-white px-2 py-2" style="background-color: rgba(0, 0, 0, 0.7); border-radius: 4px;
                            "><a href="/artikel?category={{ $artikels[0]->kategoriartikel->id }}" class="text-decoration-none text-white">{{ $artikel->kategoriartikel->kategori_artikel }}</a></div>
                            @if($artikel->image)
                                <img src="{{ asset('storage/artikel/' . $artikel->image) }}" alt="{{ $artikel->kategoriartikel->kategoriartikel }}" class="img-fluid">
                            @else
                                <img src="https://source.unsplash.com/500x300?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                            @endif
                            <div class="card-body">
                                <h5 class="card-title">{{ $artikel->judul }}</h5>
                                <p>
                                    <small class="text-muted"> <a href="/artikel?author={{ $artikel->id }}" class="text-decoration-none"> {{ $artikel->excerpt }}</a> {{ $artikel->created_at->locale('id')->diffForHumans() }}
                                    </small>
                                </p>
                                <a href="/artikel/{{ $artikel->id }}" class="btn btn-primary">Baca Selengkapnya</a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                    
                </div>
            </div>
            
            @else
            
            <p class="text-center fs-4">No Post Found.</p>
            
            @endif
            
            <div class="d-flex justify-content-end">
                {{ $artikels->links() }}
            </div>
        </div>
    </div>
</div>
   
@endsection
@section('scripts')
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
<script>
    $(document).ready(function() {
        $('#clientside').DataTable({
            "paging": false,
            "searching": true,
            "ordering": true,
            "info": false,
            "autoWidth": false,
            "responsive": true,
            "lengthMenu": [10, 20, 50, 100],
            "pageLength": 10
        });
    });
</script>
@endsection