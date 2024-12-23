<?php

use App\Http\Controllers\Api\RegisterController;
use App\Http\Controllers\Api\LoginController;
use App\Http\Controllers\SavedPortalBeritaController;
use Illuminate\Support\Facades\Route;

Route::post('/register', [App\Http\Controllers\Api\RegisterController::class, 'register']);
Route::post('/login', [App\Http\Controllers\Api\LoginController::class, 'login']);
Route::post('/logout', [App\Http\Controllers\Api\LoginController::class, 'logout']);
Route::apiResource('/identitas-pcm',  App\Http\Controllers\Api\IdentitaspcmController::class);
Route::apiResource('/galeri-foto',  App\Http\Controllers\Api\GaleriFotoController::class);
Route::apiResource('/direktori-keanggotaan',  App\Http\Controllers\Api\DirektoriKeanggotaanController::class);
Route::apiResource('/artikel',  App\Http\Controllers\Api\ArtikelController::class);
Route::apiResource('/agenda',  App\Http\Controllers\Api\AgendaController::class);
Route::apiResource('/amal-usaha',  App\Http\Controllers\Api\AmalusahaController::class);

Route::apiResource('/carousel',  App\Http\Controllers\Api\CarouselController::class);
Route::apiResource('/galeri-video',  App\Http\Controllers\Api\GalerivideoController::class);
Route::apiResource('/kajian',  App\Http\Controllers\Api\KajianController::class);
Route::apiResource('/media-sosial',  App\Http\Controllers\Api\MediasosialController::class);
Route::apiResource('/ortom',  App\Http\Controllers\Api\OrtomController::class);
Route::apiResource('/pengumuman',  App\Http\Controllers\Api\PengumumanController::class);
Route::apiResource('/portal-berita',  App\Http\Controllers\Api\PortalberitaController::class);
Route::apiResource('/setting',  App\Http\Controllers\Api\SettingController::class);

// Route API yang memerlukan autentikasi JWT
Route::middleware('auth:api')->group(function (){
    Route::get('/user', function (Request $request) {
        return auth()->user();
    });

    Route::apiResource('/arsip-files',  App\Http\Controllers\Api\ArsipfileController::class);
    Route::post('/saved-portalberita', [App\Http\Controllers\Api\SavedPortalBeritaController::class, 'store']);
    Route::get('/saved-portalberita', [App\Http\Controllers\Api\SavedPortalBeritaController::class, 'index']);
    Route::delete('/saved-portalberita/{portalberita_id}', [App\Http\Controllers\Api\SavedPortalBeritaController::class, 'destroy']);
});
