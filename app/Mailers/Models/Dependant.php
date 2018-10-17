<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Dependant extends Model
{
    protected $table = 'dependants';
    protected $fillable = ['fullname','employeeid','deptypeid','sex','email','dob','phone','nextofkeen'];
    protected $primaryKey='id';
}
