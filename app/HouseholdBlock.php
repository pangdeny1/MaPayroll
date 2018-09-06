<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class HouseholdBlock extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded = [];

    public function farm()
    {
        return $this->belongsTo(Farm::class);
    }
  
    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function harvests()
    {
        return $this->hasMany(Harvest::class);
    }

    public function batches()
    {
        return $this->hasMany(Batch::class);
    }
}
