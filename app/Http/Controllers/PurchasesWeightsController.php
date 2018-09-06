<?php

namespace App\Http\Controllers;

use App\Purchase;
use Illuminate\Http\Request;

class PurchasesWeightsController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function update(Request $request, Purchase $purchase)
    {
        $this->validate($request, [
            "weight_after" => "required|"
        ]);

        if($request->weight_after && $purchase->weight_unit) {
            $amount = $purchase->product->calculatePrice(
                request("weight_after"),
                $purchase->weight_unit
            );
        }

        $purchase->update([
            "amount" => isset($amount) ? $amount : null,
            "currency" => "TZS",
            "weight_after" => request("weight_after"),
        ]);

        if ($request->has("remarks") && $request->remarks) {
            $purchase->remarks()->create(["body" => request("remarks")]);
        }

        if ($purchase->amount && $purchase->weight_after_processing) {
            $purchase->update(["status" => "processed"]);
        }

        return redirect()->back()->with("status", "Weight is recorded successfully");
    }

    public function messageBody($firstname, $lastname, $group)
    {
        $format = 'Habari %s %s,Hongera  umesajiliwa kwenye mfumo wa Homevege';

        return sprintf(
            $format,
            $firstname,
            $lastname,
            $group
        );
    }
}
