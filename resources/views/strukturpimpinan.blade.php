@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
@endsection
@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
            <h1 class="text-center">Struktur Pimpinan</h1><hr>
            <br>
            <div class="card-body">
            
                <div class="container">
                    <!-- Menampilkan Total Data -->
                    <div class="row mb-4">
                        <div class="col-md-12">
                            {{-- <h5>Total Data: {{ $totalData }}</h5> --}}
                        </div>
                    </div>
                
                    <div class="row">
                        @foreach($direktorikeanggotaans as $index => $direktorikeanggotaan)
                            <div class="col-md-3 mb-4">
                                <div class="card h-100">
                                    <a href="{{ asset('storage/foto-diri/'. $direktorikeanggotaan->foto_diri) }}" data-toggle="lightbox" data-title="{{ $direktorikeanggotaan->keterangan }}" data-bs-toggle="modal" data-bs-target="#detilFoto{{ $direktorikeanggotaan->id }}" data-bs-whatever="@mdo">
                                        <img src="{{ asset('storage/foto-diri/'. $direktorikeanggotaan->foto_diri) }}" class="card-img-top img-fluid img-thumbnail" style="object-fit: cover; width: 100%; height: 200px;" alt="{{ $direktorikeanggotaan->keterangan }}">
                                    </a>
                                    <div class="card-body d-flex flex-column">
                                        <strong><p class="card-text">{{ $direktorikeanggotaan->jabatan  }}</p></strong>
                                    </div>
                                    <div class="card-body d-flex flex-column">
                                        <p class="card-text">{{ $direktorikeanggotaan->nama }}</p>
                                    </div>
                                    
                                </div>
                            </div>
                            <div class="modal fade" id="detilFoto{{ $direktorikeanggotaan->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
                                <div class="modal-dialog modal-lg modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">{{ $direktorikeanggotaan->keterangan }}</h5>
                                            {{-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> --}}
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <img src="{{ asset('storage/foto-diri/'. $direktorikeanggotaan->foto_diri) }}" class="img-fluid rounded mx-auto d-block mb-3" alt="Foto Diri">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Tutup</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                    </div>
                
                    <!-- Pagination Links -->
                    <div class="d-flex justify-content-center mt-4">
                        {{ $direktorikeanggotaans->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
   
@endsection
@section('scripts')
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/responsive/2.2.9/js/dataTables.responsive.min.js"></script>
<script>
    $(document).ready(function() {
        $('#clientside').DataTable({
            "paging": false,
            "searching": true,
            "ordering": true,
            "info": false,
            "autoWidth": false,
            "responsive": true,
            "lengthMenu": [10, 20, 50, 100],
            "pageLength": 10
        });
    });
</script>
@endsection