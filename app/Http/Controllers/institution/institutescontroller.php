<?php

namespace App\Http\Controllers\institution;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\employeeinstitution;
use App\Models\Employee;
use App\Models\Country;
use App\Models\institute;
use App\Mailers\AppMailer;
use App\Http\Controllers\job\JobgroupsController;

class institutescontroller extends Controller
{
	
    public function index()
    {
        
        $institutions=institute::All();
        $countries=Country::All();
        $pagetitle="institutions ";
        return view('institutions.index',compact('pagetitle','institutions','countries','institutions','institutions','institutions','institutions'));

    }
 public function create()
    {
        $employees=Employee::All();
        $countries=Country::All();
        $institutions=institute::All();
        $pagetitle="Add New institution ";
        

        return view('institutions.create', compact('pagetitle','employees','institutions','countries'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
           
            'InstituteName'     => 'required|unique:institutions',
            'country'             =>'required'   
        ]);

        $institution= new institute([
            'institutename'     => $request->input('InstituteName'),
            'country'     => $request->input('country')
            
        ]);

        $institution->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $institutions=institute::All();
         $countries=Country::All();
        $pagetitle="institutions ";
         return view('institutions.index',compact('institutions','pagetitle','countries'))->with("status", $request->input('institutionDesc')." institution  Added Successfully.");
        //return redirect()->back()->with("status", $request->input('institutionDesc')." institution  Added Successfully.");
    }


     public function show($institution_id)
    {   
        $pagetitle="institution View";
        $institute= institute::where('id', $institution_id)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('institutions.show', compact('institute','pagetitle'));
    }



     public function edit($institution_id)
    {   
        $pagetitle="institution Edit";
        $institution= institute::where('id', $institution_id)->firstOrFail();
         $countries=Country::All();
        return view('institutions.edit', compact('pagetitle','employees','institution','countries'));
   }



       public function update(Request $request, AppMailer $mailer,$institution_id)
    {
        $this->validate($request, [
            'InstituteName'     => 'required',
            'country'             =>'required'
        ]);
       

            $institution = institute::where('id', $institution_id)->firstOrFail();

             $institution->institutename    = $request->input('InstituteName');
             $institution->country    = $request->input('country');
                     
             $institution->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

         $institutions=institute::All();
         $countries=Country::All();
         $pagetitle="institutions ";
    return view('institutions.index',compact('institutions','pagetitle','countries'))->with("status", $request->input('institutionDesc')." institution  Updated Successfully.");

       // return redirect()->back()->with("status", "A institution Title has been Updated.");
    }


     public function destroy($institution_id)
        {
    $institutions = institute::findOrFail($institution_id);

    $institutions->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "institution successfully deleted!");
           }
}
