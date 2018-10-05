<?php

namespace App\Http\Controllers\otherdeduction;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\otherdeduction;
use App\Models\otherdedtable;
use App\Models\otherdedtrans;
use App\Models\Employee;
use App\Models\Payroll;
use App\Models\YesOrNo;
use App\Mailers\AppMailer;

class otherdeductionscontroller extends Controller
{
    public function index()
	{
        
        $pagetitle="Otherdeductions ";
        $otherdeductions=otherdeduction::All();
        $employees=Employee::All();
        return view('otherdeductions.index',compact('pagetitle','otherdeductions','employees'));

	}
 public function create()
    {
        $employees=Employee::All();
        
        $pagetitle="Add Otherdeduction";
        $employees=Employee::All();
        $period=Payroll::where('payclosed',1)->firstOrFail();
        $deductiontypes=otherdedtable::All();
        $yesornos=YesOrNo::All();

        return view('otherdeductions.create', compact('pagetitle','yesornos','employees','deductiontypes','period'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
           
            'employee'     => 'required',
            'DateFrom'     => 'required',
            'DateTo'     => 'required',
            'Term'     => 'required',
            'deductiontype'     => 'required',
            
        ]);

        $otherdeduction= new otherdeduction([
            
            'employeeid'     => $request->input('employee'),
            'payrollid'     => $request->input('Period'),
            'othdate'     => $request->input('DateFrom'),
            'stopdate'     => $request->input('DateTo'),
            'othincamount'     => $request->input('Amount'),
            'subamount'     => $request->input('SubAmount'),
            'othincid'     => $request->input('deductiontype'),
            'quantity'     => $request->input('quantity'),
            'amount_term'     => $request->input('Term'),
            'percent'     => $request->input('Percentage'),
            'recurrent'     => $request->input('Recurent'),
            'status'        => $request->input('Status'),
            'transaction_type'=>$request->input('Transaction')
            
              ]);

        $otherdeduction->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $otherdeductions=otherdeduction::All();
         $pagetitle="otherdeductions ";
         //return view('otherdeductions.index',compact('otherdeductions','pagetitle'))->with("status", $request->input('otherdeductionDesc')." otherdeduction  Added Successfully.");
        return redirect()->back()->with("status", $request->input('otherdeductionDesc')." otherdeduction  Added Successfully.");
    }


     public function show($otherdeduction_id)
    {   
    	$pagetitle="otherdeduction View";
        $otherdeduction= otherdeduction::where('counterindex', $otherdeduction_id)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('otherdeductions.show', compact('otherdeduction','pagetitle'));
    }



     public function edit($otherdeduction_id)
    {   
    	$pagetitle="Otherdeduction Edit";
        $employees=Employee::All();
        
        $deductiontypes=otherdedtable::All();
        $otherdeduction=otherdeduction::where('counterindex',$otherdeduction_id)->firstOrFail();
        $yesornos=YesOrNo::All();
        $period=Payroll::where('id',$otherdeduction->payrollid)->firstOrFail();
        return view('otherdeductions.edit', compact('pagetitle','yesornos','employees','deductiontypes','period','otherdeduction'));
   }



       public function update(Request $request, AppMailer $mailer,$otherdeduction_id)
    {
        $this->validate($request, [
           'employee'     => 'required',
            'DateFrom'     => 'required',
            'DateTo'     => 'required',
            'Term'     => 'required',
            'deductiontype'     => 'required',
            
        ]);
       

            $otherdeduction = otherdeduction::where('counterindex', $otherdeduction_id)->firstOrFail();
            

            $otherdeduction->employeeid    = $request->input('employee');
            $otherdeduction->payrollid    = $request->input('Period');
            $otherdeduction->othdate   = $request->input('DateFrom');
            $otherdeduction->stopdate   = $request->input('DateTo');
            $otherdeduction->othincamount   =$request->input('Amount');
            $otherdeduction->subamount    = $request->input('SubAmount');
            $otherdeduction->othincid   = $request->input('deductiontype');
            $otherdeduction->quantity    = $request->input('quantity');
            $otherdeduction->amount_term   = $request->input('Term');
            $otherdeduction->percent       =  $request->input('Percentage');
            $otherdeduction->recurrent     = $request->input('Recurent');
            $otherdeduction->status        = $request->input('Status');
            $otherdeduction->transaction_type=$request->input('Transaction');
        
             $otherdeduction->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

         $otherdeductions=otherdeduction::All();
         $pagetitle="otherdeductions ";
         
         // return view('otherdeductions.index', compact('otherdeductions','pagetitle'))->with("status", "otherdeduction  Updated Successfully");

       return redirect()->back()->with("status", "A otherdeduction Title has been Updated.");
    }


     public function destroy($otherdeduction_id)
        {
    $otherdeductions = otherdeduction::findOrFail($otherdeduction_id);

    $otherdeductions->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "otherdeduction successfully deleted!");
           }
}
