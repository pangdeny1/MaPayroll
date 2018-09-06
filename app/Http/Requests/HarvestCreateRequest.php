<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class HarvestCreateRequest extends FormRequest
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
            "expected_amount" => ["required"],
            "amount_unit" => ["required", Rule::in(["kg", "t"])],
            "description" => ["required"],
            "household_block_id" => ["required"],
            "batch_id" => ["required"],
            "expected_date" => ["required", "date", "after:today"],
        ];
    }
}
