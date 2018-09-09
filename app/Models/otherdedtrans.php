<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class otherdedtrans extends Model
{
   protected $primaryKey='counterindex';
   protected $table = 'prlotherdeductrans';
   protected $fillable = ['counterindex','payrollid','employeeid','otherincid','amount'];
}
