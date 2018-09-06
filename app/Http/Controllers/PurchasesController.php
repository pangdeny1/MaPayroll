<?php

namespace App\Http\Controllers;

use Sms;
use App\Batch;
use App\Farmer;
use App\Product;
use App\Purchase;
use App\Block;
use App\DeliveryNote;
use App\Harvest;
use Nexmo\Client;
use Illuminate\View\View;
use App\Http\Requests\PurchaseCreateRequest;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;

class PurchasesController extends Controller
{
    protected $weightUnites = [
        [
            "name" => "Tonne",
            "unit" => "ton"
        ],
        [
            "name" => "Kilogram",
            "unit" => "kg"
        ],
        [
            "name" => "Gram",
            "unit" => "gm"
        ],
    ];

    public function __construct()
    {
        $this->middleware("auth");
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function index()
    {
        $this->authorize("view", Purchase::class);

        $purchases = Purchase::latest()->when(request("status"), function($query){
            return $query->where("status", request("status"));
        })->paginate(10);

        return view("purchases.index", compact("purchases"));
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize("view", Purchase::class);

        $farmers = Farmer::query()->has("groups")->get();

        $products   = Product::all();

        return view("purchases.create", [
            "farmers"   => $farmers,
            "products"  => $products,
        ]);
    }

    /**
     * @param PurchaseCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function store(PurchaseCreateRequest $request)
    {
        $this->authorize("create", Purchase::class);

        $deliveryNote = DeliveryNote::firstOrCreate(["number" => request("delivery_note_number")]);

        $farmer = Farmer::findOrFail(request("farmer_id"));

        $block  = Block::find(request("block_id"));

        $harvest = Harvest::create([
            "farmer_id" => request("farmer_id"),
            "block_id" => request("block_id"),
            "expected_date" => request("harvest_date"),
            "amount_unit" => request("weight_unit"),
            "expected_amount" => request("field_weight"),
            "description" => request("description", ""),
        ]);
        
        $purchase = Purchase::create([
            "delivery_note_id" => $deliveryNote->id,
            "product_id" => $block->product_id,
            "harvest_id" => $harvest->id,
            "farmer_id" => $farmer->id,
            "block_id" => $block->id,
            "household_block_id"=>$block->id,
            "weight_unit" => request("weight_unit"),
            "field_weight" => request("field_weight"),
            "creator_id" => auth()->id(),
        ]);

        if (! is_null($request->remarks)) {
            $purchase->remarks()->create(["body" => request("remarks")]);
        }

        \Sms::send(phone($purchase->farmer->phone, "TZ"), $this->messageBody(
            $purchase->farmer,
            $purchase->product,
            $purchase
        ));

        return redirect()->route("purchases.index")->with('status', 'Purchase was recorded successfully!');
    }

    public function edit(Purchase $purchase)
    {
        return view("purchases.edit", [
            "purchase"      => $purchase,
            "farmers"       => Farmer::all(),
            "products"      => Product::all(),
            "weightUnits"   => $this->weightUnites
        ]);
    }

    public function update(Request $request, Purchase $purchase)
    {
        $this->validate($request, [
            "weight_unit" => "required|in:kg,gm,ton",
            "product_id" => "required|exists:products,id",
            "farmer_id" => "required|exists:farmers,id",
            "amount" => "nullable|numeric",
            "weight_before" => "required|numeric",
            "weight_after" => "nullable|numeric",
            "remarks" => "nullable",
        ]);

        if($request->weight_after && $request->weight_unit) {
            $amount = Product::findOrfail(request("product_id"))->calculatePrice($request);
        }

        $purchase->update([
            "product_id" => request("product_id"),
            "farmer_id" => request("farmer_id"),
            "amount" => request("amount", isset($amount) ? $amount : null),
            "currency" => request("currency", "TZS"),
            "weight_unit" => request("weight_unit"),
            "weight_before_processing" => request("weight_before"),
            "weight_after_processing" => request("weight_after"),
        ]);

        if ($purchase->amount && $purchase->weight_after_processing) {
            $purchase->update(["status" => "processed"]);
        }

        return redirect()->back()->with('status', 'Purchase was updated successfully!');
    }

    public function show(Purchase $purchase)
    {
        return view("purchases.show", compact("purchase"));
    }

    /**
     * @param Purchase $purchase
     * @return RedirectResponse
     * @throws \Exception
     */
    public function destroy(Purchase $purchase)
    {
        $purchase->delete();

        return redirect()->back()->with("status", "Entity is deleted successfully");
    }

    public function messageBody($farmer, $product, $purchase)
    {
        $format = "Habari %s, Mazao yako %s wenye jumla ya kilo %s yamepokelewa, Utajulishwa thamani yake baada ya uchambuzi";

        return sprintf($format,
            $farmer->full_name,
            $product->name,
            $purchase->weight_before,
            $purchase->weight_after,
            $purchase->amount,
            $purchase->field_weight
        );
    }
}
