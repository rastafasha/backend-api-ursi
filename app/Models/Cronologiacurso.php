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
     /*
    |--------------------------------------------------------------------------
    | search
    |--------------------------------------------------------------------------
    */
    public static function search($query = ''){
        if(!$query){
            return self::all();
        }
        return self::where('title', 'like', "%$query%")
        ->orWhere('description', 'like', "%$query%")
        ->orWhere('fecha', 'like', "%$query%")
        ->orWhere('modo', 'like', "%$query%")
        ->orWhere('costo', 'like', "%$query%")
        ->get();
    }

}
