<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class prlhealthtype extends Model
{
   protected $primaryKey='id';
   protected $table = 'prlhealthtypes';
   protected $fillable = ['id','rangeto','healthname','description','bracket','rangefrom','salarycredit','employerph','employerec','employeeph','total','created_at','updated_at'];
}
