<?php

namespace App;

use PragmaRX\Countries\Package\Countries;

class Country
{
    public static function getByName($name)
    {
       return Countries::where('name.common', $name)->first()->hydrateStates()->states;
    }
}