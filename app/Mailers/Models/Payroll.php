<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Payroll extends Model 
{
    protected $primaryKey='id';

  protected $table='prlpayrollperiod';
    protected $fillable = ['id','payrollid','payrolldesc','payperiodid','startdate','enddate',
                       'fsmonth','fsyear','financial_id','deductsss','deducthdmf','deductphilhealth',
                       'created_at','updated_at','iscurrent','payclosed'];

}
