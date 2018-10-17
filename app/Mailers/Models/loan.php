<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class loan extends Model
{
   protected $primaryKey='loanfileid';
   protected $table = 'prlloanfile';
   protected $fillable = ['loanfileid','loanfiledesc','employeeid','loandate','loantableid',
   'loanamount','amortization','amount_term','transaction_type','percent','startdeduction',
   'ytddeduction','loanbalance','accountcode','payrollid','status'];
}
