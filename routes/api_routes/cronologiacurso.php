<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CronologiacursoController;


Route::get('/cronologiacursos', [CronologiacursoController::class, 'index'])
    ->name('cronologiacurso.index');

Route::post('/cronologiacurso/store', [CronologiacursoController::class, 'cronologiacursoStore'])
    ->name('cronologiacurso.store');

Route::get('/cronologiacurso/show/{cronologiacurso}', [CronologiacursoController::class, 'cronologiacursoShow'])
    ->name('cronologiacurso.show');

Route::put('/cronologiacurso/update/{cronologiacurso}', [CronologiacursoController::class, 'cronologiacursoUpdate'])
    ->name('cronologiacurso.update');

Route::delete('/cronologiacurso/destroy/{cronologiacurso}', [CronologiacursoController::class, 'destroy'])
    ->name('cronologiacurso.destroy');

Route::post('/cronologiacurso/upload', [CronologiacursoController::class, 'upload'])
    ->name('cronologiacurso.upload');

Route::delete('/cronologiacurso/delete-foto/{id}', [CronologiacursoController::class, 'deleteFotoCronologiacurso'])
    ->name('cronologiacurso.deleteFotoCronologiacurso');

Route::get('/cronologiacurso/search/', [CronologiacursoController::class, 'search'])
    ->name('cronologiacurso.search');
