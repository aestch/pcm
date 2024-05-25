@extends('dashboard.layouts.main')

@section('container')

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Portal Berita</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Portal Berita</a></li>
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
                  <h3 class="card-title">Detail Berita</h3>
                </div>
                <!-- /.card-header -->
                <div class="card-body mx-1">
                    <h2 class="mb-3">{{ $portalberita->judul }}</h2><hr>
                    <p>{{ $portalberita->kategoriberita->kategori_berita }} | {{ $portalberita->created_at->locale('id')->diffForHumans()}}</p>
                    <a href="/dashboard/portal-berita" class="btn btn-success btn-sm"><i class="fas fa-arrow-left"></i> Kembali</a>
                    <a href="/dashboard/portal-berita/{{ $portalberita->id }}/edit" class="btn btn-warning btn-sm"><i class="fas fa-edit"></i> Edit</a>
                    <form action="/dashboard/portal-berita/{{ $portalberita->id }}" method="post" class="d-inline form-hapus" data-user-id="{{ $portalberita->id }}">
                        @method('delete')
                        @csrf
                        <button type="submit" onclick="konfirmasiHapus(event, {{ $portalberita->id }})" class="btn btn-danger btn-sm"><i class="fas fa-trash "></i> Hapus</button>
                    </form>

                    <img src="{{ asset('storage/portal-berita/' . $portalberita->image) }}" alt="{{ $portalberita->kategoriberita->kategori_berita }}" class="img-fluid mt-3">
                    
                    <article class="my-3 fs-6" style="text-align: justify;">
                        {!! $portalberita->body !!}
                    </article>

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

                    <h4>Komentar <i class="fas fa-comments"></i></h4><hr>

                    <form action="/dashboard/portal-berita/{{ $portalberita->id }}/comment" method="post">
                        @csrf
                        <div class="mb-3">
                        <label for="komentar_berita" class="form-label">Tambahkan Komentar</label>
                        <input type="hidden" name="portalberita_id" value="{{ $portalberita->id }}">
                        <textarea class="form-control @error('komentar_berita') is-invalid @enderror" id="komentar_berita" name="komentar_berita" rows="3" placeholder="Tuliskan Komentar...." required>{{ old('komentar_berita') }}</textarea>
                        @error('komentar_berita')
                            <div class="invalid-feedback">{{ $message }}</div>
                        @enderror
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-comments"></i> Komentar</button>
                    </form>
                    <hr>

                    @if (count($portalberita->Komentarberita) > 0)
                        <ul class="list-group">
                            @foreach ($portalberita->komentarberita->sortByDesc('created_at') as $comment)
                                <li class="list-group-item my-2">
                                    <div class="comment-container">
                                        <i class="fas fa-user-secret"></i>
                                        <span class="comment-content">
                                            <strong>Anonym</strong> - {{ $comment->komentar_berita }}
                                        </span>
                                    </div>
                                    {{-- <small>{{ $comment->created_at->diffForHumans() }}</small> --}}
                                    <small>{{ $comment->created_at->locale('id')->diffForHumans() }}</small>
                                </li>
                            @endforeach
                        </ul>
                    @else 
                        <div class="alert alert-warning">Belum ada komentar. Jadilah yang pertama berkomentar!</div>
                    @endif
                
                </div>
                
                <!-- /.card-body -->
              </div>

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
