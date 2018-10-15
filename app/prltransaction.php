<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class prltransaction extends Model
{
    protected $table = 'prltransactions';
    protected $fillable = ['basicpay','grosspay','netpay','other_income','other_deduction',
                           'ss_pay','taxable_income','tax','total_deduction','health','hdmf',
                           'deduct_tax','deduct_hdmf','deduct_ss','deduct_health','sstype_id',
                           'pay_period','loan_deduction','other_income_taxable','other_income_nontaxable'];
    protected $primaryKey='id';


   

}
