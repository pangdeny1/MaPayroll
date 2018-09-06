<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Farm extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded = [];

    protected $appends = ["name"];

    public function crops()
    {
        return $this->belongsToMany(Product::class, "farm_product")->withTimestamps();
    }

    public function householdBlocks()
    {
        return $this->hasMany(HouseholdBlock::class);
    }

    public function block()
    {
        return $this->belongsTo(Block::class);
    }

    public function address()
    {
        return $this->morphOne(Address::class, "addressable");
    }

    public function getNameAttribute()
    {
        return sprintf(
            "%s %s, %s Farm",
            $this->attributes["size"],
            str_plural(title_case($this->attributes["size_unit"]), $this->attributes["size"]),
            optional($this->address)->state
        );
    }

    public function getAcreageAttribute()
    {
        return sprintf(
            "%s %s",
            $this->attributes["size"],
            str_plural(title_case($this->attributes["size_unit"]), $this->attributes["size"])
        );
    }

    public function getLocationAttribute()
    {
        return sprintf(
            "%s, %s",
            optional($this->address)->state,
            optional($this->address)->country
        );
    }
}
