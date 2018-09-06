<?php

namespace App\Http\Controllers\Api;

use App\Farm;
use App\Http\Resources\CropsCollection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FarmCropsController extends Controller
{
    public function index(Farm $farm)
    {
        return new CropsCollection($farm->crops);
    }
}
