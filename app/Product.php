<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use OwenIt\Auditing\Contracts\Auditable;

class Product extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded = [];

    public function category()
    {
        if($this->categories()->exists()){
            return $this->categories()->first();
        }
        
        return new ProductCategory;
    }

    public function categories()
    {
        return $this->belongsToMany(
            ProductCategory::class,
            "product_category",
            "category_id",
            "product_id"
        )->withTimestamps();
    }

    public function price()
    {
        return $this->hasOne(ProductPrice::class);
    }

    public function prices()
    {
        return $this->hasMany(ProductPrice::class);
    }

    public function calculatePrice($weight, $unit)
    {
        return $this->price->normalize($weight, $unit);
    }
}
