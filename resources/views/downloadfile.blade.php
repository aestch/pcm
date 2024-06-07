@extends('layouts.main')
@section('css')
<link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
<link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
@endsection
@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-10 mt-5">
           <h1 class="text-center">Arsip File</h1> <hr>
            <br>
            <div class="card-body">
                <div class="table-responsive">
                <table id="clientside" class="table table-hover table-striped table-bordered dt-responsive nowrap" style="width:100%">
                    <thead>
                    <tr>
                    <th>No</th>
                    <th>Nama Berkas</th>
                    <th>Tanggal</th>
                    <th>Oleh</th>
                    <th>Aksi</th>
                    </tr>
                    </thead>
                    <tbody>
                        @foreach($arsipfiles as $index => $arsipfile)
                        <tr>
                            <td>{{ $arsipfiles->firstItem() + $index }}</td>
                            <td>{{ $arsipfile->nama_file }}</td>
                            <td>{{ date('d/m/Y', strtotime($arsipfile->tgl_arsipfile)) }}</td>
                            <td>{{ $arsipfile->user->name }}</td>
                            <td>
                                <a href="{{ url('storage/arsip-files/'. $arsipfile->upload_arsipfile) }}" class="btn btn-info btn-sm" download="{{ $arsipfile->upload_arsipfile }}"><i class="fas fa-download"></i> Unduh</a>
                                
                                
                            </td>
                        </tr> 
                        @endforeach
                    
                    </tbody>
                </table>
                </div>
                <div class="d-flex justify-content-left mt-3">
                {{ $arsipfiles->links() }}
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
