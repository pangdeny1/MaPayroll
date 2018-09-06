<?php
namespace App;

use PragmaRX\Countries\Package\Countries;

class State
{
    public static function getCountryName($name)
    {
        return Countries::where('name.common', $name)->first()->hydrateStates()->states;
    }
}