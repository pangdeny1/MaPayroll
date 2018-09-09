<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class otherdeduction extends Model
{
    

   protected $primaryKey='counterindex';
   protected $table = 'prlothdedfile';
   protected $fillable = ['othfileref','othfiledesc','employeeid','othdate','stopdate',
   'othincid','othincamount','subamount','quantity','amount_term','percent','verified',
    'accountcode', 'attachement', 'approver','verified','accountcode','attachement',
    'approver','payrollid','verifyer','recurrent','status','madeat','transaction_type'];

}
