<?php
namespace App\Http\Controllers\job;


use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\job;
use App\Models\Jobgroup;
use App\Mailers\AppMailer;
use App\Http\Controllers\job\JobgroupsController;

class JobsController extends Controller
{
    public function index()
    {
        //main function

    	$pagetitle="Jobs";
        $jobs = job::paginate(10);
        $jobgroups = Jobgroup::all();;

        return view('job.index', compact('jobs', 'pagetitle','jobgroups'));
    }

    public function create()
    {
        $jobgroups = Jobgroup::all();
        $pagetitle="Add Job";

        return view('job.create', compact('pagetitle','jobgroups'));

    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'title'     => 'required',
            'jobGroup'  => 'required',
            'message'   => 'required'
        ]);

        $job = new job([
            'jobname'     => $request->input('title'),            
            'jobdesc'   => $request->input('message'),
            'jobgroup'   => $request->input('jobGroup')
        ]);

        $job->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
        $pagetitle="Jobs";
         $jobs = job::paginate(10);
        $jobgroups = Jobgroup::all();;

        return view('job.index', compact('jobs', 'pagetitle','jobgroups'))->with("status", "A Job Title has been Updated.");

        //return redirect()->back()->with("status", "A Job with Title has been created.");
    }

         
    public function show($job_id)
    {   
    	$pagetitle="Job View";
        $job= job::where('id', $job_id)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('job.show', compact('job','pagetitle'));
    }



     public function edit($job_id)
    {   
    	$pagetitle="Job Edit";
        $job= job::where('id', $job_id)->firstOrFail();
        $jobgroups = Jobgroup::all();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('job.edit', compact('job','pagetitle','jobgroups'));
    }



       public function update(Request $request, AppMailer $mailer,$job_id)
    {
        $this->validate($request, [
            'title'     => 'required',
            'jobGroup'  => 'required',
            'message'   => 'required'
        ]);
       

       $job = job::where('id', $job_id)->firstOrFail();

        $job->jobname = $request->input('title');
        $job->jobdesc = $request->input('message');
        $job->jobgroup=$request->input('jobGroup');

         $job->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
          $pagetitle="Jobs";
           $jobs = job::paginate(10);
        $jobgroups = Jobgroup::all();;

        return view('job.index', compact('jobs', 'pagetitle','jobgroups'))->with("status", "A Job Title has been Updated.");

       // return redirect()->back()->with("status", "A Job Title has been Updated.");
    }


     public function destroy($job_id)
        {
    $job = job::findOrFail($job_id);

    $job->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "Job successfully deleted!");
           }

           

}
