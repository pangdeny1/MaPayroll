<?php

namespace App\models;

use Illuminate\Database\Eloquent\Model;

use  App\Models;



class job extends Model
{
    protected $table = 'jobs';
    protected $primaryKey='id';

  
    protected $fillable = [
          
           'jobname',
           'jobdesc',
           'jobgroup'
           ];


    public function employee()
{
    return $this->hasMany(Employee::class);
}

public function jobgroup()
{
    return $this->belongsTo(Jobgroup::class);
}


}
