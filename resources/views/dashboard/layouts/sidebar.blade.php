<nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
    <div class="position-sticky pt-3">
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard') ? 'active' : '' }}" aria-current="page" href="/dashboard">
                <span data-feather="home"></span>
                Dashboard
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/pengguna-login*') ? 'active' : '' }}" href="/dashboard/pengguna-login">
                <span data-feather="file-text"></span>
                Pengguna Login
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/identitas-pcm*') ? 'active' : '' }}" href="/dashboard/identitas-pcm">
                <span data-feather="file-text"></span>
                Identitas PCM
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/galeri-foto*') ? 'active' : '' }}" href="/dashboard/galeri-foto">
                <span data-feather="file-text"></span>
                Galeri Foto
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/galeri-video*') ? 'active' : '' }}" href="/dashboard/galeri-video">
                <span data-feather="file-text"></span>
                Galeri Video
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/direktori-keanggotaan*') ? 'active' : '' }}" href="/dashboard/direktori-keanggotaan">
                <span data-feather="file-text"></span>
                Direktori Keanggotaan
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/arsip-files*') ? 'active' : '' }}" href="/dashboard/arsip-files">
                <span data-feather="file-text"></span>
                Arsip Files
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/arsip-administrasi*') ? 'active' : '' }}" href="/dashboard/arsip-administrasi">
                <span data-feather="file-text"></span>
                Arsip Administrasi
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/media-sosial*') ? 'active' : '' }}" href="/dashboard/media-sosial">
                <span data-feather="file-text"></span>
                Media Sosial
                </a>
            </li>
        </ul>

        @can('admin')
        <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
            <span>Administrator</span>
        </h6>
        <ul class="nav flex-column">
            <li class="nav-item">
                <a class="nav-link {{ Request::is('dashboard/categories*') ? 'active' : '' }}" href="/dashboard/categories">
                    <span data-feather="grid"></span>
                    Post Categories
                </a>
            </li>
        </ul>
        @endcan
    </div>
</nav>