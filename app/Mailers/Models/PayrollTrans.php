<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PayrollTrans extends Model
{
     protected $primaryKey='counterindex';

  protected $table='prlpayrolltrans';
    protected $fillable = [
          'payrollid','employeeid','jobid','employmentid','stationid','isPension','pencode',
          'bankid','atmnumber','isHdmf','isTaxed','isGratuity','isHeslb','reghrs','absenthrs',
          'latehrs','periodrate','hourlyrate','basicpay','gratuity','heslb','othincome',
          'areaspay','absent','late','otpay','grosspay','taxableincome','loandeduction','sss',
          'hdmf','philhealth','tax','otherdeduction','fee','totaldeduction','netpay',
          'sssEmployer','sdl','wcf','fsmonth','fsyear','madeat'
           ];

}
