<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prltaxtablerate extends Model
{
	protected $primaryKey='id';
    protected $table = 'prltaxtablerate';
    protected $fillable = ['id','bracket','rangefrom','rangeto','fixtaxableamount',
                          'fixtax','percentofexcessamount','created_at','updated_at'];
    
    
}
