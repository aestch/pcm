@extends('dashboard.layouts.main')

@section('container')

<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
    <h1 class="h2">Direktori Keanggotaan</h1>
</div>

@if(session()->has('success'))
    <div class="alert alert-success col-lg-6" role="alert">
        {{ session('success') }}
    </div>
@endif

<div class="table-responsive col-lg-10">

    <a href="/dashboard/direktori-keanggotaan/create" class="btn btn-primary btn-sm mb-3"><span data-feather="plus"></span> Tambah data</a>

    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th scope="col">No</th>
            <th scope="col">Nama</th>
            <th scope="col">Cabang</th>
            <th scope="col">Ranting</th>
            <th scope="col">Action</th>
        </tr>
        </thead>
        <tbody>

        @foreach($direktorikeanggotaans as $direktorikeanggotaan)
        <tr>
            <td>{{ (($direktorikeanggotaans->currentPage() - 1) * $direktorikeanggotaans->perPage()) + $loop->index + 1 }}</td>

            <td>{{ $direktorikeanggotaan->nama }}</td>            
            <td>{{ $direktorikeanggotaan->cabang }}</td>            
            <td>{{ $direktorikeanggotaan->ranting }}</td>            
            <td>
                <a href="/dashboard/direktori-keanggotaan/{{ $direktorikeanggotaan->id }}/show" class="badge bg-dark" data-bs-toggle="modal" data-bs-target="#detilAnggota{{ $direktorikeanggotaan->id }}" data-bs-whatever="@mdo"><span data-feather="eye"></span></a>
                <a href="/dashboard/direktori-keanggotaan/{{ $direktorikeanggotaan->id }}/edit" class="badge bg-warning"><span data-feather="edit"></span></a>
                <form action="/dashboard/direktori-keanggotaan/{{ $direktorikeanggotaan->id }}" method="post" class="d-inline">
                    @method('delete')
                    @csrf
                    <button type="submit" class="badge bg-danger border-0" onclick="return confirm('Apakah anda yakin ingin menghapus?')"><span data-feather="x-circle"></span></button>
                </form>
            </td>
        </tr> 


        <div class="modal fade" id="detilAnggota{{ $direktorikeanggotaan->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">

            <div class="modal-body">
                <form>
                    <div class="row">

                        <div class="col-md-6">
                            <div class="mb-3">
                                <img src="{{ asset('storage/foto-diri/'. $direktorikeanggotaan->foto_diri) }}" style="max-width: 80%; border: 1px solid #ccc; padding: 5px;" alt="">
                            </div>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Nama :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->nama }}" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">NBM :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->nbm }}" readonly>
                            </div>
                        </div>
                        
                        <div class="col-md-6">
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Tempat, Tanggal Lahir :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->tempat_lahir }}, {{ $direktorikeanggotaan->tanggal_lahir }}" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Cabang :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->cabang }}" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Ranting :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->ranting }}" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Alamat :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->alamat }}" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Email :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->email }}" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">No. HP/WA :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->no_hp }}" readonly>
                            </div>
                            <div class="mb-3">
                                <label for="recipient-name" class="col-form-label">Pekerjaan :</label>
                                <input type="text" class="form-control" id="recipient-name" value="{{ $direktorikeanggotaan->pekerjaan }}" readonly>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
            </div>
            </div>
        </div>
        </div>
        @endforeach
        </tbody>
    </table>
</div>

<div class="d-flex justify-content-center">
    {{ $direktorikeanggotaans->links('pagination::bootstrap-5', ['items' => $direktorikeanggotaans]) }}

</div>

@endsection
