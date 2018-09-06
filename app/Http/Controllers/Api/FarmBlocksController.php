<?php

namespace App\Http\Controllers\Api;

use App\Farm;
use App\Http\Resources\BlocksCollection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FarmBlocksController extends Controller
{
    public function index(Farm $farm)
    {
        return new BlocksCollection($farm->blocks);
    }
}
