<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class Farmers extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            "id" => $this->id,
            "full_name" => $this->full_name,
            "phone" => $this->phone,
            "avatar" => \Avatar::create($this->full_name)->toBase64(),
        ];
    }
}
