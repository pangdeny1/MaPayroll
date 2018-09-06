<?php

namespace App\Http\Controllers\Api;

use App\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductPricesController extends Controller
{
    public function index(Product $product)
    {
        return $product
            ->price()
            ->when(request("group_id"), function($query){
                return $query->where("group_id", request("group_id"));
            })
            ->first();
    }
}
