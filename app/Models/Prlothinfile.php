<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prlothinfile extends Model
{
    protected $primaryKey='id';

  protected $table='prlothinfiles';
    protected $fillable = ['id','othfileref','othfiledesc','employee_id','othdate','stopdate','othinc_id',
    'othincamount','subamount','quantity','amount_term','percent','transaction_type','payroll_id',
    'approved','verified','accountcode','attachement','approver','verifyer','recurrent','status',
    'madeat','creator_id','updated_at','created_at'];
}
