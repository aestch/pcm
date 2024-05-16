@extends('dashboard.layouts.main')
@section('container')
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.2/css/dataTables.dataTables.css" />

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Amal Usaha Muhammadiyah</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-6" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-6">

    {{-- <a href="/dashboard/media-sosial/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a> --}}
    @if($amalusahas->isEmpty())
        <a href="/dashboard/amal-usaha/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>
    @endif
    
    <div class="card-body table-responsive p-0">
       

    <table class="table table-striped table-sm" id="serverside">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Nama Amal Usaha</th>
            <th scope="col">Link Amal Usaha</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($amalusahas as $amalusaha)
        <tr>
            <td>{{ (($amalusahas->currentPage() - 1) * $amalusahas->perPage()) + $loop->index + 1 }}</td>

            <td>{{ $amalusaha->nama_amal }}</td>            
            <td><a href="{{ $amalusaha->link_amal }}" class="text-decoration-none text-hover-black" target="_blank"> <span data-feather="link"></span> Kunjungi Link</a></td>            
            <td>
                <a href="/dashboard/amal-usaha/{{ $amalusaha->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/amal-usaha/{{ $amalusaha->id }}" method="post" class="d-inline">
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
    {{ $amalusahas->links('pagination::bootstrap-5', ['items' => $amalusahas]) }}

</div>

@endsection

