<?php

namespace App\Http\Controllers\form;

use Illuminate\Http\Request;
use App\Models\Form;
use App\Models\Employee;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;

class Formcontroller extends Controller
{

	public function index()
	{
		$pagetitle="Form List";
		$forms=Form::All();

		return view('forms.index',compact('pagetitle','forms'));
	}
     public function create()
    {
        $pagetitle="Forms";
        return view('forms.create',compact('pagetitle'));
    }

     public function createimage($employeeid)
    {
        $pagetitle="Create Image";
        $employees = Employee::where('employeeid', $employeeid)->firstOrFail();
        //$employees=Employee::All();
        //$employees=Employee::where('employeeid',1)->firstOrFail();
        return view('forms.employeeimage',compact('pagetitle','employees'));
    }

    public function store(Request $request)

    {

        $this->validate($request, [

                'filename' => 'required',
                'filename.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'

        ]);
        
        if($request->hasfile('filename'))
         {

            foreach($request->file('filename') as $image)
            {
                $name=$image->getClientOriginalName();
                $image->move(public_path().'/images/employees/', $name);  
                $data[] = $name;  
            }
         }

         $form= new Form();
         $form->filename=json_encode($data);
         
        
        $form->save();

        return back()->with('success', 'Your images has been successfully');
    }


    public function updateimage(Request $request)

    {

        $this->validate($request, [

                'filename' => 'required',
                'filename.*' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048'

        ]);
        
        if($request->hasfile('filename'))
         {

            foreach($request->file('filename') as $image)
            {
                $name=$image->getClientOriginalName();
                $image->move(public_path().'/assets/images/employees/', $name);  
                $data[] = $name;  
            }
         }
    $employeeid=$request->input('employee');
    $employee = Employee::where('employeeid', $employeeid)->firstOrFail();

    $employee->employeepicture     =json_encode($data);

        // $form= new Form();
        // $form->filename=json_encode($data);
         
        
       // $form->save();
        $employee->save();

       // return redirect()->action('employeemaster@edit', ['employeeid' => $employeeid]);
//return redirect()->route('editemployee', ['id' => $employeeid]);
return redirect()->to("/editemployee/".$employeeid."#tab-ninth")->with("status", "A Employee Picture has been Updated.");
       // return back()->with('success', 'Your images has been successfully');
    }
}
