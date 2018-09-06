<?php

namespace App\Http\Controllers;

use Sms;
use App\ProductPrice;
use App\Purchase;
use App\GroupProduct;
use Illuminate\Http\Request;

class GradedWeightController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function update(Request $request, Purchase $purchase)
    {
        $this->validate($request, ["weight_after" => "required"]);

        $product    = $purchase->product;
        $batch      = $purchase->batch;
        $group      = $purchase->farmer->groups()->first();

        $price = ProductPrice::where([
            "product_id" => $product->id,
            "group_id" => $group->id,
            "is_current_price" => true,
        ])->first();

        $unitPrice = $price->amount;

        $amount = ($unitPrice * request("weight_after"));

        $purchase->update([
            "status" => "graded",
            "weight_after" => request("weight_after"),
            "amount" => $amount,
            "currency" => "TZS",
        ]);

        Sms::send(phone($purchase->farmer->phone, "TZ"), $this->messageBody(
            $purchase->farmer,
            $purchase->product,
            $purchase
        ));

        return redirect()->back();
    }

    public function messageBody($farmer, $product, $purchase)
    {
        //$format = "Habari %s,Mzigo wako wa %s jumla ya kilo %s kabla ya uchambuzi,kilo %s baada ya uchambuzi,Thamani yake jumla ni %s";
        $format = "Habari %s,Mazao yako batch %s ya %s,yenye %s kilo %s yamechambuliwa na kilo %s zimekidhi viwango.";
        return sprintf($format,
            $farmer->full_name,
            $purchase->batch->number,
            date("d/m/Y",strtotime($purchase->batch->expected_harvest_time)),
            $product->name,
            $purchase->weight_before,
            $purchase->weight_after,
            $purchase->amount
        );
    }
}
