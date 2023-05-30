<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Cronologiacurso extends Model
{
    use HasFactory;
    /*
    |--------------------------------------------------------------------------
    | goblan variables
    |--------------------------------------------------------------------------
    */
    protected $fillable = [
        'modo',
        'title',
        'description',
        'fecha',
        'hora',
        'clases',
        'proyecto',
        'duracion',
        'costo',
        'image',
    ];
}
