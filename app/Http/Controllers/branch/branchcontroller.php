<?php

namespace App\Http\Controllers\branch;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Mailers\AppMailer;
use App\Models\Branch;

class branchcontroller extends Controller
{
    public function index()
    {
        $pagetitle="Branches";
        $branches = branch::paginate(10);

        return view('branch.index', compact('pagetitle','branches'));
    }

     public function create()
    {
        
        $pagetitle="Add Branch";

        return view('branch.create', compact('pagetitle'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'branchname'     => 'required|unique:branches'
        ]);

        $branch = new Branch([
            'branchname'     => $request->input('branchname'),
            'branclocation'  =>$request->input('branclocation')
        ]);

        $branch->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

        $pagetitle="Branches";
        $branches = branch::paginate(10);
         return view('branch.index', compact('pagetitle','branches'))->with("status", "A Branch with Title has been created.");

       // return redirect()->back()->with("status", "A Branch with Title has been created.");
    }
 public function show($branchid)
    {   
        $pagetitle="branch View";
        $branch= branch::where('id', $branchid)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('branch.show', compact('branch','pagetitle'));
    }



     public function edit($branchid)
    {   
        $pagetitle="Edit Branch";
        $branch= branch::where('id', $branchid)->firstOrFail();
        
        return view('branch.edit', compact('branch','pagetitle'));
    }



       public function update(Request $request, AppMailer $mailer,$branchid)
    {
        $this->validate($request, [
            'branchname'     => 'required',
            
            
        ]);
       

            $branch = branch::where('id', $branchid)->firstOrFail();

             $branch->branchname    =$request->input('branchname');
             $branch->branclocation   =$request->input('branclocation');
             

         $branch->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $pagetitle="Branches";
        $branches = branch::paginate(10);

          return view('branch.index', compact('pagetitle','branches'))->with("status", "A branch Title has been Updated.");

       // return redirect()->back()->with("status", "A branch Title has been Updated.");
    }


     public function destroy($branchid)
        {
    $branches = branch::findOrFail($branchid);

    $branches->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "branch successfully deleted!");
           }
}
