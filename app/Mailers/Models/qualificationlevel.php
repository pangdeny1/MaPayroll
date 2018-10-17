<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class qualificationlevel extends Model
{
    protected $primaryKey='id';

    protected $table='qualificationlevels';
    protected $fillable = [
          
           'qlevelname','qleveldesc','created_at','updated_at'
           ];

}
