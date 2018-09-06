<?php

namespace App\Http\Controllers;

use App\Group;
use App\State;
use App\ProductPrice;
use App\Exports\GroupsExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class GroupsController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function index()
    {
        $groups = Group::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("name", "LIKE", "%". request("q") ."%")
                    ->orWhere("description", "LIKE", "%". request("q") ."%");
            })
            ->paginate();

        return view("groups.index", compact("groups"));
    }

    public function create()
    {
        return view("groups.create");
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            "name" => "required",
            "description" => "required",
            "product_id" => "required",
        ]);

        $group = Group::create($request->only(["name", "description"]));

        $group->products()->attach($request->product_id, ["status" => "active"]);
    
        return redirect()->route("groups.index");
    }

    public function edit(Group $group)
    {
        $this->authorize("edit", Group::class);

        return view("groups.edit", [
            "states" => State::getCountryName("Tanzania"),
            "group" => $group
        ]);
    }


    public function update(Request $request, Group $group)
    {
        $this->authorize("update", $group);

        $this->validate($request, [
            "name" => "required",
            "description" => "required",
        ]);

        $group->update([
            "name" => request("name"),
            "description" => request("description"),
        ]);

        return redirect()->route("groups.index");
    }

    public function destroy(Group $group)
    {
        $group->products()->detach();

        $group->members()->detach();

        $group->prices()->delete();

        $group->delete();

        return redirect()->route("groups.index");
    }

    public function export() 
    {
        return Excel::download(new GroupsExport, 'groups.xlsx');
    }
}
