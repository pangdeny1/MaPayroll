<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UserEditRequest extends FormRequest
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
            "first_name" => "required",
            "last_name" => "required",
            "email" => "required|email",
            "phone" => "required",
            "country" => "required",
            "gender" => ["required", Rule::in(["male","female"])],
            "birthday" => "required",
            "roles" => "required|array",
            "roles.*" => "required|exists:roles,name",
        ];
    }
}
