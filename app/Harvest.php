<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Harvest extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded  = [];

    protected $casts    = [
        "expected_date" => "date"
    ];
    
    protected $appends  = [
        "volume"
    ];

    public function product()
    {
        return $this->belongsTo(Product::class);
    }

    public function farmer()
    {
        return $this->belongsTo(Farmer::class);
    }

    public function farm()
    {
        return $this->belongsTo(Farm::class);
    }

    public function batch()
    {
        return $this->belongsTo(Batch::class);
    }

    public function purchases()
    {
        return $this->hasMany(Purchase::class);
    }

    public function householdBlock()
    {
        return $this->belongsTo(HouseholdBlock::class);
    }

    public function isPurchased(Batch $batch)
    {
        return $this->purchases()->where("batch_id", $batch->id)->exists();
    }

    public function getVolumeAttribute()
    {
        return sprintf(
            "%s %s",
            $this->attributes["expected_amount"],
            title_case(str_plural($this->attributes["amount_unit"], $this->attributes["expected_amount"]))
        );
    }
}
