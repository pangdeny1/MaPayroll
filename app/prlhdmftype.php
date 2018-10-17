<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class prlhdmftype extends Model
{
     protected $primaryKey='id';
   protected $table = 'prlhdmftypes';
   protected $fillable = ['id','hdmfname','description','bracket','rangefrom','rangeto','dedtypeer','employershare','dedtypeee',
                          'employeeshare','total','created_at','updated_at'];
}
