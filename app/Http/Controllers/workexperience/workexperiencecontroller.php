<?php

namespace App\Http\Controllers\workexperience;
use App\Models\Employee;
use App\Mailers\AppMailer;
use App\Models\WorkExperience;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class workexperiencecontroller extends Controller
{
    public function index()
	{
        $workexperiences=WorkExperience::All();
        $employees=Employee::All();
        
        $pagetitle="WorkExperiences ";
        return view('workexperience.index',compact('pagetitle','workexperiences','employees'));

	}
 public function create()
    {
        $workexperiences=WorkExperience::All();
        $employees=Employee::All();
        $pagetitle="Add New WorkExperience";
        

        return view('workexperience.create', compact('pagetitle','workexperiences','employees'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
           
            'employee'     => 'required',
            'CompanyName'     => 'required',
            'JobTitle'     => 'required',
            'StartDate'     => 'required',
            'EndDate'     => 'required'
        ]);

        $WorkExperience= new WorkExperience([
            'employeeid'     => $request->input('employee'),
            'companyname'     => $request->input('CompanyName'),
            'startdate'     => $request->input('StartDate'),
            'enddate'     => $request->input('EndDate'),
            'jobtitle'     => $request->input('JobTitle'),
            'email'     => $request->input('Email'),
            'website'     => $request->input('Website')
           
            
        ]);

        $WorkExperience->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
        $workexperiences=WorkExperience::All();
        $employees=Employee::All();
        
        $pagetitle="WorkExperiences ";
        return view('workexperience.index',compact('pagetitle','workexperiences','employees'))->with("status", $request->input('WorkExperienceDesc')." WorkExperience  Added Successfully.");
         //return view('workexperience.index',compact('WorkExperiences','pagetitle'))->with("status", $request->input('WorkExperienceDesc')." WorkExperience  Added Successfully.");
        
    }


     public function show($WorkExperience_id)
    {   
    	$pagetitle="WorkExperience View";
        $WorkExperience= WorkExperience::where('id', $WorkExperience_id)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('workexperience.show', compact('WorkExperience','pagetitle'));
    }



     public function edit($WorkExperience_id)
    {   
    	$pagetitle="WorkExperience Edit";
        $workexperience=WorkExperience::where('id', $WorkExperience_id)->firstOrFail();
        $employees=Employee::All();

        return view('workexperience.edit', compact('pagetitle','workexperience','employees'));
   }



       public function update(Request $request, AppMailer $mailer,$WorkExperience_id)
    {
        $this->validate($request, [
            'employee'     => 'required',
            'CompanyName'     => 'required',
            'JobTitle'     => 'required',
            'StartDate'     => 'required',
            'EndDate'     => 'required'
        ]);
       

            $WorkExperience = WorkExperience::where('id', $WorkExperience_id)->firstOrFail();

            $WorkExperience->employeeid     = $request->input('employee');
            $WorkExperience->companyname    = $request->input('CompanyName');
            $WorkExperience->jobtitle       = $request->input('JobTitle');
            $WorkExperience->startdate      = $request->input('StartDate');
            $WorkExperience->enddate        = $request->input('EndDate');
            $WorkExperience->email          = $request->input('Email');
            $WorkExperience->website        = $request->input('Website');
        
             $WorkExperience->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $workexperiences=WorkExperience::All();
         $pagetitle="WorkExperiences ";
         //return view('workexperience.index',compact('WorkExperiences','pagetitle'))->with("status", $request->input('WorkExperienceDesc')." WorkExperience  Added Successfully.");
         $pagetitle="WorkExperiences ";
         $employees=Employee::All();
        return view('workexperience.index',compact('pagetitle','workexperiences','employees'))->with("status", $request->input('WorkExperienceDesc')." WorkExperience  Updated Successfully.");
        //return redirect()->back()->with("status", $request->input('WorkExperienceDesc')." WorkExperience  Updated Successfully.");
       // return redirect()->back()->with("status", "A WorkExperience Title has been Updated.");
    }


     public function destroy($WorkExperience_id)
        {
    $workexperiences = WorkExperience::findOrFail($WorkExperience_id);

    $workexperiences->delete();
    
      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "WorkExperience successfully deleted!");
           }
}
