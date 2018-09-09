<?php

namespace App\Http\Controllers\otherincome;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\otherincome;
use App\Models\otherincometable;
use App\Models\otherincometrans;
use App\Models\Employee;
use App\Models\Payroll;
use App\Models\YesOrNo;
use App\Mailers\AppMailer;

class otherincomescontroller extends Controller
{
    public function index()
	{
        
        $pagetitle="otherincomes ";
        $otherincomes=otherincome::All();
        $employees=Employee::All();
        return view('otherincomes.index',compact('pagetitle','otherincomes','employees'));

	}
 public function create()
    {
        $employees=Employee::All();
        
        $pagetitle="Add otherincome";
        $employees=Employee::All();
        $period=Payroll::where('payclosed',1)->firstOrFail();
        $deductiontypes=otherincometable::All();
        $yesornos=YesOrNo::All();

        return view('otherincomes.create', compact('pagetitle','yesornos','employees','deductiontypes','period'));
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

        $otherincome= new otherincome([
            
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

        $otherincome->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);
         $otherincomes=otherincome::All();
         $pagetitle="otherincomes ";
         //return view('otherincomes.index',compact('otherincomes','pagetitle'))->with("status", $request->input('otherincomeDesc')." otherincome  Added Successfully.");
        return redirect()->back()->with("status", $request->input('otherincomeDesc')." otherincome  Added Successfully.");
    }


     public function show($otherincome_id)
    {   
    	$pagetitle="otherincome View";
        $otherincome= otherincome::where('counterindex', $otherincome_id)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('otherincomes.show', compact('otherincome','pagetitle'));
    }



     public function edit($otherincome_id)
    {   
    	$pagetitle="otherincome Edit";
        $employees=Employee::All();
        
        $deductiontypes=otherincometable::All();
        $otherincome=otherincome::where('counterindex',$otherincome_id)->firstOrFail();
        $yesornos=YesOrNo::All();
        $period=Payroll::where('id',$otherincome->payrollid)->firstOrFail();
        return view('otherincomes.edit', compact('pagetitle','yesornos','employees','deductiontypes','period','otherincome'));
   }



       public function update(Request $request, AppMailer $mailer,$otherincome_id)
    {
        $this->validate($request, [
           'employee'     => 'required',
            'DateFrom'     => 'required',
            'DateTo'     => 'required',
            'Term'     => 'required',
            'deductiontype'     => 'required',
            
        ]);
       

            $otherincome = otherincome::where('counterindex', $otherincome_id)->firstOrFail();
            

            $otherincome->employeeid    = $request->input('employee');
            $otherincome->payrollid    = $request->input('Period');
            $otherincome->othdate   = $request->input('DateFrom');
            $otherincome->stopdate   = $request->input('DateTo');
            $otherincome->othincamount   =$request->input('Amount');
            $otherincome->subamount    = $request->input('SubAmount');
            $otherincome->othincid   = $request->input('deductiontype');
            $otherincome->quantity    = $request->input('quantity');
            $otherincome->amount_term   = $request->input('Term');
            $otherincome->percent       =  $request->input('Percentage');
            $otherincome->recurrent     = $request->input('Recurent');
            $otherincome->status        = $request->input('Status');
            $otherincome->transaction_type=$request->input('Transaction');
        
             $otherincome->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

         $otherincomes=otherincome::All();
         $pagetitle="otherincomes ";
         
         // return view('otherincomes.index', compact('otherincomes','pagetitle'))->with("status", "otherincome  Updated Successfully");

       return redirect()->back()->with("status", "A otherincome Title has been Updated.");
    }


     public function destroy($otherincome_id)
        {
    $otherincomes = otherincome::findOrFail($otherincome_id);

    $otherincomes->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "otherincome successfully deleted!");
           }
}
