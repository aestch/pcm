@extends('dashboard.layouts.main')
@section('container')
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.2/css/dataTables.dataTables.css" />

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Kontak Media Sosial</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-6" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-6">

    <a href="/dashboard/media-sosial/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>
    {{-- @if($mediasosials->isEmpty())
        <a href="/dashboard/media-sosial/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>
    @endif --}}
    
    <div class="card-body table-responsive p-0">
       

    <table class="table table-striped table-sm" id="serverside">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Nama Media Sosial</th>
            <th scope="col">Link Media Sosial</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($mediasosials as $mediasosial)
        <tr>
            <td>{{ (($mediasosials->currentPage() - 1) * $mediasosials->perPage()) + $loop->index + 1 }}</td>

            <td>{{ $mediasosial->nama_medsos }}</td>            
            <td><a href="{{ $mediasosial->link_medsos }}" class="text-decoration-none text-hover-black" target="_blank"> <span data-feather="link"></span> Kunjungi Link</a></td>            
            <td>
                <a href="/dashboard/media-sosial/{{ $mediasosial->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/media-sosial/{{ $mediasosial->id }}" method="post" class="d-inline">
                    @method('delete')
                    @csrf
                    <button type="submit" class="badge bg-danger border-0" onclick="return confirm('Apakah anda yakin ingin menghapus?')"><span data-feather="x-circle"></span></button>
                </form>
            </td>
        </tr> 


        
        @endforeach
        </tbody>
    </table>
</div>

<div class="d-flex justify-content-center">
    {{ $mediasosials->links('pagination::bootstrap-5', ['items' => $mediasosials]) }}

</div>

@endsection

