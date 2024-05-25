<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ asset('lte/index3.html') }}" class="brand-link">
      <img src="{{ asset('lte/dist/img/AdminLTELogo.png') }}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">PCM Batam Kota</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="{{ asset('lte/dist/img/user2-160x160.jpg') }}" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">{{ auth()->user()->name }}</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

          <li class="nav-item">
            <a href="/dashboard" class="nav-link {{ Request::is('dashboard') ? 'active' : '' }}">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Dashboard
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/pengguna-login" class="nav-link {{ Request::is('dashboard/pengguna-login*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-user-plus"></i>
              <p>
                Pengguna Login
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/identitas-pcm" class="nav-link {{ Request::is('dashboard/identitas-pcm*') ? 'active' : '' }}">
              <i class="nav-icon fas fa-chalkboard-teacher"></i>
              <p>
                Identitas PCM
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/galeri-foto" class="nav-link {{ Request::is('dashboard/galeri-foto*') ? 'active' : '' }}">
                <i class="nav-icon far fa-image"></i>
              <p>
                Galeri Foto
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/galeri-video" class="nav-link {{ Request::is('dashboard/galeri-video*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-film"></i>
              <p>
                Galeri Video
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/direktori-keanggotaan" class="nav-link {{ Request::is('dashboard/direktori-keanggotaan*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-users"></i>
              <p>
                Direktori Keanggotaan
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/arsip-files" class="nav-link {{ Request::is('dashboard/arsip-files*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-folder-open"></i>
              <p>
                Arsip Berkas
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/arsip-administrasi" class="nav-link {{ Request::is('dashboard/arsip-administrasi*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-file-archive"></i>
              <p>
                Arsip Administrasi
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/media-sosial" class="nav-link {{ Request::is('dashboard/media-sosial*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-share-alt"></i>
              <p>
                Media Sosial
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/amal-usaha" class="nav-link {{ Request::is('dashboard/amal-usaha*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-building"></i>
              <p>
                Amal Usaha Muhammadiyah
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/portal-berita" class="nav-link {{ Request::is('dashboard/portal-berita*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-newspaper"></i>
              <p>
                Portal Berita
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/artikel" class="nav-link {{ Request::is('dashboard/artikel*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-book-open"></i>
              <p>
                Artikel
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/agenda" class="nav-link {{ Request::is('dashboard/agenda*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-calendar-alt"></i>
              <p>
                Agenda
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/pengumuman" class="nav-link {{ Request::is('dashboard/pengumuman*') ? 'active' : '' }}">
                <i class="nav-icon far fa-bell"></i>
              <p>
                Pengumuman
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/ortom" class="nav-link {{ Request::is('dashboard/ortom*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-network-wired"></i>
              <p>
                Ortom
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/kas" class="nav-link {{ Request::is('dashboard/kas*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-credit-card"></i>
              <p>
                Keuangan dan Kas
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="/dashboard/kajian" class="nav-link {{ Request::is('dashboard/kajian*') ? 'active' : '' }}">
                <i class="nav-icon fas fa-lightbulb"></i>
              <p>
                Kajian
              </p>
            </a>
          </li>
          
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>