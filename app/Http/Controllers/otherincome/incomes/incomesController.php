<?php

namespace App\Http\Controllers\otherincome\incomes;

use Illuminate\Http\Request;
use App\Models\Prlothinctype;
use App\Http\Controllers\Controller;

class incomesController extends Controller
{
    public function index()
    {
    	 $pagetitle="Incomes";
        $incometypes=Prlothinctype::All();
        
        $incometypes=Prlothinctype::latest()
            ->when(request("q"), function($query){
                return $query
                    ->Where("othindesc", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('otherincomes.incomes.index',compact('pagetitle','incometypes'));
    }
}
