<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Block extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded = [];

    public function address()
    {
        return $this->morphOne(Address::class, "addressable");
    }


    public function addresses()
    {
        return $this->morphMany(Address::class, "addressable");
    }
}
