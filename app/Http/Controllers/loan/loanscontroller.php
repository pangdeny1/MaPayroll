<?php

namespace App\Http\Controllers\loan;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\Prlloanfile;
use App\Models\Prlloantype;
use App\Models\Prlloantransaction;
use App\Employee;
use App\Models\Payroll;
use App\Models\YesOrNo;
use App\Mailers\AppMailer;

class loanscontroller extends Controller
{
 public function index()
	{
        
        $pagetitle="loans ";
        //$loans=Prlloanfile::All();

        $employees=Employee::All();
        $loantypes=Prlloantype::All();

         $loans= Prlloanfile::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("payroll_id", "LIKE", "%". request("q") ."%")
                    ->orWhere("loantype_id", "LIKE", "%". request("q") ."%")
                    ->orWhere("loanfiledesc", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
         
        return view('loans.index',compact('pagetitle','loans','employees','loantypes'));

	}
 public function create()
    {
        $employees=Employee::All();
        
        $pagetitle="Add loan";
        $employees=Employee::where('active',"yes")->get();
        $period=Payroll::where('payclosed',1)->firstOrFail();
        $loantypes=Prlloantype::All();
        $yesornos=YesOrNo::All();

        return view('loans.create', compact('pagetitle','yesornos','employees','loantypes','period'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
           
            'employee'     => 'required',
            'LoanDate'     => 'required',
            'StartDeduction'     => 'required',
            'Term'     => 'required',
            'loantype'     => 'required',
            'LoanDesc'     => 'required',
            'Amount'       =>'required',
            'LoanBalance'  =>'required'
            
        ]);

        $loan= new Prlloanfile([
            
            'employee_id'     => $request->input('employee'),
            'loanfiledesc'     => $request->input('LoanDesc'),
            'payroll_id'     => $request->input('Period'),
            'loandate'     => $request->input('LoanDate'),
            'startdeduction'     => $request->input('StartDeduction'),
            'loanamount'     => $request->input('Amount'),
            'loantype_id'     => $request->input('loantype'),
            'quantity'     => $request->input('quantity'),
            'amount_term'     => $request->input('Term'),
            'percent'     => $request->input('Percentage'),
            'loanbalance'  =>$request->input('LoanBalance'),
            'status'        => $request->input('Status'),
            'transaction_type'=>$request->input('Transaction')
            
              ]);

        $loan->save();

      
        return redirect("viewloans")->with('status',' loan  Added Successfully.');
    }


     public function show($loan_id)
    {   
    	$pagetitle="loan View";
        $loan= Prlloanfile::where('id', $loan_id)->firstOrFail();

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('loans.show', compact('loan','pagetitle'));
    }



     public function edit($loan_id)
    {   
    	$pagetitle="loan Edit";
        $employees=Employee::All();
        
        $loantypes=Prlloantype::All();
        $loan=Prlloanfile::where('id',$loan_id)->firstOrFail();
        $yesornos=YesOrNo::All();
        $period=Payroll::where('id',1)->firstOrFail();
        return view('loans.edit', compact('pagetitle','yesornos','employees','loantypes','period','loan'));
   }



       public function update(Request $request, AppMailer $mailer,$loan_id)
    {
        $this->validate($request, [
           'employee'     => 'required',
            'LoanDate'     => 'required',
            'StartDeduction'     => 'required',
            'Term'     => 'required',
            'loantype'     => 'required',
            'LoanDesc'     => 'required',
            'Amount'       =>'required',
            'Amortization' =>'required',
            'LoanBalance'  =>'required'
            
        ]);
       

            $loan = Prlloanfile::where('id', $loan_id)->firstOrFail();
            

            $loan->employee_id    = $request->input('employee');
            $loan->loanfiledesc     = $request->input('LoanDesc');
            $loan->payroll_id    = $request->input('Period');
            $loan->loandate   = $request->input('LoanDate');
            $loan->startdeduction   = $request->input('StartDeduction');
            $loan->loanamount   =$request->input('Amount');
            $loan->amortization    = $request->input('Amortization');
            $loan->loantype_id  = $request->input('loantype');
            $loan->amount_term   = $request->input('Term');
            $loan->percent       =  $request->input('Percentage');
            $loan->status        = $request->input('Status');
            $loan->transaction_type=$request->input('Transaction');
            $loan->loanbalance  =$request->input('LoanBalance');
        
            $loan->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

         $loans=Prlloanfile::All();
         $pagetitle="loans ";
         
         // return view('loans.index', compact('loans','pagetitle'))->with("status", "loan  Updated Successfully");

       return redirect()->back()->with("status", "A loan Title has been Updated.");
    }


     public function destroy($loan_id)
        {
    $loans = Prlloanfile::findOrFail($loan_id);

    $loans->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "loan successfully deleted!");
           }
}
