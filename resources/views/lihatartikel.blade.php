@extends('layouts.main')

@section('container')

<div class="container">
    <div class="row justify-content-center mb-5">
        <div class="col-lg-9 mt-4">
            
            <section class="content">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-12">
          
                      <div class="card">
                        
                        <!-- /.card-header -->
                        <div class="card-body mx-1 px-5 py-5"><hr>
                            <h2 class="mb-3">{{ $artikel->judul }}</h2><hr>
                            <p>{{ $artikel->kategoriartikel->kategori_artikel }} | {{ $artikel->created_at->locale('id')->diffForHumans()}}</p>
                            <a href="/artikel" class="btn btn-success btn-sm"><i class="fas fa-arrow-left"></i> Kembali</a>
        
                            <img src="{{ asset('storage/artikel/' . $artikel->image) }}" alt="{{ $artikel->kategoriartikel->kategori_artikel }}" class="img-fluid mt-3">
                            
                            <article class="my-3 fs-6 " style="text-align: justify;">
                                {!! $artikel->body !!}
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
        
                            <form action="/artikel/{{ $artikel->id }}" method="post">
                                @csrf
                                <div class="mb-3">
                                <label for="komentar_artikel" class="form-label">Tambahkan Komentar</label>
                                <input type="hidden" name="artikel_id" value="{{ $artikel->id }}">
                                <textarea class="form-control @error('komentar_artikel') is-invalid @enderror" id="komentar_artikel" name="komentar_artikel" rows="3" placeholder="Tuliskan Komentar...." required>{{ old('komentar_artikel') }}</textarea>
                                @error('komentar_artikel')
                                    <div class="invalid-feedback">{{ $message }}</div>
                                @enderror
                                </div>
                                <button type="submit" class="btn btn-primary"><i class="fas fa-comments"></i> Komentar</button>
                            </form>
                            <hr>
        
                            @if (count($artikel->Komentarartikel) > 0)
                                <ul class="list-group">
                                    @foreach ($artikel->komentarartikel->sortByDesc('created_at') as $comment)
                                        <li class="list-group-item my-2">
                                            <div class="comment-container">
                                                <i class="fas fa-user-secret"></i>
                                                <span class="comment-content">
                                                    <strong>Anonym</strong> - {{ $comment->komentar_artikel }}
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
        </div>
    </div>
</div>
   
@endsection