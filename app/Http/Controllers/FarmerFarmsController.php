<?php

namespace App\Http\Controllers;

use App\Farmer;
use App\Farm;
use App\Block;
use App\Http\Requests\FarmCreateRequest;
use App\State;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class FarmerFarmsController extends Controller
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
        $this->authorize("view", $farmer);

        return view("farmers.farms.index", compact("farmer"));
    }

    /**
     * @param Farmer $farmer
     * @return View
     * @throws AuthorizationException
     */
    public function create(Farmer $farmer)
    {
        $this->authorize("create", $farmer);

        return view("farmers.farms.create", [
            "farmer" => $farmer,
            "states" => State::getCountryName("Tanzania"),
        ]);
    }

    /**
     * @param FarmCreateRequest $request
     * @param Farmer $farmer
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function store(FarmCreateRequest $request, Farmer $farmer)
    {
        $this->authorize("create", $farmer);

        $farm = $farmer->farms()->create($request->only(["size", "size_unit", "description", "block_id"]));

        $farm->address()->create($request->only(["country", "state"]));

        //return redirect()->route("farmers.show", $farmer);
         return redirect()->route("farmers.farms.index",$farmer);
    }

     public function edit(Farm $farm)
    {
        $this->authorize("edit", Farmer::class);

     return view("farmers.farms.edit", [
            "farm" => $farm,
            "states" => State::getCountryName("Tanzania"),
            "blocks" =>Block::All(),
        ]);
    }
 public function update(Request $request,Farm $farm)
    {
        $this->authorize("update", $farm);

        $this->validate($request, [
            "size" => "required",
            "block_id" => "required",
        ]);

        $farm->update([
            "size" => request("size"),
            "description" => request("description"),
            "block_id" => request("block_id"),
        ]);

        if ($farm->address()->exists()){
            $farm->address()->update([
                "street" => request("street", optional($farm->address)->street),
                "address" => request("address", optional($farm->address)->address),
                "state" => request("state", optional($farm->address)->state),
                "country" => request("country", optional($farm->address)->country),
                "postal_code" => request("postal_code", optional($farm->address)->postal_code),
            ]);
        } else {
            $farm->address()->create([
                "street" => request("street"),
                "address" => request("address", ""),
                "state" => request("state"),
                "country" => request("country"),
                "postal_code" => request("postal_code"),
            ]);
        }

        
        //return redirect()->route("farmers.show", $farm->farmer_id);
          return redirect()->route("farmers.farms.index",$farm->farmer_id);
    }

}
