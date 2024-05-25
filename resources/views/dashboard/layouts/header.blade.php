<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">   

      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
            <b>{{ auth()->user()->name }}</b>
          <i class="far fa-user-circle fa-lg ml-2 mr-2"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-key mr-2"></i> Ganti Password
          </a>
          <div class="dropdown-divider"></div>
            <form id="logoutForm" action="/logout" method="post">
                @csrf
                <button type="submit" class="dropdown-item" onclick="logoutConfirmation(event)"><i class="fas fa-sign-out-alt mr-2"></i>  Logout <span data-feather="log-out"></span></button>
                <script>
                    function logoutConfirmation(event) {
                        Swal.fire({
                            title: 'Konfirmasi',
                            text: 'Apakah Anda yakin ingin logout?',
                            icon: 'question',
                            showCancelButton: true,
                            confirmButtonText: 'Ya',
                            cancelButtonText: 'Batal'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                // Jika pengguna menekan "Ya", maka lakukan logout
                                document.getElementById('logoutForm').submit();
                            }
                        });
                        // Cegah aksi default dari tombol submit
                        event.preventDefault();
                    }
                </script>
            </form>
          <div class="dropdown-divider"></div>

        </div>
      </li>
      
    </ul>
  </nav>