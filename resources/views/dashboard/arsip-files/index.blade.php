@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Arsip Files</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-10" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-10">

    <a href="/dashboard/arsip-files/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>

    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Nama File</th>
            <th scope="col">Tanggal</th>
            <th scope="col">Oleh</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($arsipfiles as $arsipfile)
        <tr>
            <td>{{ (($arsipfiles->currentPage() - 1) * $arsipfiles->perPage()) + $loop->index + 1 }}</td>

            <td>{{ $arsipfile->nama_file }}</td>            
            <td>{{ $arsipfile->tgl_arsipfile }}</td>            
            <td>{{ $arsipfile->user->name }}</td>            
            <td>
                <a href="/dashboard/arsip-files/{{ $arsipfile->id }}/show" class="badge bg-dark" data-bs-toggle="modal" data-bs-target="#detilAnggota{{ $arsipfile->id }}" data-bs-whatever="@mdo"><span data-feather="eye"></span></a>
                <a href="/dashboard/arsip-files/{{ $arsipfile->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/arsip-files/{{ $arsipfile->id }}" method="post" class="d-inline">
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
    {{ $arsipfiles->links('pagination::bootstrap-5', ['items' => $arsipfiles]) }}

</div>

@endsection
