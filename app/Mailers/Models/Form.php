<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Form extends Model
{
   
    protected $primaryKey='id';
    protected $table = 'forms';
    protected $fillable = ['filename'];
}
