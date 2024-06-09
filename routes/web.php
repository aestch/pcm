<?php

use App\Http\Controllers\KomentarberitaController;
use App\Http\Controllers\CarouselController;
use App\Http\Controllers\PengajuanController;
use App\Http\Controllers\UangKasController;
use App\Http\Controllers\OrtomController;
use App\Http\Controllers\KajianController;
use App\Http\Controllers\AgendaController;
use App\Http\Controllers\PengumumanController;
use App\Http\Controllers\PortalberitaController;
use App\Http\Controllers\AmalusahaController;
use App\Http\Controllers\MediasosialController;
use App\Http\Controllers\ArsipfileController;
use App\Http\Controllers\ArsipadministrasiController;
use App\Http\Controllers\ArtikelController;
use App\Http\Controllers\ChangePasswordController;
use App\Http\Controllers\GaleriFotoController;
use App\Http\Controllers\GalerivideoController;
use App\Http\Controllers\PenggunaLoginController;
use App\Http\Controllers\DirektorikeanggotaanController;
use App\Http\Controllers\IdentitaspcmController;
use App\Models\Arsipadministrasi;
use App\Models\Arsipfile;
use App\Models\Artikel;
use App\Models\Pengumuman;
use App\Models\Portalberita;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Controllers\SettingController;
use App\Http\Middleware\RoleMiddleware;
use App\Models\Agenda;
use App\Models\Amalusaha;
use App\Models\Carousel;
use App\Models\Direktorikeanggotaan;
use App\Models\Kajian;
use App\Models\Komentarberita;
use App\Models\Mediasosial;
use App\Models\Ortom;
use App\Models\Saldo;
use App\Models\Setting;
use App\Models\UangKas;
use Illuminate\Auth\Middleware\Authenticate;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

Route::get('/', function () {
    // Ambil total_kas dari model Saldo
    $total_kas = Saldo::sum('total_saldo'); 
    $total_anggota = Direktorikeanggotaan::count();
    $total_berita = Portalberita::count();
    $total_artikel = Artikel::count();
    $carousels = Carousel::all();
    $amalusaha = Amalusaha::first();
    
    $pengaturan = Setting::first();
    $pengumuman = Pengumuman::latest()->paginate(4);
    $agenda = Agenda::latest()->paginate(4);
    $mediasosial = Mediasosial::all();

    return view('home', compact('total_kas', 'total_anggota', 'total_berita', 'total_artikel', 'pengaturan', 'carousels', 'amalusaha', 'pengumuman', 'agenda', 'mediasosial'));
});
// Route::get('/', function () {
//     return view('home',[
//         'carousels' => Carousel::all(),
//         'pengaturan'=> Setting::first(),
//         'amalusaha' => Amalusaha::first()
//     ]);
// });

Route::get('/sejarah', [IdentitaspcmController::class, 'sejarah']);

Route::get('/kata-sambutan', [IdentitaspcmController::class, 'katasambutan']);

Route::get('/visi-dan-misi', [IdentitaspcmController::class, 'visimisi']);

Route::get('/struktur-pimpinan', function(){
    return view('strukturpimpinan',[
        'pengaturan'=> Setting::first(),
        'direktorikeanggotaans' => Direktorikeanggotaan::where('status', 'Disetujui')->paginate(10),
        'amalusaha' => Amalusaha::first()
    ]);
});

Route::get('/ortom', function(){
    return view('ortom', [
        'pengaturan'=> Setting::first(),
        'ortoms' => Ortom::latest()->paginate(10),
        'amalusaha' => Amalusaha::first()
    ]);
});

Route::get('/direktori-keanggotaan', function(){
    return view('direktorikeanggotaan', [
        'pengaturan'=> Setting::first(),
        'direktorikeanggotaans' => Direktorikeanggotaan::where('status', 'Disetujui')->paginate(10),
        'amalusaha' => Amalusaha::first()
    ]);
});

Route::get('/direktori-keanggotaan/gabung', [DirektorikeanggotaanController::class, 'pengajuan']);
Route::post('/direktori-keanggotaan/gabung', [DirektorikeanggotaanController::class, 'kirim']);

Route::get('/direktori-arsip-administrasi', function(){
    return view('direktoriarsipadministrasi',[
        'pengaturan'=> Setting::first(),
        'arsipadministrasis' => Arsipadministrasi::latest()->paginate(10),
        'amalusaha' => Amalusaha::first()
    ]);
});

Route::get('/galeri-foto', [GaleriFotoController::class, 'foto']);
Route::get('/galeri-video', [GalerivideoController::class, 'video']);

Route::get('/bidang-aqidah', function(){
    return view('bidangaqidah');
});

Route::get('/bidang-ibadah', function(){
    return view('bidangibadah');
});

Route::get('/bidang-muamallah', function(){
    return view('bidangmuamallah');
});



// portal berita
Route::get('/berita', [PortalberitaController::class, 'berita']);
Route::get('/berita/{id}', [PortalberitaController::class, 'show_guest']);
Route::post('/berita/{id}', [PortalberitaController::class, 'comment_anonymous']);

// artikel
Route::get('/artikel', [ArtikelController::class, 'artikel']);
Route::get('/artikel/{id}', [ArtikelController::class, 'show_guest']);
Route::post('/artikel/{id}', [ArtikelController::class, 'comment_anonymous']);

// kajian
Route::get('/kajian', [KajianController::class, 'kajian']);
Route::get('/kajian/{id}', [KajianController::class, 'show_guest']);
Route::post('/kajian/{id}', [KajianController::class, 'comment_anonymous']);

Route::get('/pengumuman', function(){
    return view('pengumuman');
});

Route::get('/agenda', function(){
    return view('agenda');
});

Route::get('/download-file', function(){
    return view('downloadfile', [
        'arsipfiles' => Arsipfile::latest()->paginate(10),
        'pengaturan'=> Setting::first(),
        'amalusaha' => Amalusaha::first()
    ]);
});

Route::get('/login', [LoginController::class, 'index'])->name('login')->middleware('guest');
Route::post('/login', [LoginController::class, 'authenticate'])->middleware('guest');
Route::post('/logout', [LoginController::class, 'logout'])->middleware(['auth', 'no_cache']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

Route::get('/dashboard', function(){
    // Ambil total_kas dari model Saldo
    $total_kas = Saldo::sum('total_saldo'); 
    $total_anggota = Direktorikeanggotaan::count();
    $total_berita = Portalberita::count();
    $total_artikel = Artikel::count();
    
    $pengaturan = Setting::first();

    $user = Auth::user();
    $defaultPassword = '123456';
    $isDefaultPassword = Hash::check($defaultPassword, $user->password);
    return view('dashboard.index', compact('total_kas', 'total_anggota', 'total_berita', 'total_artikel', 'isDefaultPassword', 'pengaturan'));
})->middleware(['auth', 'role:1,2,3']);

Route::middleware(['auth'])->group(function() {
    Route::middleware(['role:1'])->group(function() {
        Route::resource('/dashboard/pengguna-login', PenggunaLoginController::class)->middleware('no_cache');
        Route::resource('/dashboard/identitas-pcm', IdentitaspcmController::class);
        Route::resource('/dashboard/galeri-foto', GaleriFotoController::class);
        Route::resource('/dashboard/galeri-video', GalerivideoController::class);
        Route::resource('/dashboard/media-sosial', MediasosialController::class);
        Route::resource('/dashboard/amal-usaha', AmalusahaController::class);
        Route::resource('/dashboard/portal-berita', PortalberitaController::class);
        Route::post('/dashboard/portal-berita/{id}/comment', [PortalberitaController::class, 'comment']);
        Route::resource('/dashboard/artikel', ArtikelController::class);
        Route::post('/dashboard/artikel/{id}/comment', [ArtikelController::class, 'comment']);
        Route::resource('/dashboard/agenda', AgendaController::class);
        Route::resource('/dashboard/pengumuman', PengumumanController::class);
        Route::resource('/dashboard/kajian', KajianController::class);
        Route::post('/dashboard/kajian/{id}/comment', [KajianController::class, 'comment']);
        Route::resource('/dashboard/ortom', OrtomController::class);
        Route::resource('/dashboard/pengaturan', SettingController::class);
        Route::resource('/dashboard/carousel', CarouselController::class);
    });

    Route::middleware(['role:3'])->group(function() {
        Route::resource('/dashboard/kas', UangKasController::class);
    });

    Route::middleware(['role:2'])->group(function() {
        Route::resource('/dashboard/direktori-keanggotaan', DirektorikeanggotaanController::class)->except('kirim');
        Route::resource('/dashboard/arsip-administrasi', ArsipadministrasiController::class);
        Route::resource('/dashboard/arsip-files', ArsipfileController::class);
    });

    Route::get('/dashboard/{id}/change-password', [ChangePasswordController::class, 'edit']);
    Route::put('/dashboard/{id}/change-password', [ChangePasswordController::class, 'update'])->name('change-password.update');
});

