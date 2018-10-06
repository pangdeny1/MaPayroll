<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Prlothdedfile extends Model
{
    protected $primaryKey='id';

  protected $table='prlothdedfiles';
    protected $fillable = ['id','othfileref','othfiledesc','employee_id','othdate','stopdate','othded_id',
    'othdedamount','subamount','quantity','amount_term','percent','transaction_type','payroll_id',
    'approved','verified','accountcode','attachement','approver','verifyer','recurrent','status',
    'madeat','creator_id','updated_at','created_at'];
}
