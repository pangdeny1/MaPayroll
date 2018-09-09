<?php

namespace App\Http\Controllers\department;

use Illuminate\Http\Request;
use App\Models\Department;
use App\Mailers\AppMailer;
use App\Http\Controllers\Controller;

class DepartmentsController extends Controller
{

	public function index()
    {
         $pagetitle="Departments";
        $departments = department::paginate(10);

        return view('departments.index', compact('pagetitle','departments'));

    }

     public function create()
    {
        
        $pagetitle="Add Department";

        return view('departments.create', compact('pagetitle'));

    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'departmentname'     => 'required',
            'departmentlocation'     => 'required'
        ]);

        $department = new department([
            'departmentname'     => $request->input('departmentname'),
            'departmentlocation'     => $request->input('departmentlocation')

        ]);

        $department->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
        $pagetitle="departments";
        $departments = department::paginate(10);

          return view('departments.index', compact('pagetitle','departments'))->with("status", "A Department with Title has been created.");

       // return redirect()->back()->with("status", "A Department with Title has been created.");
    }
 public function show($departmentid)
    {   
        $pagetitle="department View";
        $department= department::where('id', $departmentid)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('departments.show', compact('department','pagetitle'));
    }



     public function edit($departmentid)
    {   
        $pagetitle="Edit department";
        $department= department::where('id', $departmentid)->firstOrFail();
        
        return view('departments.edit', compact('department','pagetitle'));
    }



       public function update(Request $request, AppMailer $mailer,$departmentid)
    {
        $this->validate($request, [
            'departmentname'     => 'required',
            
            
        ]);
       

            $department = department::where('id', $departmentid)->firstOrFail();

             $department->departmentname    =$request->input('departmentname');
             $department->departmentlocation  =$request->input('departmentlocation');
             

         $department->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $pagetitle="departments";
       
         $departments = department::paginate(10);

          return view('departments.index', compact('pagetitle','departments'))->with("status", "A department Title has been Updated.");

       // return redirect()->back()->with("status", "A department Title has been Updated.");
    }


     public function destroy($departmentid)
        {
    $departments = department::findOrFail($departmentid);

    $departments->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "department successfully deleted!");
           }
}
