@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Arsip Administrasi</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-10" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-10">

    <a href="/dashboard/arsip-administrasi/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>

    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Tanggal Arsip</th>
            <th scope="col">No Surat</th>
            <th scope="col">Kategori</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($arsipadministrasis as $arsipadministrasi)
        <tr>
            <td>{{ (($arsipadministrasis->currentPage() - 1) * $arsipadministrasis->perPage()) + $loop->index + 1 }}</td>

            <td>{{ date('d/m/Y', strtotime($arsipadministrasi->tgl_arsip)) }}</td>       
            <td>{{ $arsipadministrasi->no_surat }}</td>            
            <td>{{ $arsipadministrasi->kategoriarsip->kategori_arsip }}</td>            
            <td>
                {{-- <a href="{{ url('storage/arsip-administrasi/'. $arsipfile->upload_arsipfile) }}" class="badge bg-dark" download="{{ $arsipfile->upload_arsipfile }}"><span data-feather="download"></span></a> --}}
                <a href="/dashboard/arsip-administrasi/{{ $arsipadministrasi->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/arsip-administrasi/{{ $arsipadministrasi->id }}" method="post" class="d-inline">
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
    {{ $arsipadministrasis->links('pagination::bootstrap-5', ['items' => $arsipadministrasis]) }}

</div>

@endsection
