<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prlsstransaction extends Model
{
    protected $table = 'prlsstransactions';
    protected $fillable = ['payroll_id','employee_id','employeess','employerss','total','sstype_id'];
    protected $primaryKey='id';
}
