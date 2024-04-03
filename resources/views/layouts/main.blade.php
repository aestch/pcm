<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>PCM Batam Kota | Official Website</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="{{ asset('pcm/img/logopcm.png') }}" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('pcm/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('pcm/css/style.css') }}" rel="stylesheet">
    @yield('css')
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid d-none d-lg-block">
        <div class="row align-items-center bg-dark px-lg-5">
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-n2">
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="#">{{ \Carbon\Carbon::now()->format('l, d F Y') }}</a>
                        </li>
                        <li class="nav-item border-right border-secondary">
                            <a class="nav-link text-body small" href="#">Sosial Media</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body small" href="/login">Login</a>
                            {{-- <a class="nav-link text-body small" href="/login" data-toggle="modal" data-target="#loginModal">Login</a> --}}
                        </li>

                        <!-- Modal -->
                        <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="loginModalLabel">Login</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <!-- Form untuk login -->
                                        <form>
                                            <div class="form-group">
                                                <label for="username">Username</label>
                                                <input type="text" class="form-control" id="username" placeholder="Enter your username">
                                            </div>
                                            <div class="form-group">
                                                <label for="password">Password</label>
                                                <input type="password" class="form-control" id="password" placeholder="Enter your password">
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="button" class="btn btn-primary">Login</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3 text-right d-none d-md-block">
                <nav class="navbar navbar-expand-sm bg-dark p-0">
                    <ul class="navbar-nav ml-auto mr-n2">
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-twitter"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-facebook-f"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-linkedin-in"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-instagram"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-google-plus-g"></small></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-body" href="#"><small class="fab fa-youtube"></small></a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="row align-items-center py-3 px-lg-5" style="background: linear-gradient(to right, #2C368B, #0db871);">
            <div class="col-lg-4">
                <a href="index.html" class="navbar-brand p-0 d-none d-lg-block">
                    <img src="{{ asset('pcm/img/muhammadiiyah.png') }}" alt="" width="200px">
                </a>
            </div>
            
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg navbar-dark py-2 py-lg-0 px-lg-5" style="background: linear-gradient(to right, #2C368B, #0db871); position: fixed; width: 100%; top: 110px; z-index: 10; transition: top 0.5s;" id="navbar">
            <a href="index.html" class="navbar-brand d-block d-lg-none">
                <img src="{{ asset('pcm/img/muhammadiiyah.png') }}" alt="" width="190px">
            </a>
            <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between px-0 px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">
                    <a href="/" class="nav-item nav-link active">Dashboard</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Organisasi</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/sejarah" class="dropdown-item">Sejarah</a>
                            <a href="/kata-sambutan" class="dropdown-item">Kata Sambutan Ketua PCM</a>
                            <a href="/visi-misi" class="dropdown-item">Visi dan Misi</a>
                            <a href="/struktur-pimpinan" class="dropdown-item">Struktur Pimpinan</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Ortom</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/pimpinan-ranting-muhammadiyah" class="dropdown-item">Pimpinan Ranting Muhammadiyah</a>
                            <a href="/pimpinan-cabang-aisyiah" class="dropdown-item">Pimpinan Cabang Aisyiyah Batam Kota</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Direktori</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/direktori-keanggotaan" class="dropdown-item">Direktori Keanggotaan</a>
                            <a href="/direktori-laporan-keuangan" class="dropdown-item">Direktori Laporan Keuangan</a>
                            <a href="/direktori-arsip-administrasi" class="dropdown-item">Direktori Arsip Administrasi</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Galeri</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/galeri-foto" class="dropdown-item">Galeri Foto/Kegiatan</a>
                            <a href="/galeri-video" class="dropdown-item">Galeri Video</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Kajian</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/bidang-aqidah" class="dropdown-item">Bidang Aqidah</a>
                            <a href="/bidang-ibadah" class="dropdown-item">Bidang Ibadah</a>
                            <a href="/bidang-muamallah" class="dropdown-item">Bidang Muamallah</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Artikel</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/tajuk" class="dropdown-item">Tajuk</a>
                            <a href="/opini" class="dropdown-item">Opini</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Portal Berita</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="/berita-persyarikatan" class="dropdown-item">Berita Persyarikatan</a>
                            <a href="/berita-nasional" class="dropdown-item">Berita Nasional</a>
                            <a href="/berita-mancanegara" class="dropdown-item">Berita Mancanegara</a>
                            <a href="/pengumuman" class="dropdown-item">Pengumuman</a>
                            <a href="/agenda" class="dropdown-item">Agenda</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Amal Usaha</a>
                        <div class="dropdown-menu rounded-0 m-0">
                            <a href="https://www.smkmuhammadiyah.com" target="_blank" class="dropdown-item">SMK Muhammadiyah Plus Batam Kota</a>
                        </div>
                    </div>
                    <a href="/download-file" class="nav-item nav-link">Download File</a>
                </div>
               
            </div>
        </nav>
    </div>
    <!-- Navbar End -->

@yield('content')

    <!-- Footer Start -->
    <div class="container-fluid bg-dark pt-5 px-sm-3 px-md-5 mt-5">
        <div class="row py-4">
            <div class="col-lg-4 col-md-6 mb-5">
                <h5 class="mb-4 text-white text-uppercase font-weight-bold">Kontak Kami</h5>
                <p class="font-weight-medium"><i class="fa fa-home mr-2"></i>PCM Batam Kota</p>
                <p class="font-weight-medium"><i class="fa fa-phone-alt mr-2"></i>Telepon / HP : 0822 7308 3850</p>
                <p class="font-weight-medium"><i class="fa fa-envelope mr-2"></i>pcm.batamkotaofficial@gmail.com</p>
                <h6 class="mt-4 mb-3 text-white text-uppercase font-weight-bold">Follow Us</h6>
                <div class="d-flex justify-content-start">
                    <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="#"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-lg btn-secondary btn-lg-square mr-2" href="#"><i class="fab fa-instagram"></i></a>
                    <a class="btn btn-lg btn-secondary btn-lg-square" href="#"><i class="fab fa-youtube"></i></a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-5">
                <h5 class="mb-4 text-white text-uppercase font-weight-bold">Dashboard</h5>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="/">Dashboard</a>
                </div>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="">Tentang Persyarikatan</a>
                </div>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="">Berita Persyarikatan</a>
                </div>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="">Galeri Aktivitas</a>
                </div>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="">Alamat</a>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-5">
                <h5 class="mb-4 text-white text-uppercase font-weight-bold">Lainnya</h5>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="">Struktur Pimpinan</a>
                </div>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="">Pengumuman</a>
                </div>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="">Agenda</a>
                </div>
                <div class="mb-3">
                    <a class="small text-body text-uppercase font-weight-medium" href="">Direktori File</a>
                </div>
                {{-- <div class="m-n1">
                    <a href="" class="btn btn-sm btn-secondary m-1">Politics</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Business</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Corporate</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Business</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Health</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Education</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Science</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Business</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Foods</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Entertainment</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Travel</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Lifestyle</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Politics</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Business</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Corporate</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Business</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Health</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Education</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Science</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Business</a>
                    <a href="" class="btn btn-sm btn-secondary m-1">Foods</a>
                </div> --}}
            </div>
            
        </div>
    </div>
    <div class="container-fluid py-4 px-sm-3 px-md-5" style="background: #111111;">
        <p class="m-0 text-center">&copy; <a href="#">Pimpinan Cabang Muhammadiyah Batam Kota</a>. All Rights Reserved. 
		
		<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
		
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-square back-to-top"><i class="fa fa-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('pcm/lib/easing/easing.min.js') }}"></script>
    <script src="{{ asset('pcm/lib/owlcarousel/owl.carousel.min.js') }}"></script>

    <!-- Template Javascript -->
    <script src="{{ asset('pcm/js/main.js') }}"></script>

    <script>
        var navbar = document.getElementById('navbar');
        var isFloating = true; // Set isFloating ke true saat halaman pertama kali dimuat
    
        // Fungsi untuk mengatur top berdasarkan ukuran layar
        function setTopPosition() {
            if (window.innerWidth < 768) { // Mode ponsel atau tablet
                navbar.style.top = '0px';
            } else {
                navbar.style.top = isFloating ? '110px' : '0';
            }
        }
    
        // Panggil fungsi setTopPosition saat halaman dimuat dan saat ukuran layar berubah
        window.addEventListener('load', function() {
            setTopPosition();
            // Pindahkan halaman ke bagian paling atas jika halaman tidak berada di paling atas saat dimuat
            if (window.pageYOffset > 0) {
                window.scrollTo(0, 0);
                isFloating = true; // Set isFloating ke true jika halaman berada di posisi selain paling atas
            }
        });
        window.addEventListener('resize', setTopPosition);
    
        // Event listener untuk mendeteksi pergerakan scroll
        window.addEventListener('scroll', function() {
            var currentScroll = window.pageYOffset || document.documentElement.scrollTop;
            if (currentScroll > 0) {
                isFloating = false;
            } else {
                isFloating = true;
            }
            setTopPosition(); // Atur top berdasarkan kondisi terbaru
        });
    </script>

    @yield('scripts')
    
    
    
    
    
    
    
    
    
    
    
    

    
</body>

</html>