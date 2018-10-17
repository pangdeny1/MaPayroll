<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prlothintransaction extends Model
{
    protected $table = 'prlothintransactions';
    protected $fillable = ['payroll_id','employee_id','otherinc_id','amount'];
    protected $primaryKey='id';
}
