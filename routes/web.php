<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;

Route::get('/', function () {
    return view('dashboard');
});
Route::post('/login-proses', [LoginController ::class,'login_proses'])->name('login-proses');

Route::get('/sejarah', function () {
    return view('organisasi.sejarah');
});

Route::get('/kata-sambutan', function () {
    return view('organisasi.katasambutan');
});

Route::get('/visi-misi', function () {
    return view('organisasi.visimisi');
});

Route::get('/struktur-pimpinan', function () {
    return view('organisasi.strukturpimpinan');
});

Route::get('/pimpinan-ranting-muhammadiyah', function () {
    return view('ortom.pimpinanranting');
});

Route::get('/pimpinan-cabang-aisyiah', function () {
    return view('ortom.pimpinancabang');
});


Route::get('/direktori-laporan-keuangan', function () {
    return view('direktori.laporankeuangan');
});

Route::get('/direktori-arsip-administrasi', function () {
    return view('direktori.arsipadministrasi');
});

Route::get('/galeri-foto', function () {
    return view('galeri.foto');
});

Route::get('/galeri-video', function () {
    return view('galeri.video');
});

Route::get('/bidang-aqidah', function () {
    return view('kajian.bidangaqidah');
});

Route::get('/bidang-ibadah', function () {
    return view('kajian.bidangibadah');
});

Route::get('/bidang-muamallah', function () {
    return view('kajian.bidangmuamallah');
});

Route::get('/tajuk', function () {
    return view('artikel.tajuk');
});

Route::get('/opini', function () {
    return view('artikel.opini');
});

Route::get('/berita-persyarikatan', function () {
    return view('berita.persyarikatan');
});

Route::get('/berita-nasional', function () {
    return view('berita.nasional');
});

Route::get('/berita-mancanegara', function () {
    return view('berita.mancanegara');
});

Route::get('/pengumuman', function () {
    return view('berita.pengumuman');
});

Route::get('/agenda', function () {
    return view('berita.agenda');
});

Route::get('/download-file', function () {
    return view('download.downloadfile');
});

Route::get('/admin', function () {
    return view('index');
});

Route::get('/login', function () {
    return view('auth.login');
});


Route::resource('/admin/users', \App\Http\Controllers\UsersController::class);
Route::resource('/admin/keanggotaan', \App\Http\Controllers\UsersController::class);
Route::resource('/direktori-keanggotaan', \App\Http\Controllers\KeanggotaanController::class);