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
</head>

<body>

<div class="container-fluid" style="background: linear-gradient(to right, #2C368B, #0db871);">
    <div class="row justify-content-center align-items-center" style="min-height: 100vh;">
        <div class="col-md-4">
            <div class="card">
                <div class="card-header">
                    <h5 class="modal-title" id="loginModalLabel">Login</h5>
                </div>
                <div class="card-body">
                    <!-- Form untuk login -->
                    <form action="{{ route('login-proses') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="username">Username</label>
                            <input type="text" name="email" class="form-control" id="username" placeholder="Enter your username">
                            @error('email')
                                <small>{{ $message }}</small>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password">
                            @error('password')
                                <small>{{ $message }}</small>
                            @enderror
                        </div>
                        <button type="submit" class="btn btn-primary">Login</button>
                    </form>
                </div>
                
            </div>
        </div>
    </div>
</div>

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

   
    
    
    
    
    
    
    
    

    
</body>

</html>