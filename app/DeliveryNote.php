<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class DeliveryNote extends Model
{
    protected $guarded = [];

    public static function number()
    {
        $today = \Carbon\Carbon::now();

        return sprintf("HV%02d-%02d-%02d", date("y"), $today->month, $today->day);
    }
}
