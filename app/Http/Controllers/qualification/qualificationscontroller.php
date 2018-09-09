<?php

namespace App\Http\Controllers\qualification;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\employeequalification;
use App\Models\Employee;
use App\Models\qualification;
use App\Models\institute;
use App\Models\qualificationlevel;
use App\Mailers\AppMailer;
use App\Http\Controllers\job\JobgroupsController;


class qualificationscontroller extends Controller
{
   
    public function index()
    {
        $qualifications=qualification::All();
        $employees=Employee::All();
        $qualifications=qualification::All();
        $institutions=institute::All();
        $levels=qualificationlevel::All();
        $pagetitle="qualifications ";
        return view('qualifications.index',compact('pagetitle','qualifications','employees','levels','institutions','qualifications','levels'));

    }
 public function create()
    {
        $employees=Employee::All();
        $qualifications=qualification::All();
        $institutions=institute::All();
        $levels=qualificationlevel::All();
        $pagetitle="Add New qualification ";
        

        return view('qualifications.create', compact('pagetitle','employees','levels','institutions','qualifications','levels'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
           
            'QualificationName'     => 'required|unique:qualifications'
        ]);

        $qualification= new qualification([
            'qualificationname'     => $request->input('QualificationName')
            
        ]);

        $qualification->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $qualifications=qualification::All();
         $pagetitle="qualifications ";
         return view('qualifications.index',compact('qualifications','pagetitle'))->with("status", $request->input('qualificationDesc')." qualification  Added Successfully.");
        //return redirect()->back()->with("status", $request->input('qualificationDesc')." qualification  Added Successfully.");
    }


     public function show($qualification_id)
    {   
        $pagetitle="qualification View";
        $qualification= qualification::where('id', $qualification_id)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('qualifications.show', compact('qualification','pagetitle'));
    }



     public function edit($qualification_id)
    {   
        $pagetitle="qualification Edit";
        $qualification= qualification::where('id', $qualification_id)->firstOrFail();
        $employees=Employee::All();
        $qualifications=qualification::All();
        $institutions=institute::All();
        $levels=qualificationlevel::All();
        
        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('qualifications.edit', compact('pagetitle','employees','levels','institutions','qualifications','qualification'));
   }



       public function update(Request $request, AppMailer $mailer,$qualification_id)
    {
        $this->validate($request, [
            'QualificationName'     => 'required'
        ]);
       

            $qualification = qualification::where('id', $qualification_id)->firstOrFail();

             $qualification->qualificationname    = $request->input('QualificationName');
                     
             $qualification->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

         $qualifications=qualification::All();
         $pagetitle="Qualifications ";
         
          return view('qualifications.index', compact('qualifications','pagetitle'))->with("status", "qualification  Updated Successfully");

       // return redirect()->back()->with("status", "A qualification Title has been Updated.");
    }


     public function destroy($qualification_id)
        {
    $qualifications = qualification::findOrFail($qualification_id);

    $qualifications->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "qualification successfully deleted!");
           }
}


