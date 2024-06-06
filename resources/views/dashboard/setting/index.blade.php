@extends('dashboard.layouts.main')
@section('css')
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css" />
  <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.2.9/css/responsive.dataTables.min.css" />
@endsection
@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Pengaturan</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Pengaturan</a></li>
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
                  <h3 class="card-title">Pengaturan</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    @if($pengaturans->isEmpty())
                        <a href="/dashboard/pengaturan/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus"></i> Tambah data</a>
                    @endif
                    <div class="table-responsive">
                      <table id="clientside" class="table table-hover table-striped table-bordered dt-responsive nowrap" style="width:100%">
                        <thead>
                        <tr>
                          <th>No</th>
                          <th>Title</th>
                          <th>Favicon</th>
                          <th>Nama Website</th>
                          <th>Logo</th>
                          <th>No Telpon</th>
                          <th>Email</th>
                          <th>Footer</th>
                          <th>Aksi</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach($pengaturans as $pengaturan)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td>{{ $pengaturan->title }}</td>
                                <td>
                                    @if ($pengaturan->favicon)
                                        <img src="{{ asset('storage/favicon/' . $pengaturan->favicon) }}" alt="Favicon" style="width: 50px; height: 50px;">
                                    @else
                                        No Image
                                    @endif
                                </td>
                                <td>{{ $pengaturan->nama_website }}</td>
                                <td>
                                    @if ($pengaturan->logo)
                                        <img src="{{ asset('storage/logo/' . $pengaturan->logo) }}" alt="Favicon" style="width: 50px; height: 50px;">
                                    @else
                                        No Image
                                    @endif
                                </td>
                                <td>{{ $pengaturan->no_telp }}</td>
                                <td>{{ $pengaturan->email }}</td>
                                <td>{{ $pengaturan->footer }}</td>
                                <td>
                                    <a href="/dashboard/pengaturan/{{ $pengaturan->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                    <form action="/dashboard/pengaturan/{{ $pengaturan->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $pengaturan->id }}">
                                        @method('delete')
                                        @csrf
                                        <button type="submit" onclick="konfirmasiHapus(event, {{ $pengaturan->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Hapus</button>
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
                    </div>
                    <div class="d-flex justify-content-left mt-2">
                      {{ $pengaturans->links() }}
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