<?php

namespace App\Http\Controllers;

use App\Farmer;
use Illuminate\Http\Request;

class FarmerSalesController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function index(Farmer $farmer)
    {
        return view("farmers.sales.index", compact("farmer"));
    }
}
