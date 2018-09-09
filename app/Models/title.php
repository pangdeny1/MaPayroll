<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class title extends Model
{
    protected $primaryKey='id';

  protected $table='titles';
  protected $fillable = [
          
           'titlename',
           
           ];
  protected $dates = [
        'deleted_at'
    ];
}
