<?php

namespace App\Http\Controllers;

use App\Farmer;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\Request;
use Illuminate\View\View;

class FarmerBatchesController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    /**
     * @param Farmer $farmer
     * @return View
     * @throws AuthorizationException
     */
    public function index(Farmer $farmer)
    {
        $this->authorize("view", Farmer::class);

        return view("farmers.batches.index", compact("farmer"));
    }
}
