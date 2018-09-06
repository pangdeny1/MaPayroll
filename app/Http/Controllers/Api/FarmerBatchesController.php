<?php

namespace App\Http\Controllers\Api;

use App\Farmer;
use App\Http\Resources\BatchesCollection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class FarmerBatchesController extends Controller
{
    public function index(Farmer $farmer)
    {
        $batches = $farmer->batches()->whereHas("harvests", function($query) use ($farmer){
            return $query->where("farmer_id", $farmer->id);
        })->get();

        return new BatchesCollection($batches);
    }
}
