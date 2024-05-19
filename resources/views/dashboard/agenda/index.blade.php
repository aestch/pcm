@extends('dashboard.layouts.main')
@section('container')
<link rel="stylesheet" href="https://cdn.datatables.net/2.0.2/css/dataTables.dataTables.css" />

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Agenda Persyarikatan</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-10" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-10">

    <a href="/dashboard/agenda/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>

    {{-- @if($agendas->isEmpty())
        <a href="/dashboard/agenda/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>
    @endif --}}
    
    <div class="card-body table-responsive p-0">
       

    <table class="table table-striped table-sm" id="serverside">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Nama Agenda</th>
            <th scope="col">Waktu</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($agendas as $agenda)
        <tr>
            <td>{{ (($agendas->currentPage() - 1) * $agendas->perPage()) + $loop->index + 1 }}</td>

            <td>{{ $agenda->nama_agenda }}</td>            
            {{-- <td>{{ $agenda->start_datetime }} - {{ $agenda->end_datetime }}</td>        --}}
            <td>{{ \Carbon\Carbon::parse($agenda->start_datetime)->format('d/m/Y H:i') }} - {{ \Carbon\Carbon::parse($agenda->end_datetime)->format('d/m/Y H:i') }}</td>

            <td>
                <a href="/dashboard/agenda/{{ $agenda->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/agenda/{{ $agenda->id }}" method="post" class="d-inline">
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
    {{ $agendas->links('pagination::bootstrap-5', ['items' => $agendas]) }}

</div>

@endsection

