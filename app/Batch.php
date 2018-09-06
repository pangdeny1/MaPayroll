<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Batch extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded = [];

    protected $casts    = [
        "valid_from" => "date",
        "valid_till" => "date",
        "expected_arrival_time" => "date",
        "expected_harvest_time" => "date",
        "expected_delivery_time" => "date",
        "expected_departure_time" => "date",
    ];

    protected $with     = ["harvests.product"];

    public function harvests()
    {
        return $this->hasMany(Harvest::class);
    }

    public function purchases()
    {
        return $this->hasMany(Purchase::class);
    }

    public function product()
    {
        return $this->hasManyThrough(Product::class, Harvest::class);
    }

    public function block()
    {
        return $this->belongsTo(Block::class);
    }

    public function group()
    {
        return $this->belongsTo(Group::class);
    }

    public function farmers()
    {
        return $this->belongsToMany(Farmer::class, "farmer_batch")->withTimestamps();
    }

    


    public static function number()
    {
        return sprintf("%s-%03d", strtoupper(str_random(4)), rand(1, 999));
    }
}
