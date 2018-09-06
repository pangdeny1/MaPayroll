<?php

namespace App\Http\Controllers;

use App\Purchase;
use Illuminate\Http\Request;

class PurchaseRejectionsController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function destroy(Purchase $purchase)
    {
        $purchase->update(["status" => "rejected"]);

        return redirect()->back();
    }
}
