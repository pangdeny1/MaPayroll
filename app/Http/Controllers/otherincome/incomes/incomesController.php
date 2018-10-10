<?php

namespace App\Http\Controllers\otherincome\incomes;

use Illuminate\Http\Request;
use App\Models\Prlothinctype;
use App\Http\Controllers\Controller;

class incomesController extends Controller
{
    public function index()
    {
    	 $pagetitle="Incomes";
        $incometypes=Prlothinctype::All();
        
        $incometypes=Prlothinctype::latest()
            ->when(request("q"), function($query){
                return $query
                    ->Where("othincdesc", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('otherincomes.incomes.index',compact('pagetitle','incometypes'));
    }

     public function create()
    {
        return view("otherincomes.incomes.create");
    }


     public function store(Request $request)
    {
        $this->validate($request, [
            "name" => "required",
            "description" => "required",
            "taxable" => "required",
        ]);

         $incometype= new Prlothinctype([
            'incomedesc'     => $request->input('description'),
            'othincdesc'     => $request->input('name'),
            'taxable'     => $request->input('taxable'),
           
            
        ]);

         $incometype->save();

         return redirect("incomestypes")->with('status','successfully created');

    }

public function edit($id)
{
$incometype = Prlothinctype::where('id', $id)->firstOrFail();

return view("otherincomes.incomes.edit",compact("incometype"));

}


       public function update(Request $request,$id)
    {
       $this->validate($request, [
            "name" => "required",
            "description" => "required",
            "taxable" => "required",
        ]);
       

            $incometype = Prlothinctype::where('id', $id)->firstOrFail();
            

            $incometype->incomedesc   = $request->input('description');
            $incometype->othincdesc   = $request->input('name');
            $incometype->taxable  = $request->input('taxable');
           
            $incometype->save();
        return redirect("incomestypes")->with('status','successfully updated');
    }

      public function destroy($id)
    {

        $incometype = Prlothinctype::findOrFail($id);
        $incometype->delete();

        
        return redirect("incomestypes")->with('status','successfully deleted');
    }
}
