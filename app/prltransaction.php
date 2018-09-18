<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class prltransaction extends Model
{
    protected $table = 'prltransactions';
    protected $fillable = ['basicpay','grosspay','netpay','other_income','other_deduction','ss_pay','taxable_income','tax','total_deduction','health','hdmf'];
    protected $primaryKey='id';
}
