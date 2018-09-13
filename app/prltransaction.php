<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class prltransaction extends Model
{
    protected $table = 'prltransactions';
    protected $fillable = ['basicpay','grosspay','netpay'];
    protected $primaryKey='id';
}
