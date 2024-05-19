@extends('dashboard.layouts.main')
@section('container')
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.2/css/dataTables.dataTables.css" />

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Pengumuman PCM Batam Kota</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-12" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-12">

    <a href="/dashboard/pengumuman/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>

    {{-- @if($agendas->isEmpty())
        <a href="/dashboard/agenda/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>
    @endif --}}
    
    <div class="card-body table-responsive p-0">
       

    <table class="table table-striped table-sm" id="serverside">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Judul Pengumuman</th>
            <th scope="col">Isi Pengumuman</th>
            <th scope="col">Hari / Tanggal Pengumuman</th>
            <th scope="col">Waktu</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($pengumumans as $pengumuman)
        <tr>
            <td>{{ (($pengumumans->currentPage() - 1) * $pengumumans->perPage()) + $loop->index + 1 }}</td>

            <td>{{ $pengumuman->judul_pengumuman }}</td>            
            <td>{{ $pengumuman->isi_pengumuman }}</td>            
            <td>{{ \Illuminate\Support\Carbon::parse($pengumuman->created_at)->locale('id')->isoFormat('dddd, DD/MM/YYYY') }}</td>
            <td>{{ \Carbon\Carbon::parse($pengumuman->created_at)->format('H:i') }}</td>

            <td>
                <a href="/dashboard/pengumuman/{{ $pengumuman->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/pengumuman/{{ $pengumuman->id }}" method="post" class="d-inline">
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
    {{ $pengumumans->links('pagination::bootstrap-5', ['items' => $pengumumans]) }}

</div>

@endsection

