<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class GroupProduct extends Model
{
	protected $guarded 	= [];

    protected $table 	= "group_product";

    public function group()
    {
    	return $this->belongsTo(Group::class);
    }
    
    public function product()
    {
    	return $this->belongsTo(Product::class);
    }

    public function price()
    {
    	return $this->belongsTo(ProductPrice::class, "price_id")->latest();
    }

    public function hasPrice()
    {
        return $this->price()->exists();
    }
}
