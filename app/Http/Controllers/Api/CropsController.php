<?php

namespace App\Http\Controllers\Api;

use App\Crop;
use App\Http\Resources\CropsCollection;
use App\Product;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CropsController extends Controller
{
    public function index()
    {
        return new CropsCollection(Product::all());
    }
}
