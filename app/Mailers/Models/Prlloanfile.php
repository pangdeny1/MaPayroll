<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prlloanfile extends Model
{
    protected $primaryKey='id';

  protected $table='prlloanfiles';
    protected $fillable = ['id','loanfiledesc','employee_id','loandate','loantype_id','loanamount',
    'amortization','amount_term','transaction_type','percent','startdeduction','ytddeduction',
    'loanbalance','accountcode','status','payroll_id','updated_at','created_at'];

    public function loantype()
    {
    	return $this->belongsTo("App\Models\Prlloantype");
    }

    public function employee()
    {
    	return $this->belongsTo("App\Employee");
    }
}
