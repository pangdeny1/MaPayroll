<?php

namespace App\Http\Controllers;

use App\Batch;
use Illuminate\Http\Request;

class ClusterMembersController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function store(Request $request, Batch $batch)
    {
        $this->validate($request, ["farmer_id" => "required"]);

        if($batch->max_count >= $batch->farmers->count()) {
            $batch->farmers()->attach(request("farmer_id"));
        }
        
        return redirect()->back();
    }
}
