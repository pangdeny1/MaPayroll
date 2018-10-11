<?php

namespace App\Http\Controllers\otherdeduction\deductions;

use Illuminate\Http\Request;
use App\Models\Prlothdedctype;
use App\Http\Controllers\Controller;

class deductionsController extends Controller
{
    public function index()
    {
    	 $pagetitle="deductions";
        $deductiontypes=Prlothdedctype::All();
        
        $deductiontypes=Prlothdedctype::latest()
            ->when(request("q"), function($query){
                return $query
                    ->Where("othincdesc", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('otherdeductions.deductions.index',compact('pagetitle','deductiontypes'));
    }

     public function create()
    {
        return view("otherdeductions.deductions.create");
    }


     public function store(Request $request)
    {
        $this->validate($request, [
            "name" => "required",
            "description" => "required",
            "taxable" => "required",
        ]);

         $deductiontype= new Prlothdedctype([
            'deductiondesc'     => $request->input('description'),
            'othincdesc'     => $request->input('name'),
            'taxable'     => $request->input('taxable'),
           
            
        ]);

         $deductiontype->save();

         return redirect("deductionstypes")->with('status','successfully created');

    }

public function edit($id)
{
$deductiontype = Prlothdedctype::where('id', $id)->firstOrFail();

return view("otherdeductions.deductions.edit",compact("deductiontype"));

}


       public function update(Request $request,$id)
    {
       $this->validate($request, [
            "name" => "required",
            "description" => "required",
            "taxable" => "required",
        ]);
       

            $deductiontype = Prlothdedctype::where('id', $id)->firstOrFail();
            

            $deductiontype->deductiondesc   = $request->input('description');
            $deductiontype->othincdesc   = $request->input('name');
            $deductiontype->taxable  = $request->input('taxable');
           
            $deductiontype->save();
        return redirect("deductionstypes")->with('status','successfully updated');
    }

      public function destroy($id)
    {

        $deductiontype = Prlothdedctype::findOrFail($id);
        $deductiontype->delete();

        
        return redirect("deductionstypes")->with('status','successfully deleted');
    }
}
