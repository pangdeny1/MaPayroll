<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Salary extends Model
{

    protected $primaryKey='id';

  protected $table='salaries';
    protected $fillable = [
          
          'employeeid','salaryfrom','salaryto','changedby','changedamount','percentage','payrollid','datechanged'
           ];

}
