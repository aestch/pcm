@extends('dashboard.layouts.main')
@section('container')
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.2/css/dataTables.dataTables.css" />

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Identitas PCM</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-10" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-10">

    @if($identitaspcms->isEmpty())
        <a href="/dashboard/identitas-pcm/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>
    @endif

    <div class="card-body table-responsive p-0">
       

    <table class="table table-striped table-sm" id="serverside">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Sejarah</th>
            <th scope="col">Kata Sambutan Ketua PCM</th>
            <th scope="col">Visi dan Misi</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($identitaspcms as $identitaspcm)
        <tr>
            <td>{{ (($identitaspcms->currentPage() - 1) * $identitaspcms->perPage()) + $loop->index + 1 }}</td>

            <td>Sejarah <a href="">Selengkapnya...</a></td>            
            <td>Kata Sambutan Ketua PCM <a href="">Selengkapnya...</a></td>            
            <td>Visi dan Misi <a href="">Selengkapnya...</a></td>            
            <td>
                <a href="/dashboard/identitas-pcm/{{ $identitaspcm->id }}" class="badge bg-dark"><span data-feather="eye"></span></a>
                <a href="/dashboard/identitas-pcm/{{ $identitaspcm->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/identitas-pcm/{{ $identitaspcm->id }}" method="post" class="d-inline">
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
    {{ $identitaspcms->links('pagination::bootstrap-5', ['items' => $identitaspcms]) }}

</div>

@endsection

