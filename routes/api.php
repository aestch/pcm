<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

Route::apiResource('/identitas-pcm',  App\Http\Controllers\Api\IdentitaspcmController::class);
Route::apiResource('/galeri-foto',  App\Http\Controllers\Api\GaleriFotoController::class);
Route::apiResource('/direktori-keanggotaan',  App\Http\Controllers\Api\DirektoriKeanggotaanController::class);
Route::apiResource('/artikel',  App\Http\Controllers\Api\ArtikelController::class);
Route::apiResource('/agenda',  App\Http\Controllers\Api\AgendaController::class);
Route::apiResource('/amal-usaha',  App\Http\Controllers\Api\AmalusahaController::class);
Route::apiResource('/arsip-files',  App\Http\Controllers\Api\ArsipfileController::class);
Route::apiResource('/carousel',  App\Http\Controllers\Api\CarouselController::class);