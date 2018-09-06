<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $guarded  = [];

    protected $with     = ["products"];

    public function products()
    {
    	return $this->belongsToMany(Product::class)->withTimestamps();
    }

    public function members()
    {
    	return $this->belongsToMany(Farmer::class, "group_member");
    }

    public function prices()
    {
    	return $this->hasMany(ProductPrice::class);
    }
}
