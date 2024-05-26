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

      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown ">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <!-- Tampilkan peran dan nama pada layar >= lg -->
          <b class="d-none d-lg-inline-block">( {{ auth()->user()->role->name }} ) - {{ auth()->user()->name }}</b>
          <!-- Tampilkan hanya nama (dibatasi 22 karakter) pada layar md >= size < lg -->
          <b class="d-none d-md-inline-block d-lg-none">{{ Str::limit(auth()->user()->name, 22, '...') }}</b>
          <!-- Tampilkan hanya nama (dibatasi 10 karakter) pada layar < md -->
          <b class="d-inline-block d-md-none">{{ Str::limit(auth()->user()->name, 22, '...') }}</b>
          <i class="far fa-user-circle fa-lg ml-2 mr-2"></i>
      </a>
      
        <script>
          function updateTime() {
              const datetimeElement = document.getElementById('datetime');
              const now = new Date();
      
              // Format waktu: Jam:Menit:Detik
              const hours = String(now.getHours()).padStart(2, '0');
              const minutes = String(now.getMinutes()).padStart(2, '0');
              const seconds = String(now.getSeconds()).padStart(2, '0');
              const timeString = `${hours}:${minutes}:${seconds}`;
      
              // Hari dalam bahasa Indonesia
              const days = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
              const day = days[now.getDay()];
      
              // Format tanggal: dd/mm/yyyy
              const dayOfMonth = String(now.getDate()).padStart(2, '0');
              const month = String(now.getMonth() + 1).padStart(2, '0'); // Januari adalah 0
              const year = now.getFullYear();
              const dateString = `${day}, ${dayOfMonth}/${month}/${year}`;
      
              // Gabungkan waktu dan tanggal
              const dateTimeString = `${timeString} - ${dateString}`;
      
              // Tampilkan di elemen
              datetimeElement.textContent = dateTimeString;
          }
      
          // Perbarui waktu setiap detik
          setInterval(updateTime, 1000);
      
          // Panggil sekali saat pertama kali halaman dimuat
          updateTime();
      </script>
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