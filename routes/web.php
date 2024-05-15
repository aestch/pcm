<?php

use App\Http\Controllers\ArsipfileController;
use App\Http\Controllers\ArsipadministrasiController;
use App\Http\Controllers\GaleriFotoController;
use App\Http\Controllers\GalerivideoController;
use App\Http\Controllers\PenggunaLoginController;
use App\Http\Controllers\DirektorikeanggotaanController;
use App\Http\Controllers\IdentitaspcmController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\RegisterController;
use App\Models\Direktorikeanggotaan;
use Illuminate\Auth\Middleware\Authenticate;

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

Route::get('/galeri-video', function(){
    return view('galerivideo');
});

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

Route::get('/dashboard', function(){
    return view('dashboard.index');
})->middleware('auth');

Route::resource('/dashboard/pengguna-login', PenggunaLoginController::class)->middleware('auth');
Route::resource('/dashboard/identitas-pcm', IdentitaspcmController::class)->middleware('auth');
Route::resource('/dashboard/galeri-foto', GaleriFotoController::class)->middleware('auth');
Route::resource('/dashboard/galeri-video', GalerivideoController::class)->middleware('auth');
Route::resource('/dashboard/direktori-keanggotaan', DirektorikeanggotaanController::class)->middleware('auth');
Route::resource('/dashboard/arsip-files', ArsipfileController::class)->middleware('auth');
Route::resource('/dashboard/arsip-administrasi', ArsipadministrasiController::class)->middleware('auth');