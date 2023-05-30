<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HerramientaController;


Route::get('/herramientas', [HerramientaController::class, 'index'])
    ->name('herramienta.index');

Route::post('/herramienta/store', [HerramientaController::class, 'store'])
    ->name('herramienta.store');

Route::get('/herramienta/show/{herramienta}', [HerramientaController::class, 'show'])
    ->name('herramienta.show');


Route::put('/herramienta/update/{herramienta}', [HerramientaController::class, 'update'])
    ->name('herramienta.update');

Route::delete('/herramienta/destroy/{herramienta}', [HerramientaController::class, 'destroy'])
    ->name('herramienta.destroy');

Route::put('/herramienta/update/status/{herramienta:id}', [HerramientaController::class, 'updateStatus'])
    ->name('herramienta.status');

Route::post('/herramienta/upload', [HerramientaController::class, 'upload'])
    ->name('herramienta.upload');

Route::delete('/herramienta/delete-foto/{id}', [HerramientaController::class, 'deleteFoto'])
    ->name('herramienta.deleteFoto');
