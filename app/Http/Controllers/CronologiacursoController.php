<?php

namespace App\Http\Controllers;

use App\Models\Cronologiacurso;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Http\UploadedFile;
use Illuminate\Support\Str;

class CronologiacursoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $cronologiacursos = Cronologiacurso::get();

        return response()->json([
            'code' => 200,
            'status' => 'List Cronologiacursos',
            'cronologiacursos' => $cronologiacursos,
        ], 200);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function cronologiacursoStore(Request $request)
    {

        return Cronologiacurso::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function cronologiacursoShow(Cronologiacurso $cronologiacurso)
    {

        if (!$cronologiacurso) {
            return response()->json([
                'message' => 'cronologiacurso not found.'
            ], 404);
        }

        return response()->json([
            'code' => 200,
            'status' => 'success',
            'cronologiacurso' => $cronologiacurso,
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function cronologiacursoUpdate(Request $request, $id)
    {
        $cronologiacurso = Cronologiacurso::findOrfail($id);
        $cronologiacurso->modo = $request->modo;
        $cronologiacurso->title = $request->title;
        $cronologiacurso->description = $request->description;
        $cronologiacurso->hora = $request->hora;
        $cronologiacurso->clases = $request->clases;
        $cronologiacurso->proyecto = $request->proyecto;
        $cronologiacurso->duracion = $request->duracion;
        $cronologiacurso->costo = $request->costo;
        // $cronologiacurso->image = $request->image;
        if($request->image){
            $cronologiacurso->image = $request->image;
        }
        $cronologiacurso->update();
        return $cronologiacurso;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id, Request $request)
    {

        $cronologiacurso =  Cronologiacurso::where('id', $id)->first();

        if(!empty($cronologiacurso)){

             // borrar
             $cronologiacurso->delete();
             // devolver respuesta
             $data = [
                 'code' => 200,
                 'status' => 'success',
                 'cronologiacurso' => $cronologiacurso
             ];
         }else{
             $data = [
                 'code' => 404,
                 'status' => 'error',
                 'message' => 'el cronologiacurso no existe'
             ];
         }

         return response()->json($data, $data['code']);
    }


    /**
     * @param UploadedFile $file
     * @return string
     */
    protected function generateFileName(UploadedFile $file): string {
        $extension = $file->getClientOriginalExtension();
        $fullName = $file->getClientOriginalName();
        $pathFileName = trim(pathinfo($fullName, PATHINFO_FILENAME));
        $secureMaxName = substr(Str::slug($pathFileName), 0, 90);
        return sprintf('%s-%s.%s', $secureMaxName, now()->timestamp, $extension);
    }




    public function upload(Request $request)
     {
         // recoger la imagen de la peticion
         $image = $request->file('file0');
         // validar la imagen
         $validate = \Validator::make($request->all(),[
             'file0' => 'required|image|mimes:jpg,jpeg,png,gif'
         ]);
         //guardar la imagen en un disco
         if(!$image || $validate->fails()){
             $data = [
                 'code' => 400,
                 'status' => 'error',
                 'message' => 'Error al subir la imagen'
             ];
         }else{
            $extension = $image->getClientOriginalExtension();
            $image_name = $image->getClientOriginalName();
            $pathFileName = trim(pathinfo($image_name, PATHINFO_FILENAME));
            $secureMaxName = substr(Str::slug($image_name), 0, 90);
            $image_name = now().$secureMaxName.'.'.$extension;

             \Storage::disk('cronologiacursos')->put($image_name, \File::get($image));

             $data = [
                 'code' => 200,
                 'status' => 'success',
                 'image' => $image_name
             ];

         }

         return response()->json($data, $data['code']);// devuelve un objeto json
     }

     public function getImage($filename)
     {

         //comprobar si existe la imagen
         $isset = \Storage::disk('cronologiacursos')->exists($filename);
         if ($isset) {
             $file = \Storage::disk('cronologiacursos')->get($filename);
             return new Response($file, 200);
         } else {
             $data = array(
                 'status' => 'error',
                 'code' => 404,
                 'mesaje' => 'Imagen no existe',
             );

             return response()->json($data, $data['code']);
         }

     }

     public function deleteFotoCronologiacurso($id)
     {
         $cronologiacurso = Cronologiacurso::findOrFail($id);
         \Storage::delete('cronologiacursos/' . $cronologiacurso->image);
         $cronologiacurso->image = '';
         $cronologiacurso->save();
         return response()->json([
             'data' => $post,
             'msg' => [
                 'summary' => 'Archivo eliminado',
                 'detail' => '',
                 'code' => ''
             ]
         ]);
     }

     public function search(Request $request){

        return Cronologiacurso::search($request->buscar);

    }
}
