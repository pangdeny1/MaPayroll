<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Purchase;
class PurchaseStatusesController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function store(Purchase $purchase) 
    {
        $purchase->update(["status" => "completed"]);

        return redirect()->back();
    }

    public function destroy(Purchase $purchase)
    {
        $purchase->update(["status" => "rejected"]);

        return redirect()->back();
    }
}
