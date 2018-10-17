<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Jobgroup extends Model
{
    protected $table = 'jobgroups';
    protected $primaryKey='id';

  
    protected $fillable = [
          
           'jobgroupname',
           'jobgroupdesc',
           'level'
           ];


    public function job()
{
    return $this->hasMany(job::class);
}
}
