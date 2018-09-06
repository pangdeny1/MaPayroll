<?php

namespace App\Http\Controllers;

use App\Purchase;
use Illuminate\Http\Request;

class PurchaseRemarksController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function store(Request $request, Purchase $purchase)
    {
        $this->validate($request, ["remarks" => "required"]);

        $purchase->remarks()->create(["body" => $request->remarks]);

        return redirect()->back();
    }
}
