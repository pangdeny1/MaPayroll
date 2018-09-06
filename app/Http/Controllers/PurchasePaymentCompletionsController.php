<?php

namespace App\Http\Controllers;

use App\Purchase;
use Illuminate\Http\Request;

class PurchasePaymentCompletionsController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function store(Purchase $purchase)
    {
        $purchase->update([
            "status" => "paid",
            "paid_at" => now()
        ]);
/*
        \Sms::send(
            phone($purchase->farmer->phone, "TZ"),
            "Hello, {$purchase->farmer->full_name} malipo yako yamekamilika ambayo jumla yake ni {$purchase->amount}, asante kwakufanya biashara nasi"
        );
        */
 \Sms::send(
            phone($purchase->farmer->phone, "TZ"),
            "Hello, {$purchase->farmer->full_name} mazao yako batch yamelipwa Tsh {$purchase->amount} wasiliana na uongozi wako "
        );

        return redirect()->back();
    }
}
