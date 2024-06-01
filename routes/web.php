<?php

use App\Http\Controllers\KomentarberitaController;
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
use App\Models\Artikel;
use App\Models\Portalberita;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Http\Middleware\RoleMiddleware;
use App\Models\Agenda;
use App\Models\Amalusaha;
use App\Models\Direktorikeanggotaan;
use App\Models\Kajian;
use App\Models\Komentarberita;
use App\Models\Mediasosial;
use App\Models\Ortom;
use App\Models\Saldo;
use App\Models\UangKas;
use Illuminate\Auth\Middleware\Authenticate;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

Route::get('/', function () {
    return view('home');
});

Route::get('/sejarah', [IdentitaspcmController::class, 'sejarah']);

Route::get('/kata-sambutan', [IdentitaspcmController::class, 'katasambutan']);

Route::get('/visi-dan-misi', [IdentitaspcmController::class, 'visimisi']);

Route::get('/struktur-pimpinan', function(){
    return view('strukturpimpinan');
});

Route::get('/pimpinan-ranting-muhammadiyah', function(){
    return view('pimpinanrantingmuhammadiyah');
});

Route::get('/pimpinan-cabang-aisyiyah', function(){
    return view('pimpinancabangaisyiyah');
});

Route::get('/direktori-keanggotaan', function(){
    return view('direktorikeanggotaan');
});

Route::get('/direktori-laporan-keuangan', function(){
    return view('direktorilaporankeuangan');
});

Route::get('/direktori-arsip-administrasi', function(){
    return view('direktoriarsipadministrasi');
});

// Route::get('/galeri-foto', function(){
//     return view('galerifoto');
// });
Route::get('/galeri-foto', [GaleriFotoController::class, 'foto']);
Route::get('/galeri-video', [GalerivideoController::class, 'video']);

// Route::get('/galeri-video', function(){
//     return view('galerivideo');
// });

Route::get('/bidang-aqidah', function(){
    return view('bidangaqidah');
});

Route::get('/bidang-ibadah', function(){
    return view('bidangibadah');
});

Route::get('/bidang-muamallah', function(){
    return view('bidangmuamallah');
});

Route::get('/tajuk', function(){
    return view('tajuk');
});

Route::get('/opini', function(){
    return view('opini');
});
Route::get('/berita', [PortalberitaController::class, 'berita']);
Route::get('/berita-persyarikatan', function(){
    return view('beritapersyarikatan');
});

Route::get('/berita-nasional', function(){
    return view('beritanasional');
});

Route::get('/berita-mancanegara', function(){
    return view('beritamancanegara');
});

Route::get('/pengumuman', function(){
    return view('pengumuman');
});

Route::get('/agenda', function(){
    return view('agenda');
});

Route::get('/download-file', function(){
    return view('downloadfile');
});

Route::get('/login', [LoginController::class, 'index'])->name('login');
Route::post('/login', [LoginController::class, 'authenticate']);
Route::post('/logout', [LoginController::class, 'logout']);

Route::get('/register', [RegisterController::class, 'index'])->middleware('guest');
Route::post('/register', [RegisterController::class, 'store']);

// Route::get('/dashboard', function(){
//     return view('dashboard.index');
// })->middleware('auth');
Route::get('/dashboard', function(){
    // Ambil total_kas dari model Saldo
    $total_kas = Saldo::sum('total_saldo'); 
    $total_anggota = Direktorikeanggotaan::count();
    $total_berita = Portalberita::count();
    $total_artikel = Artikel::count();

    $user = Auth::user();
    $defaultPassword = '123456';
    $isDefaultPassword = Hash::check($defaultPassword, $user->password);
    return view('dashboard.index', compact('total_kas', 'total_anggota', 'total_berita', 'total_artikel', 'isDefaultPassword'));
})->middleware(['auth', 'role', 'no_cache']);

Route::resource('/dashboard/pengguna-login', PenggunaLoginController::class)->middleware(['auth', 'no_cache']);
Route::resource('/dashboard/identitas-pcm', IdentitaspcmController::class)->middleware('auth');
Route::resource('/dashboard/galeri-foto', GaleriFotoController::class)->middleware('auth');
Route::resource('/dashboard/galeri-video', GalerivideoController::class)->middleware('auth');
Route::resource('/dashboard/direktori-keanggotaan', DirektorikeanggotaanController::class)->middleware('auth');
Route::resource('/dashboard/arsip-files', ArsipfileController::class)->middleware('auth');
Route::resource('/dashboard/arsip-administrasi', ArsipadministrasiController::class)->middleware('auth');
Route::resource('/dashboard/media-sosial', MediasosialController::class)->middleware('auth');
Route::resource('/dashboard/amal-usaha', AmalusahaController::class)->middleware('auth');
Route::resource('/dashboard/portal-berita', PortalberitaController::class)->middleware('auth');
Route::post('/dashboard/portal-berita/{id}/comment', [PortalberitaController::class, 'comment']);
Route::resource('/dashboard/artikel', ArtikelController::class)->middleware('auth');
Route::post('/dashboard/artikel/{id}/comment', [ArtikelController::class, 'comment']);
Route::resource('/dashboard/agenda', AgendaController::class)->middleware('auth');
Route::resource('/dashboard/pengumuman', PengumumanController::class)->middleware('auth');
Route::resource('/dashboard/kajian', KajianController::class)->middleware('auth');
Route::resource('/dashboard/ortom', OrtomController::class)->middleware('auth');
Route::resource('/dashboard/kas', UangKasController::class)->middleware('auth');

// Route::resource('/dashboard/{id}/change-password', ChangePasswordController::class)->middleware('auth');
Route::middleware('auth')->group(function() {
    Route::get('/dashboard/{id}/change-password', [ChangePasswordController::class, 'edit']);
    Route::put('/dashboard/{id}/change-password', [ChangePasswordController::class, 'update'])->name('change-password.update');
});