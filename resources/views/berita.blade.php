@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
@endsection
@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
            <h1 class="text-center">Semua Berita</h1><hr>
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
                        @foreach($portalberitas as $index => $galerifoto)
                            <div class="col-md-3 mb-4">
                                <div class="card h-100">
                                    <a href="{{ asset('storage/galeri-foto/'. $galerifoto->image) }}" data-toggle="lightbox" data-title="{{ $galerifoto->keterangan }}" data-bs-toggle="modal" data-bs-target="#detilFoto{{ $galerifoto->id }}" data-bs-whatever="@mdo">
                                        <img src="{{ asset('storage/galeri-foto/'. $galerifoto->image) }}" class="card-img-top img-fluid img-thumbnail" style="object-fit: cover; width: 100%; height: 200px;" alt="{{ $galerifoto->keterangan }}">
                                    </a>
                                    <div class="card-body d-flex flex-column">
                                        <p class="card-text">{{ $galerifoto->keterangan }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="modal fade" id="detilFoto{{ $galerifoto->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" >
                                <div class="modal-dialog modal-lg modal-dialog-centered">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="exampleModalLabel">{{ $galerifoto->keterangan }}</h5>
                                            {{-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> --}}
                                        </div>
                                        <div class="modal-body">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <img src="{{ asset('storage/galeri-foto/'. $galerifoto->image) }}" class="img-fluid rounded mx-auto d-block mb-3" alt="Foto Diri">
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
                        {{ $portalberitas->links() }}
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