<?php

namespace App\Http\Controllers\tax;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Prltaxtablerate;
use App\Mailers\AppMailer;

class TaxController extends Controller
{
    public function index()
    {
        $pagetitle="Tax";
        $taxrates=Prltaxtablerate::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("rangefrom", "LIKE", "%". request("q") ."%")
                    ->orWhere("rangeto", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('tax.index', compact('pagetitle','taxrates'));
    }

     public function create()
    {
        
        $pagetitle="Create tax";

        return view('tax.create', compact('pagetitle'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'RangeFrom'     => 'required',
            'RangeTo'     => 'required',
            'FixTax'      =>'required',
            'Percent'     =>'required'
        ]);

        $tax = new Prltaxtablerate([
            'fixtax'     => $request->input('FixTax'),
            'percentofexcessamount'     => $request->input('Percent'),
            'bracket'     => 10,
            'rangefrom'     => $request->input('RangeFrom'),
            'rangeto'     => $request->input('RangeTo'),

        ]);

        $tax->save();

        return redirect("viewtax")->with('status',' tax has been Updated.');
    }
      public function edit($taxtype_id)
   {

    $pagetitle="taxtype Edit";
   $taxrate= Prltaxtablerate::where('id', $taxtype_id)->firstOrFail();

 return view('tax.edit', compact('taxrate','pagetitle'));
   }


       public function update(Request $request, AppMailer $mailer,$tax_id)
    {
        $this->validate($request, [
            'RangeFrom'     => 'required',
            'RangeTo'     => 'required',
            'FixTax'      =>'required',
            'Percent'     =>'required'
            
        ]);
       

            $tax = Prltaxtablerate::where('id', $tax_id)->firstOrFail();
            

            $tax->fixtax    = $request->input('FixTax');
            $tax->percentofexcessamount   = $request->input('Percent');
            $tax->rangefrom   =$request->input('RangeFrom');
            $tax->rangeto   =$request->input('RangeTo');
            
            $tax->save();

         
       return redirect("viewtax")->with('status','tax  has been Updated.');
    }


     public function destroy($taxtype_id)
        {
   $tax = Prltaxtablerate::findOrFail($taxtype_id);

   $tax->delete();

      // return redirect()->route('tasks.index');
  return redirect()->back()->with("status", "tax successfully deleted!");
           }
}
