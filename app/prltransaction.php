<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class prltransaction extends Model
{
    protected $table = 'prltransactions';
    protected $fillable = ['basicpay','grosspay','netpay','other_income','other_deduction','ss_pay','taxable_amount','tax'];
    protected $primaryKey='id';
}
