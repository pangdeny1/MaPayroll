<?php

namespace App\Http\Controllers\qualification;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\employeequalification;
use App\Models\Employee;
use App\Models\qualificationlevel;
use App\Models\institute;
use App\Mailers\AppMailer;
use App\Http\Controllers\job\JobgroupsController;

class qualificationlevelscontroller extends Controller
{
	 public function index()
    {
        
        $employees=Employee::All();
        $qualificationlevels=qualificationlevel::All();
        $institutions=institute::All();
        $pagetitle="qualificationlevels ";
        return view('qualificationlevels.index',compact('pagetitle','qualificationlevels','employees','levels','institutions','qualificationlevels','levels'));

    }
 public function create()
    {
        $employees=Employee::All();
        $qualificationlevels=qualificationlevel::All();
        $institutions=institute::All();
        $pagetitle="Add New qualificationlevel ";
        

        return view('qualificationlevels.create', compact('pagetitle','employees','levels','institutions','qualificationlevels','levels'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
           
            'QlevelName'     => 'required|unique:qualificationlevels',
            'QlevelDesc'     => 'required'
        ]);

        $qualificationlevel= new qualificationlevel([
            'qlevelname'     => $request->input('QlevelName'),
            'qleveldesc'     => $request->input('QlevelDesc')
            
        ]);

        $qualificationlevel->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $qualificationlevels=qualificationlevel::All();
         $pagetitle="qualificationlevels ";
         return view('qualificationlevels.index',compact('qualificationlevels','pagetitle'))->with("status", $request->input('qualificationlevelDesc')." qualificationlevel  Added Successfully.");
        //return redirect()->back()->with("status", $request->input('qualificationlevelDesc')." qualificationlevel  Added Successfully.");
    }


     public function show($qualificationlevel_id)
    {   
        $pagetitle="qualificationlevel View";
        $qualificationlevel= qualificationlevel::where('id', $qualificationlevel_id)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('qualificationlevels.show', compact('qualificationlevel','pagetitle'));
    }



     public function edit($qualificationlevel_id)
    {   
        $pagetitle="qualificationlevel Edit";
        $qualificationlevels= qualificationlevel::where('id', $qualificationlevel_id)->firstOrFail();
        //$qualificationlevels=qualificationlevel::All();
        $institutions=institute::All();
        
        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('qualificationlevels.edit', compact('pagetitle','employees','levels','institutions','qualificationlevels','qualificationlevel'));
   }



       public function update(Request $request, AppMailer $mailer,$qualificationlevel_id)
    {
        $this->validate($request, [
            'QlevelName'     => 'required',
            'QlevelDesc'     =>'required'
        ]);
       

            $qualificationlevel = qualificationlevel::where('id', $qualificationlevel_id)->firstOrFail();

             $qualificationlevel->qlevelname    = $request->input('QlevelName');
             $qualificationlevel->qleveldesc    = $request->input('QlevelDesc');
                     
             $qualificationlevel->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

         $qualificationlevels=qualificationlevel::All();
         $pagetitle="Qualification Levels ";
         
          return view('qualificationlevels.index', compact('qualificationlevels','pagetitle'))->with("status", "qualificationlevel  Updated Successfully");

       // return redirect()->back()->with("status", "A qualificationlevel Title has been Updated.");
    }


     public function destroy($qualificationlevel_id)
        {
    $qualificationlevels = qualificationlevel::findOrFail($qualificationlevel_id);

    $qualificationlevels->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "qualificationlevel successfully deleted!");
           }
}

