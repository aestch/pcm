@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
@endsection
@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
            <h1 class="text-center">Semua Kajian</h1><hr>
            <br>
            <div class="row justify-content-center mb-3">
                <div class="col-md-6">
                    <form action="/kajian">
            
                        @if(request('category'))
                            <input type="hidden" name="category" value="{{ request('category') }}">
                        @endif
                        {{-- @if(request('author'))
                            <input type="hidden" name="author" value="{{ request('author') }}">
                        @endif --}}
            
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Cari..." name="search" value="{{ request('search') }}">
                            <button class="btn btn-primary" type="submit">Cari</button>
                          </div>
                    </form>
                </div>
            </div>
            
            @if($kajians->count())
            <div class="card mb-3">
                @if($kajians[0]->image)
                <div style="max-height: 400px; overflow:hidden;">
                    <img src="{{ asset('storage/kajian/' . $kajians[0]->image) }}" alt="{{ $kajians[0]->bidangkajian->bidang_kajian }}" class="img-fluid">
                </div>
                @else
                    <img src="https://source.unsplash.com/1200x400?{{ $kajians[0]->bidangkajian->bidang_kajian }}" class="card-img-top" alt="{{ $kajians[0]->bidangkajian->bidang_kajian }}">
                @endif
                
                <div class="card-body text-center">
                    <h3 class="card-title"><a href="/kajian/{{ $kajians[0]->id }}" class="text-decoration-none text-dark">{{ $kajians[0]->judul }} </a></h3>
                    <p>
                        <small><a href="/kajian?category={{ $kajians[0]->bidangkajian->id }}" class="text-decoration-none">{{ $kajians[0]->bidangkajian->bidang_kajian }}</a> {{ $kajians[0]->created_at->locale('id')->diffForHumans() }}
                        </small>
                    </p>
                    <p class="card-text">{{ $kajians[0]->excerpt }}</p>
            
                    <a href="/kajian/{{ $kajians[0]->id }}" class="text-decoration-none btn btn-primary">Baca Selengkapnya</a>
            
                </div>
            </div>
            
            
            
            <div class="container">
                <div class="row">
                    @foreach($kajians->skip(1) as $kajian)
                    <div class="col-md-4 bt-3 mb-3">
                        <div class="card">
                            <div class="position-absolute bg-dark text-white px-2 py-2" style="background-color: rgba(0, 0, 0, 0.7); border-radius: 4px;
                            "><a href="/kajian?category={{ $kajians[0]->bidangkajian->id }}" class="text-decoration-none text-white">{{ $kajian->bidangkajian->bidang_kajian }}</a></div>
                            @if($kajian->image)
                                <img src="{{ asset('storage/kajian/' . $kajian->image) }}" alt="{{ $kajian->bidangkajian->bidangkajian }}" class="img-fluid">
                            @else
                                <img src="https://source.unsplash.com/500x300?{{ $post->category->name }}" class="card-img-top" alt="{{ $post->category->name }}">
                            @endif
                            <div class="card-body">
                                <h5 class="card-title">{{ $kajian->judul }}</h5>
                                <p>
                                    <small class="text-muted"> <a href="/kajian?author={{ $kajian->id }}" class="text-decoration-none"> {{ $kajian->excerpt }}</a> {{ $kajian->created_at->locale('id')->diffForHumans() }}
                                    </small>
                                </p>
                                <a href="/kajian/{{ $kajian->id }}" class="btn btn-primary">Baca Selengkapnya</a>
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
                {{ $kajians->links() }}
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