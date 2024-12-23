<div class="container-fluid bg-dark text-light footer mt-5 pt-5 wow fadeIn" data-wow-delay="0.1s">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-4 col-md-6">
                <h4 class="text-light mb-4">Alamat</h4>
                <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>{{ $pengaturan->alamat }}</p>
                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>{{ $pengaturan->no_telp }}</p>
                <p class="mb-2"><i class="fa fa-envelope me-3"></i>{{ $pengaturan->email }}</p>
                {{-- <div class="d-flex pt-2">
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                </div> --}}
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Organisasi</h4>
                <a class="btn btn-link" href="/sejarah">Sejarah</a>
                <a class="btn btn-link" href="/kata-sambutan">Kata Sambutan Ketua PCM</a>
                <a class="btn btn-link" href="/visi-dan-misi">Visi dan Misi</a>
                <a class="btn btn-link" href="/struktur-pimpinan">Struktur Pimpinan</a>
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Direktori</h4>
                <a class="btn btn-link" href="/direktori-keanggotaan">Direktori Keanggotaan</a>
                <a class="btn btn-link" href="/direktori-arsip-administrasi">Direktori Arsip Administrasi</a>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="copyright">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a class="border-bottom" href="/">{{ $pengaturan->footer }}</a>, All Right Reserved.
                </div>
            </div>
        </div>
    </div>
</div>