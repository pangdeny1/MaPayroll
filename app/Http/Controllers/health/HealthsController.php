<?php

namespace App\Http\Controllers\health;

use Illuminate\Http\Request;
use App\Models\SocialSecurityScheme;
use App\Mailers\AppMailer;
use App\prlhealthtype;
use App\Http\Controllers\Controller;

class HealthsController extends Controller
{
    public function index()
    {
        $pagetitle="Health ";
        $healthtypes=prlhealthtype::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("employerph", "LIKE", "%". request("q") ."%")
                    ->orWhere("employerec", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('health.index', compact('pagetitle','healthtypes'));
    }

     public function create()
    {
        
        $pagetitle="Create Health";

        return view('health.create', compact('pagetitle'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'HealthName'     => 'required',
            'Description'     => 'required',
            'EmployeeContr'     => 'required',
            'EmployerContr'     => 'required'
        ]);

        $health = new prlhealthtype([
            'healthname'     => $request->input('HealthName'),
            'description'     => $request->input('Description'),
            'bracket'     => 10,
            'rangefrom'     => $request->input('RangeFrom'),
            'rangeto'     => $request->input('RangeTo'),
            'employerph'     => $request->input('EmployerContr'),
            'employeeph'     => $request->input('EmployeeContr'),
            'employerec'     => $request->input('EmployerContr'),
            'total'     => ($request->input('EmployerContr') +$request->input('EmployeeContr')),

        ]);

        $health->save();

        return redirect("viewhealth")->with('status',' Health has been Updated.');
    }
      public function edit($healthtype_id)
   {

    $pagetitle="healthtype Edit";
    $healthtype= prlhealthtype::where('id', $healthtype_id)->firstOrFail();

 return view('health.edit', compact('healthtype','pagetitle'));
   }


       public function update(Request $request, AppMailer $mailer,$health_id)
    {
        $this->validate($request, [
            'HealthName'     => 'required',
            'Description'     => 'required',
            'RangeFrom'     => 'required',
            'RangeTo'     => 'required',
            'EmployeeContr'  => 'required',
            'EmployerContr'  => 'required',
            
        ]);
       

            $health = prlhealthtype::where('id', $health_id)->firstOrFail();
            

            $health->healthname    = $request->input('HealthName');
            $health->description   = $request->input('Description');
            $health->rangefrom   =$request->input('RangeFrom');
            $health->rangeto   =$request->input('RangeTo');
            $health->employerph    = $request->input('EmployerContr');
            $health->employeeph   = $request->input('EmployeeContr');
            $health->employerec    = $request->input('EmployerContr');
            $health->total  = ($request->input('EmployerContr') +$request->input('EmployeeContr'));
            
            $health->save();

         
       return redirect("viewhealth")->with('status','Health  has been Updated.');
    }


     public function destroy($healthtype_id)
        {
   $health = prlhealthtype::findOrFail($healthtype_id);

   $health->delete();

      // return redirect()->route('tasks.index');
  return redirect()->back()->with("status", "Health successfully deleted!");
           }
}
