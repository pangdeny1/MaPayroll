<?php

namespace App\Http\Controllers;

use App\Farm;
use App\Http\Requests\FarmerCreateRequest;
use App\State;
use App\Farmer;
use App\Purchase;
use App\Group;
use App\GroupMember;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\View\View;
use Sms;

class FarmersController extends Controller
{
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
        $this->authorize("view", Farmer::class);

        //$farmers = Farmer::latest()->paginate();
        //$groups = GroupMember::all()->load('Groups');

             $farmers= Farmer::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("first_name", "LIKE", "%". request("q") ."%")
                    ->orWhere("last_name", "LIKE", "%". request("q") ."%");
            })
            ->paginate();

       return view("farmers.index", compact("farmers"));
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize("create", Farmer::class);

        return view("farmers.create", [
            "states" => State::getCountryName("Tanzania"),
        ]);
    }

    /**
     * @param FarmerCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function store(FarmerCreateRequest $request)
    {
        $this->authorize("create", Farmer::class);

        $farmer = Farmer::create([
            "first_name" => request("first_name"),
            "last_name" => request("last_name"),
            "phone" => request("phone"),
            "email" => request("email"),
            "gender" => request("gender"),
            "creator_id" => auth()->id(),
        ]);

        $farmer->address()->create($request->only([
            "street",
            "address",
            "state",
            "country",
            "postal_code",
        ]));

        $farmer->groups()->attach($request->group_id);
        
         \Sms::send(phone(request("phone"), "TZ"), $this->messageBody(
            request("first_name"),
            request("last_name"),
            request("phone")
        ));
        
        return redirect()->route("farmers.show", $farmer);
    }

    /**
     * @param Farmer $farmer
     * @return RedirectResponse
     * @throws AuthorizationException
     */

    public function edit(Farmer $farmer)
    {
        $this->authorize("edit", Farmer::class);

        return view("farmers.edit", [
            "states" => State::getCountryName("Tanzania"),
            "farmer" =>$farmer,
            "groups" =>Group::All(),
            "groupmember"=>GroupMember::All(),
           
        ]);
    }
/* public function update(Farmer $farmer)
    {
        $this->authorize("edit", $farmer);

        $farmer->update([
            "first_name" => request("first_name", $farmer->first_name),
            "last_name" => request("last_name", $farmer->last_name),
            "phone" => request("phone", $farmer->phone),
            "email" => request("email", $farmer->email),
            "gender" => request("gender", $farmer->gender),
        ]);

        return redirect()->back();
    }

*/

    public function update(Request $request,Farmer $farmer)
    {
        $this->authorize("update", $farmer);
        $this->validate($request, [
            "first_name" => "required",
            "last_name" => "required",
            "phone" => "required",
            "country" => "required",
            "gender" => ["required", Rule::in(["male","female"])],
        ]);

        $farmer->update([
            "first_name" => request("first_name"),
            "last_name" => request("last_name"),
            "email" => request("email"),
            "phone" => request("phone"),
            "gender" => request("gender"),
        ]);

        if ($farmer->address()->exists()){
            $farmer->address()->update([
                "street" => request("street", optional($farmer->address)->street),
                "address" => request("address", optional($farmer->address)->address),
                "state" => request("state", optional($farmer->address)->state),
                "country" => request("country", optional($farmer->address)->country),
                "postal_code" => request("postal_code", optional($farmer->address)->postal_code),
            ]);
        } else {
            $farmer->address()->create([
                "street" => request("street"),
                "address" => request("address", ""),
                "state" => request("state"),
                "country" => request("country"),
                "postal_code" => request("postal_code"),
            ]);
        }

        $farmer->groups()->sync($request->group_id);
        return redirect()->route("farmers.index");
        //return redirect()->back();
    }
    /**
     * @param Farmer $farmer
     * @return View
     * @throws AuthorizationException
     */
    public function show(Farmer $farmer)
    {
        $this->authorize("view", $farmer);

        return view("farmers.show", compact("farmer"));
    }

    /**
     * @param Farmer $farmer
     * @return RedirectResponse
     * @throws \Exception
     */
    public function destroy(Farmer $farmer)
    {
        $farmer->delete();

        return redirect()->route("farmers.index");
    }
    
    public function messageBody($firstname, $lastname, $group)
    {
        $format = 'Habari %s %s,Hongera  umesajiliwa kwenye mfumo wa Uzalishaji wa Homeveg';

        return sprintf(
            $format,
            $firstname,
            $lastname,
            $group
        );
    }
}
