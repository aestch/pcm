<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="/dashboard" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        
        <a href="#" class="nav-link"><span id="datetime"></span></a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">   

      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
          <!-- Tampilkan peran dan nama pada layar >= lg -->
          <b class="d-none d-lg-inline-block">( {{ auth()->user()->role->name }} ) - {{ auth()->user()->name }}</b>
          <!-- Tampilkan hanya nama (dibatasi 22 karakter) pada layar md >= size < lg -->
          <b class="d-none d-md-inline-block d-lg-none">{{ Str::limit(auth()->user()->name, 22, '...') }}</b>
          <!-- Tampilkan hanya nama (dibatasi 10 karakter) pada layar < md -->
          <b class="d-inline-block d-md-none">{{ Str::limit(auth()->user()->name, 22, '...') }}</b>
          <i class="far fa-user-circle fa-lg ml-2 mr-2"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-right">
          <a href="dashboard/ganti-password" class="dropdown-item">
            <i class="fas fa-key mr-2"></i> Ganti Password
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item" id="logout-link">
            <i class="fas fa-sign-out-alt mr-2"></i> Logout
          </a>
          <form id="logout-form" action="/logout" method="POST" style="display: none;">
            @csrf
          </form>
        </div>
      </li>
      <!-- Tambahkan JS Bootstrap dan SweetAlert di akhir body -->
      <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
      <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

      <script>
        document.getElementById('logout-link').addEventListener('click', function (e) {
          e.preventDefault();
          Swal.fire({
            title: 'Konfirmasi',
            text: 'Apakah Anda yakin ingin logout?',
            icon: 'question',
            showCancelButton: true,
            confirmButtonText: 'Ya',
            cancelButtonText: 'Batal'
          }).then((result) => {
            if (result.isConfirmed) {
              document.getElementById('logout-form').submit();
            }
          });
        });
      </script>
      
    </ul>
  </nav>