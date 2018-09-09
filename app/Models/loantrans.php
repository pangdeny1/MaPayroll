<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class loantrans extends Model
{
    protected $primaryKey='loantableid';
   protected $table = 'counterindex';
   protected $fillable = ['counterindex','payrollid','employeeid','loantableid','amount','accountcode'];
}
