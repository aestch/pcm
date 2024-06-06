@extends('dashboard.layouts.main')

@section('css')
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
@endsection

@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Arsip Berkas</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Arsip Berkas</a></li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
  
              <div class="card">
                <div class="card-header">
                  <h3 class="card-title">Arsip Berkas</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <a href="/dashboard/arsip-files/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus"></i> Tambah data</a>
                  <table id="clientside" class="table table-hover text-nowrap">
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
                        @foreach($arsipfiles as $arsipfile)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $arsipfile->nama_file }}</td>
                            <td>{{ date('d/m/Y', strtotime($arsipfile->tgl_arsipfile)) }}</td>
                            <td>{{ $arsipfile->user->name }}</td>
                            <td>
                                <a href="{{ url('storage/arsip-files/'. $arsipfile->upload_arsipfile) }}" class="btn btn-info btn-sm" download="{{ $arsipfile->upload_arsipfile }}"><i class="fas fa-download"></i> Unduh</a>
                                <a href="/dashboard/arsip-files/{{ $arsipfile->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                <form action="/dashboard/arsip-files/{{ $arsipfile->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $arsipfile->id }}">
                                    @method('delete')
                                    @csrf
                                    <button type="submit" onclick="konfirmasiHapus(event, {{ $arsipfile->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Hapus</button>
                                </form>
                                
                                <script>
                                    function konfirmasiHapus(event, userId) {
                                        Swal.fire({
                                            title: 'Konfirmasi',
                                            text: 'Apakah Anda yakin ingin menghapus?',
                                            icon: 'question',
                                            showCancelButton: true,
                                            confirmButtonText: 'Ya',
                                            cancelButtonText: 'Batal'
                                        }).then((result) => {
                                            if (result.isConfirmed) {
                                                // Cari form berdasarkan data-user-id
                                                const form = document.querySelector(`.form-hapus[data-user-id='${userId}']`);
                                                if (form) {
                                                    form.submit();
                                                }
                                            }
                                        });
                                        // Cegah aksi default dari tombol submit
                                        event.preventDefault();
                                    }
                                </script>
                                
                                
                            </td>
                        </tr> 
                        @endforeach
                    
                    </tbody>
                  </table>
                  <div class="d-flex justify-content-left mt-2">
                    {{ $arsipfiles->links() }}
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <!-- /.card -->
            </div>
            <!-- /.col -->
          </div>
          <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
      </section>
    <!-- /.content -->
</div>

@endsection
@section('scripts')
    <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
            $('#clientside').DataTable({
                "paging": false, // Nonaktifkan paginasi DataTables
                "searching": true,
                "ordering": true,
                "info": false,
                "autoWidth": false,
                "responsive": true
            });
        });
    </script>
@endsection