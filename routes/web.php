<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\KriteriaController;
use App\Http\Controllers\AlternatifController;
use App\Http\Controllers\PerhitunganController;

//login
Route::get('/',[HomeController::class,'home']) -> name('home');
Route::get('/login',[LoginController::class,'index']) -> name('login');

//proses login
Route::post('/login-proses',[LoginController::class, 'login_proses']) -> name('login-proses');
//register
Route::get('/register',[LoginController::class, 'register']) -> name('register');
Route::post('/register-proses', [LoginController::class, 'register_proses']) -> name('register-proses');
Route::get('/dashboard',[HomeController::class, 'index']) -> name('dashboard');
//route group
Route::group(['prefix' => 'admin', 'middleware' => ['auth'], 'as' => 'admin.'], function(){
//Kriteria
Route::get('/kriteria', [KriteriaController::class, 'index'])->name('kriteria');
Route::get('/kriteria/create', [KriteriaController::class, 'create'])->name('kriteria.create');
Route::post('/kriteria', [KriteriaController::class, 'store'])->name('kriteria.store');
Route::get('/kriteria/{id}/edit', [KriteriaController::class, 'edit'])->name('kriteria.edit');
Route::put('/kriteria/{id}', [KriteriaController::class, 'update'])->name('kriteria.update');
Route::delete('/kriteria/{id}', [KriteriaController::class, 'destroy'])->name('kriteria.destroy');

// Alternatif
Route::get('/alternatif', [AlternatifController::class, 'index'])->name('alternatif.index');
Route::get('/alternatif/create', [AlternatifController::class, 'create'])->name('alternatif.create');
Route::post('/alternatif', [AlternatifController::class, 'store'])->name('alternatif.store');
Route::get('/alternatif/{id}/edit', [AlternatifController::class, 'edit'])->name('alternatif.edit');
Route::put('/alternatif/{id}', [AlternatifController::class, 'update'])->name('alternatif.update');
Route::delete('/alternatif/{id}', [AlternatifController::class, 'destroy'])->name('alternatif.destroy');

//SPK WP
Route::get('/perhitungan', [PerhitunganController::class, 'perhitungan'])->name('perhitungan');
Route::get('/vektor', [PerhitunganController::class, 'vektor'])->name('vektor');

// Perangkingan
Route::get('/perangkingan' , [PerhitunganController::class, 'perangkingan'])->name('perangkingan');
});


Route::get('/dashboard',[HomeController::class, 'index']) -> name('dashboard');
Route::get('/logout', [LoginController::class, 'logout']) -> name('logout');
