@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Portal Berita</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-10" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-10">

    <a href="/dashboard/portal-berita/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>

    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Judul</th>
            <th scope="col">Kategori</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($portalberitas as $portalberita)
        <tr>
            <td>{{ (($portalberitas->currentPage() - 1) * $portalberitas->perPage()) + $loop->index + 1 }}</td>

            <td>{{ $portalberita->judul }}</td>            
            <td>{{ $portalberita->kategoriberita->kategori_berita }}</td>            
            <td>
                <a href="/dashboard/portal-berita/{{ $portalberita->id }}" class="badge bg-info"><span data-feather="eye"></span></a>
                <a href="/dashboard/portal-berita/{{ $portalberita->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/portal-berita/{{ $portalberita->id }}" method="post" class="d-inline">
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
    {{ $portalberitas->links('pagination::bootstrap-5', ['items' => $portalberitas]) }}

</div>

@endsection
