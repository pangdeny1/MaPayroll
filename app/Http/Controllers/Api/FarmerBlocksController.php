<?php

namespace App\Http\Controllers\Api;

use App\Farmer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\BlocksCollection;

class FarmerBlocksController extends Controller
{
    public function index(Farmer $farmer)
    {
        return new BlocksCollection($farmer->householdBlocks);
    }
}
