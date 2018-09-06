<?php

namespace App\Http\Controllers;

use App\ProductPrice;
use App\Group;
use App\GroupProduct;
use Illuminate\Http\Request;

class GroupProductsController extends Controller
{
	public function __construct()
	{
		$this->middleware("auth");
	}

    public function index()
    {
        $groupProducts = GroupProduct::latest()->paginate();

        return view("groups.products.index", compact("groupProducts"));
    }
	
    public function store(Request $request, Group $group)
    {
    	$this->validate($request, ["product_id" => "required"]);

    	$group->products()->attach($request->product_id);

    	return redirect()->back();
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            "amount" => "required|numeric",
            "currency" => "required|in:TZS",
            "unit" => "required|in:kg,gm",
            "unit_value" => "required|numeric",
        ]);

        $productGroup = GroupProduct::findOrFail($id);

        if ($productGroup->hasPrice()) {
            $productGroup->price()->update([
                "is_current_price" => false,
                "valid_till" => now(),
            ]);
        }

        $price = ProductPrice::create([
            "amount" => request("amount"),
            "currency" => request("currency", "TZS"),
            "unit" => request("unit"),
            "unit_value" => request("unit_value"),
            "product_id" => $productGroup->product_id,
            "group_id" => $productGroup->group_id,
            "valid_from" => request("valid_from"),
            "valid_till" => request("valid_till"),
            "is_current_price" => true,
            "creator_id" => auth()->id(),
        ]);

        $productGroup->update(["price_id" => $price->id]);

        return redirect()->back();
    }
}
