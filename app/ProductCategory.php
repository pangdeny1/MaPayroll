<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class ProductCategory extends Model implements Auditable
{
    use \OwenIt\Auditing\Auditable;

    protected $guarded = [];

    public function products()
    {
        return $this->belongsToMany(Product::class, "product_category", "product_id", "category_id");
    }
}
