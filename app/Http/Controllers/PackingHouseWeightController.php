<?php

namespace App\Http\Controllers;

use Sms;
use App\Purchase;
use Illuminate\Http\Request;

class PackingHouseWeightController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function update(Request $request, Purchase $purchase)
    {
        $this->validate($request, ["weight_before" => "required"]);
        $batch      = $purchase->batch;

        $purchase->update([
            "status" => "packed",
            "weight_before" => request("weight_before"),
        ]);

        Sms::send(phone($purchase->farmer->phone, "TZ"), $this->messageBody($purchase->farmer, $purchase->product, $purchase));

        return redirect()->back();
        
    }

    public function messageBody($farmer, $product, $purchase)
    {
        //$format = "Habari %s,Mzigo wako wa %s jumla ya kilo %s kabla ya uchambuzi,kilo %s baada ya uchambuzi";
        $format = "Habari %s,mazao yako Batch %s ya %s ikiwa na %s ,kilo %s yamepokelewa utajulishwa baada ya uchambuzi kufanyika";

        return sprintf(
            $format,
            $farmer->full_name,
            $purchase->batch->number,
            date("d/m/Y",strtotime($purchase->batch->expected_harvest_time)),
            $product->name,
            $purchase->weight_before
        );
    }
}
