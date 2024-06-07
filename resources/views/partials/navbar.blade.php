<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
  <a href="/" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
      {{-- <h2 class="m-0 text-primary">WooDY</h2> --}}
      <img src="{{ asset('storage/logo/'. $pengaturan->logo) }}" class="img-fluid img-thumbnail max-width" alt="" style="max-width: 230px; padding: 20; border-radius: 0;">
  </a>
  <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
      <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarCollapse">
      <div class="navbar-nav p-4 p-lg-0">
          <a href="/" class="nav-item nav-link">Beranda</a>
          <div class="nav-item dropdown">
            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Organisasi</a>
            <div class="dropdown-menu fade-up m-0">
                <a href="/sejarah" class="dropdown-item">Sejarah</a>
                <a href="/kata-sambutan" class="dropdown-item">Kata Sambutan Ketua PCM</a>
                <a href="/visi-dan-misi" class="dropdown-item">Visi dan Misi</a>
                <a href="/struktur-pimpinan" class="dropdown-item">Struktur Pimpinan</a>
                <a href="/ortom" class="dropdown-item">Ortom</a>
            </div>
        </div>

        <div class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Direktori</a>
          <div class="dropdown-menu fade-up m-0">
              <a href="/direktori-keanggotaan" class="dropdown-item">Keanggotaan</a>
              <a href="/direktori-arsip-administrasi" class="dropdown-item">Arsip Administrasi</a>
          </div>
      </div>
      <div class="nav-item dropdown">
        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Galeri</a>
        <div class="dropdown-menu fade-up m-0">
            <a href="/galeri-foto" class="dropdown-item">Galeri Foto/Kegiatan</a>
            <a href="/galeri-video" class="dropdown-item">Galeri Video</a>
        </div>
        </div>
        <div class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Kajian</a>
          <div class="dropdown-menu fade-up m-0">
              <a href="/bidang-aqidah" class="dropdown-item">Bidang Aqidah</a>
              <a href="/bidang-ibadah" class="dropdown-item">Bidang Ibadah</a>
              <a href="/bidang-muamallah" class="dropdown-item">Bidang Muamallah</a>
          </div>
        </div>
        <div class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Artikel</a>
          <div class="dropdown-menu fade-up m-0">
              <a href="/tajuk" class="dropdown-item">Tajuk</a>
              <a href="/opini" class="dropdown-item">Opini</a>
          </div>
        </div>
        <li class="nav-item">
          <a href="/berita" class="nav-link"> Berita</a>
        </li>
        {{-- <div class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Berita</a>
          <div class="dropdown-menu fade-up m-0">
              <a href="/berita-persyarikatan" class="dropdown-item">Berita Persyarikatan</a>
              <a href="/berita-nasional" class="dropdown-item">Berita Nasional</a>
              <a href="/berita-mancanegara" class="dropdown-item">Berita Mancanegara</a>
              <a href="/pengumuman" class="dropdown-item">Pengumuman</a>
              <a href="/agenda" class="dropdown-item">Agenda</a>
          </div>
        </div> --}}
        <div class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Amal Usaha</a>
          <div class="dropdown-menu fade-up m-0">
              <a href="{{ $amalusaha->link_amal }}" target="__blank" class="dropdown-item">{{ $amalusaha->nama_amal }}</a>
              <a href="/download-file" class="dropdown-item">Arsip File</a>
          </div>
        </div>

        <ul class="navbar-nav ms-auto">
          @auth
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Halo, {{ auth()->user()->name }}
            </a>
            <ul class="dropdown-menu fs-7" aria-labelledby="navbarDropdown">
              <li><a class="dropdown-item" href="/dashboard"><i class="bi bi-layout-text-sidebar-reverse"></i> My Dashboard</a></li>
              <li><hr class="dropdown-divider"></li>
              <li>
                <form action="/logout" method="post">
                  @csrf
                  <button type="submit" class="dropdown-item"><i class="bi bi-box-arrow-in-right"></i> Logout</button>
                </form>
              </li>
            </ul>
          </li>
          @else
          <li class="nav-item">
            <a href="/login" class="nav-link"><i class="fas fa-user"></i> Login</a>
          </li>
          @endauth
        </ul>
      </div>
  </div>
</nav>