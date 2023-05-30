<?php

namespace App\Http\Requests;

use Illuminate\Validation\Rule;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Contracts\Validation\Validator;
use Illuminate\Http\Exceptions\HttpResponseException;

class PaymentStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [

            'email' => 'required|string|min:3|max:150',
            'monto' => 'required|string|min:3|max:150',
            'name' => 'required',
            'nombre' => 'required|string|min:3|max:150',
            'referencia' => 'required|string|min:3|max:150',
            'user_id' => [
                'required',
                Rule::exists('users', 'id')
            ],
            'curso_id' => [
                'required',
                Rule::exists('cursos', 'id')
            ],
        ];
    }

    public function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(response()->json([
            'success'   => false,
            'message'   => 'Validation errors',
            'data'      => $validator->errors()

        ],  422));
    }

    // public function messages()
    // {
    //     return [
    //         'name.required' => 'Nombre es requerido',
    //     ];
    // }
}
