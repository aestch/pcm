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
            <h1 class="m-0">Agenda</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Agenda</a></li>
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
                  <h3 class="card-title">Agenda</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <a href="/dashboard/agenda/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus"></i> Tambah data</a>
                    <div class="table-responsive">
                      <table id="clientside" class="table table-hover table-striped table-bordered dt-responsive nowrap" style="width:100%">
                        <thead>
                        <tr>
                          <th>No</th>
                          <th>Nama Agenda</th>
                          <th>Hari / Tanggal Agenda</th>
                          <th>Waktu</th>
                          <th>Aksi</th>
                        </tr>
                        </thead>
                        <tbody>
                            @foreach($agendas as $index => $agenda)
                            <tr>
                                <td>{{ $agendas->firstItem() + $index }}</td>
                                <td>{{ $agenda->nama_agenda }}</td>
                                <td>{{ \Illuminate\Support\Carbon::parse($agenda->tgl_agenda)->locale('id')->isoFormat('dddd, DD/MM/YYYY') }}</td>
                                <td>{{ \Carbon\Carbon::parse($agenda->start_time)->format('H:i') }} - {{ \Carbon\Carbon::parse($agenda->end_time)->format('H:i') }}</td>
                                <td>
                                    <a href="/dashboard/agenda/{{ $agenda->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                    <form action="/dashboard/agenda/{{ $agenda->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $agenda->id }}">
                                        @method('delete')
                                        @csrf
                                        <button type="submit" onclick="konfirmasiHapus(event, {{ $agenda->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Hapus</button>
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
                    {{ $agendas->links() }}
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