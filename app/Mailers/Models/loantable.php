<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class loantable extends Model
{
    protected $primaryKey='loantableid';
   protected $table = 'prlloantable';
   protected $fillable = ['loantableid','loantabledesc','accountcode'];
}
