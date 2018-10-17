<?php

namespace App\Http\Controllers\hdmf;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\prlhdmftype;
use App\Mailers\AppMailer;

class Hdmfontroller extends Controller
{
    public function index()
    {
        $pagetitle="hdmf";
        $hdmfrates=prlhdmftype::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("hdmfname", "LIKE", "%". request("q") ."%")
                    ->orWhere("description", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('hdmf.index', compact('pagetitle','hdmfrates'));
    }

     public function create()
    {
        
        $pagetitle="Create hdmf";

        return view('hdmf.create', compact('pagetitle'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'RangeFrom'     => 'required',
            'RangeTo'     => 'required',
            'EmployeeContr'      =>'required',
            'EmployerContr'     =>'required',
            'HdmfName'          =>'required'
        ]);

        $hdmf = new prlhdmftype([
            'employeeshare'     => $request->input('EmployeeContr'),
            'employershare'     => $request->input('EmployerContr'),
            'bracket'     => 10,
            'rangefrom'     => $request->input('RangeFrom'),
            'rangeto'     => $request->input('RangeTo'),
            'total'       =>($request->input('EmployerContr') + $request->input('EmployeeContr')), 
            'description'  =>$request->input("Description"),
            'hdmfname'  =>$request->input("HdmfName"),

        ]);

        $hdmf->save();

        return redirect("viewhdmf")->with('status',' hdmf has been Updated.');
    }
      public function edit($hdmftype_id)
   {

    $pagetitle="hdmftype Edit";
   $hdmfrate= prlhdmftype::where('id', $hdmftype_id)->firstOrFail();

 return view('hdmf.edit', compact('hdmfrate','pagetitle'));
   }


       public function update(Request $request, AppMailer $mailer,$hdmf_id)
    {
        $this->validate($request, [
           'RangeFrom'     => 'required',
            'RangeTo'     => 'required',
            'EmployeeContr'      =>'required',
            'EmployerContr'     =>'required',
            'HdmfName'          =>'required'
        ]);
       

            $hdmf = prlhdmftype::where('id', $hdmf_id)->firstOrFail();
            

            $hdmf->employeeshare    = $request->input('EmployeeContr');
            $hdmf->employershare  = $request->input('EmployerContr');
            $hdmf->rangefrom   =$request->input('RangeFrom');
            $hdmf->rangeto   =$request->input('RangeTo');
            $hdmf->description  =$request->input("Description");
            $hdmf->hdmfname   =$request->input("HdmfName");
            $hdmf->total   =($request->input('EmployerContr') + $request->input('EmployeeContr'));
                                    
            $hdmf->save();

         
       return redirect("viewhdmf")->with('status','hdmf  has been Updated.');
    }


     public function destroy($hdmftype_id)
        {
   $hdmf = prlhdmftype::findOrFail($hdmftype_id);

   $hdmf->delete();

      // return redirect()->route('tasks.index');
  return redirect()->back()->with("status", "hdmf successfully deleted!");
           }
}
