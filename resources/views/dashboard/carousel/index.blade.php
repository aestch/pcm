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
            <h1 class="m-0">Carousel</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Carousel</a></li>
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
                  <h3 class="card-title">Carousel</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                    <a href="/dashboard/carousel/create" class="btn btn-primary btn-sm mb-3"><i class="fas fa-plus"></i> Tambah data</a>
                  <div class="table-responsive">
                    <table id="clientside" class="table table-hover table-striped table-bordered dt-responsive nowrap" style="width:100%">
                      <thead>
                      <tr>
                        <th>No</th>
                        <th>Judul Carousel</th>
                        <th>Aksi</th>
                      </tr>
                      </thead>
                      <tbody>
                          @foreach($carousels as $index => $carousel)
                          <tr>
                              <td>{{ $carousels->firstItem() + $index }}</td>
                              <td>{{ $carousel->judul }}</td>
                              <td>
                                <a href="/dashboard/carousel/{{ $carousel->id }}/show" class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#detilCarousel{{ $carousel->id }}" data-bs-whatever="@mdo"><i class="fas fa-eye"></i> Detail</a>
                                  {{-- <a href="/dashboard/carousel/{{ $carousel->id }}/show" class="btn btn-info btn-sm" data-bs-toggle="modal" data-bs-target="#detilCarousel{{ $carousel->id }}" data-bs-whatever="@mdo"><i class="fas fa-eye"></i> Lihat</a> --}}
                                  <a href="/dashboard/carousel/{{ $carousel->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                                  <form action="/dashboard/carousel/{{ $carousel->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $carousel->id }}">
                                      @method('delete')
                                      @csrf
                                      <button type="submit" onclick="konfirmasiHapus(event, {{ $carousel->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i> Hapus</button>
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
                          <div class="modal fade" id="detilCarousel{{ $carousel->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog modal-lg modal-dialog-centered">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">{{ $carousel->judul }}</h5>
                                        {{-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> --}}
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <img src="{{ asset('storage/carousel/'. $carousel->image) }}" class="img-fluid rounded mx-auto d-block mb-3" alt="Carousel">
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
                      
                      </tbody>
                    </table>
                  </div>    
                  <div class="d-flex justify-content-left mt-2">
                    {{ $carousels->links() }}
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

<!-- Menggunakan Bootstrap dari CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.min.js"></script>
<!-- Menggunakan jQuery dari CDN -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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