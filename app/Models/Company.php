<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    protected $primaryKey='id';
    protected $table = 'companies';
    protected $fillable = ['coycode','coyname','gstno','companynumber','regoffice1','telephone','fax','email'];
}
