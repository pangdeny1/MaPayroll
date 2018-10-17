<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class otherincometable extends Model
{
   
   protected $primaryKey='othincid';
   protected $table = 'prlothinctable';
   protected $fillable = ['othincid','othincdesc','taxable','appearoninvoice','accountcode','active'];
}
