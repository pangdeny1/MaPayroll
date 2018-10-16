<?php

namespace App\Http\Controllers\sss;

use Illuminate\Http\Request;
use App\Models\SocialSecurityScheme;
use App\Mailers\AppMailer;
use App\Models\Prlsstype;
use App\Http\Controllers\Controller;

class SssController extends Controller
{
   public function index()
    {
        $pagetitle="Social Security";
        $sstypes=Prlsstype::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("penname", "LIKE", "%". request("q") ."%")
                    ->orWhere("pencode", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('sss.index', compact('pagetitle','sstypes','employees','sstypes'));
    }

     public function create()
    {
        
        $pagetitle="Create SS";

        return view('sss.create', compact('pagetitle'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'PensionCode'     => 'required',
            'PensionName'     => 'required',
            'EmployeeContr'     => 'required',
            'EmployerContr'     => 'required'
        ]);

        $sss = new Prlsstype([
            'pencode'     => $request->input('PensionCode'),
            'penname'     => $request->input('PensionName'),
            'bracket'     => 10,
            'rangefrom'     => $request->input('RangeFrom'),
            'rangeto'     => $request->input('RangeTo'),
            'employerss'     => $request->input('EmployerContr'),
            'employeess'     => $request->input('EmployeeContr'),
            'employerec'     => $request->input('EmployerContr'),
            'total'     => ($request->input('EmployerContr') +$request->input('EmployeeContr')),

        ]);

        $sss->save();

        return redirect("viewsss")->with('status',' Pension has been Updated.');
    }
      public function edit($sstype_id)
   {

    $pagetitle="sstype Edit";
    $sstype= Prlsstype::where('id', $sstype_id)->firstOrFail();

 return view('sss.edit', compact('sstype','pagetitle'));
   }


       public function update(Request $request, AppMailer $mailer,$sss_id)
    {
        $this->validate($request, [
            'PensionCode'     => 'required',
            'PensionName'     => 'required',
            'RangeFrom'     => 'required',
            'RangeTo'     => 'required',
            'EmployeeContr'  => 'required',
            'EmployerContr'  => 'required',
            
        ]);
       

            $sss = Prlsstype::where('id', $sss_id)->firstOrFail();
            

            $sss->pencode    = $request->input('PensionCode');
            $sss->penname   = $request->input('PensionName');
            $sss->rangefrom   =$request->input('RangeFrom');
            $sss->rangeto   =$request->input('RangeTo');
            $sss->employerss    = $request->input('EmployerContr');
            $sss->employeess   = $request->input('EmployeeContr');
            $sss->employerec    = $request->input('EmployerContr');
            $sss->total  = ($request->input('EmployerContr') +$request->input('EmployeeContr'));
            
            $sss->save();

         
       return redirect("viewsss")->with('status','ASocial Security  has been Updated.');
    }


     public function destroy($sstype_id)
        {
   $sss = Prlsstype::findOrFail($sstype_id);

   $sss->delete();

      // return redirect()->route('tasks.index');
  return redirect()->back()->with("status", "Social Security successfully deleted!");
           }
}
