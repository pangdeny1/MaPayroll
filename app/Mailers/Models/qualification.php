<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class qualification extends Model
{
    protected $primaryKey='id';

    protected $table='qualifications';
    protected $fillable = [
          
           'qualificationname',
           'updated_at'
           ];
}
