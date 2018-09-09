<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SocialSecurityScheme extends Model
{
    
   protected $primaryKey='id';
   protected $table = 'prlsstable';
   protected $fillable = ['bracket','rangefrom','rangeto','pcode','penname','employerss','employerec','employeess','total'];
}
