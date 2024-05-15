@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Galeri Video</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-6" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-6">

    <a href="/dashboard/galeri-video/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>

    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Judul Video</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($galerivideos as $galerivideo)
        <tr>
            <td>{{ (($galerivideos->currentPage() - 1) * $galerivideos->perPage()) + $loop->index + 1 }}</td>

            <td>{{ $arsipvideo->judul_video }}</td>          
            <td>
                <a href="/dashboard/galeri-video/{{ $galerivideo->id }}/edit" class="badge bg-warning"><span data-feather="eye"></span></a>
                <form action="/dashboard/galeri-video/{{ $galerivideo->id }}" method="post" class="d-inline">
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
    {{ $galerivideos->links('pagination::bootstrap-5', ['items' => $galerivideos]) }}

</div>

@endsection
