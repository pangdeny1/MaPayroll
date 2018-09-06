<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Farmer extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded = [];

    protected $appends = [
        "full_name"
    ];

    public function farms()
    {
        return $this->hasMany(Farm::class);
    }

    public function harvests()
    {
        return $this->hasMany(Harvest::class);
    }

    public function householdBlocks()
    {
        return $this->hasManyThrough(HouseholdBlock::class, Farm::class);
    }

    public function blocks()
    {
        return $this->hasManyThrough(Block::class, Farm::class);
    }

    public function sales()
    {
        return $this->hasMany(Purchase::class, "farmer_id");
    }

    public function address()
    {
        return $this->morphOne(Address::class, "addressable");
    }

    public function addresses()
    {
        return $this->morphMany(Address::class, "addressable");
    }

    public function batches()
    {
        return $this->belongsToMany(Batch::class, "farmer_batch")->withTimestamps();
    }

    public function groups()
    {
        return $this->belongsToMany(Group::class, "group_member")->withTimestamps();
    }


    

    public function findHarvestByBatchId($id)
    {
        return $this->harvests()->where("batch_id", $id)->first();
    }

    public function hasHarvested(Batch $batch)
    {
        return $this->harvests()->where("batch_id", $batch->id)->exists();
    }

    public function getFullNameAttribute()
    {
        return $this->attributes["first_name"] ." ". $this->attributes["last_name"];
    }
}
