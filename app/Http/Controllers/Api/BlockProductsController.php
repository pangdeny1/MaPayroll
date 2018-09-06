<?php

namespace App\Http\Controllers\Api;

use App\HouseholdBlock;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BlockProductsController extends Controller
{
    public function index(HouseholdBlock $block)
    {
        return $block->product;
    }
}
