<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class employeequalification extends Model
{
    protected $table = 'employeequalifications';
    protected $primaryKey='id';

  
    protected $fillable = [
          
           'qualificationid','employeeid','levelid','datefrom','dateto','institutionid'
           ];
}
