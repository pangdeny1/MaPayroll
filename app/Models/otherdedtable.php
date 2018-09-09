<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class otherdedtable extends Model
{
    
   protected $primaryKey='othincid';
   protected $table = 'prlothdedtable';
   protected $fillable = ['othincid','othincdesc','taxable','appearoninvoice','accountcode','active'];
}
