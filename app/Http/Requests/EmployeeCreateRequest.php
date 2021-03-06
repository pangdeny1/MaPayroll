<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class EmployeeCreateRequest extends FormRequest
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
            "phone" => "required|phone:TZ",
            "email" => "nullable|email",
            "gender" => ["required", Rule::in(["male","female"])],
            "active" => ["required", Rule::in(["yes","no"])],
            "pay_type" => "required",
            "street" => "required",
            "country" => "required",
            "payperiod"  =>"required",
            "group_id" => "required",

//            "size" => "required|numeric",
//            "size_unit" => "required",
        ];
    }
}
