<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prlsstype extends Model
{
    protected $primaryKey='id';
   protected $table = 'prlsstypes';
   protected $fillable = ['bracket','rangefrom','rangeto','pencode','penname','employerss','employerec','employeess','total'];
}
