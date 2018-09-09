<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

class Country extends Model
{
   protected $table = 'countries';

public function region()
{
return $this->hasMany('App\Models\Region');	
}
 
public function district()
{
	return $this->hasMany('App\Models\District');
}

}
