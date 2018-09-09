<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $table = 'departments';
    protected $fillable = ['departmentname','departmentlocation'];
    protected $primaryKey='id';
}
