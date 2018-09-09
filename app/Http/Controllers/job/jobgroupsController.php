<?php

namespace App\Http\Controllers\job;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\job;
use App\Models\Jobgroup;
use App\Mailers\AppMailer;
use App\Http\Controllers\job\JobgroupsController;

class jobgroupsController extends Controller
{
 
	public function index()
    {
         $pagetitle="jobgroups";
        $jobgroups = jobgroup::paginate(10);

        return view('jobgroups.index', compact('pagetitle','jobgroups'));

    }

     public function create()
    {
        
        $pagetitle="Add Job Groups";

        return view('jobgroups.create', compact('pagetitle'));

    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'jobgroupname'     => 'required|unique:jobgroups',
            'jobgroupdesc'     => 'required',
            'level'            => 'required'
        ]);

        $jobgroup = new jobgroup([
            'jobgroupname'     => $request->input('jobgroupname'),
            'jobgroupdesc'     => $request->input('jobgroupdesc'),
            'level'            =>  $request->input('level')

        ]);

        $jobgroup->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
        $pagetitle="jobgroups";
        $jobgroups = jobgroup::paginate(10);

       return view('jobgroups.index', compact('pagetitle','jobgroups'))->with("status", "A jobgroup with Title has been created.");

       // return redirect()->back()->with("status", "A jobgroup with Title has been created.");
    }
 public function show($jobgroupid)
    {   
        $pagetitle="jobgroup View";
        $jobgroup= jobgroup::where('id', $jobgroupid)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('jobgroups.show', compact('jobgroup','pagetitle'));
    }



     public function edit($jobgroupid)
    {   
        $pagetitle="Edit jobgroup";
        $jobgroup= jobgroup::where('id', $jobgroupid)->firstOrFail();
        
        return view('jobgroups.edit', compact('jobgroup','pagetitle'));
    }



       public function update(Request $request, AppMailer $mailer,$jobgroupid)
    {
        $this->validate($request, [
            'jobgroupname'     => 'required',
            'jobgroupdesc'     => 'required',
            'level'            => 'required'
            
            
        ]);
       

            $jobgroup = jobgroup::where('id', $jobgroupid)->firstOrFail();

             $jobgroup->jobgroupname    =$request->input('jobgroupname');
             $jobgroup->jobgroupdesc  =$request->input('jobgroupdesc');
             $jobgroup->level  =$request->input('level');
             

         $jobgroup->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $pagetitle="Jobgroups";
       
         $jobgroups = jobgroup::paginate(10);

          return view('jobgroups.index', compact('pagetitle','jobgroups'))->with("status", "A jobgroup Title has been Updated.");

       // return redirect()->back()->with("status", "A jobgroup Title has been Updated.");
    }


     public function destroy($jobgroupid)
        {
    $jobgroups = jobgroup::findOrFail($jobgroupid);

    $jobgroups->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "jobgroup successfully deleted!");
           }
           
}
