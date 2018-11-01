<?php

namespace App\Http\Controllers\otherincome;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\otherincome;
use App\Models\otherincometable;
use App\Models\otherincometrans;
use App\Employee;
use App\Models\Payroll;
use App\Models\YesOrNo;
use App\Models\Prlothinctype;
use App\Models\Prlothinfile;
use App\Mailers\AppMailer;

class otherincomescontroller extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
	{
        
        $pagetitle="otherincomes ";
        $incometypes=Prlothinctype::All();
        $employees=Employee::All();
        $otherincomes= Prlothinfile::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("employee_id", "LIKE", "%". request("q") ."%")
                    ->orWhere("othinc_id", "LIKE", "%". request("q") ."%")
                    ->orWhere("othfiledesc", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('otherincomes.index',compact('pagetitle','otherincomes','employees','incometypes'));

	}
 public function create()
    {
        $employees=Employee::All();
        
        $pagetitle="Add otherincome";
        $employees=Employee::All();
        $period=Payroll::where('payclosed',1)->firstOrFail();
        $incometypes=Prlothinctype::All();
        $yesornos=YesOrNo::All();

        return view('otherincomes.create', compact('pagetitle','yesornos','employees','incometypes','period'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
           
            'employee'      => 'required',
            'DateFrom'      => 'required',
            'DateTo'        => 'required',
            'Term'          => 'required',
            'incometype' => 'required',
            
        ]);

        $otherincome= new Prlothinfile([
            
            'employee_id'     => $request->input('employee'),
            'payroll_id'     => $request->input('Period'),
            'othdate'     => $request->input('DateFrom'),
            'stopdate'     => $request->input('DateTo'),
            'othincamount'     => $request->input('Amount'),
            'subamount'     => $request->input('SubAmount'),
            'othinc_id'     => $request->input('incometype'),
            'quantity'     => $request->input('quantity'),
            'amount_term'     => $request->input('Term'),
            'percent'     => $request->input('Percentage'),
            'recurrent'     => $request->input('Recurent'),
            'status'        => $request->input('Status'),
            'transaction_type'=>$request->input('Transaction')
            
              ]);

        $otherincome->save();
         return redirect("viewotherincomes")->with('status','A otherincome Title has been Updated.');
    }


     public function show($otherincome_id)
    {   
    	
        $otherincome= Prlothinfile::where('id', $otherincome_id)->firstOrFail();

        return view('otherincomes.show', compact('otherincome','pagetitle'));
    }

   public function edit($otherincome_id)
   {

    $pagetitle="otherincome Edit";
    $employees=Employee::All();
    $incometypes=Prlothinctype::All();
    $otherincome= Prlothinfile::where('id', $otherincome_id)->firstOrFail();
    $yesornos=YesOrNo::All();
    $period=Payroll::where('payclosed',1)->firstOrFail();

 return view('otherincomes.edit', compact('otherincome','pagetitle','incometypes','employees','yesornos','period'));
   }



       public function update(Request $request, AppMailer $mailer,$otherincome_id)
    {
        $this->validate($request, [
           'employee'     => 'required',
            'DateFrom'     => 'required',
            'DateTo'     => 'required',
            'Term'     => 'required',
            'incometype'  => 'required',
            
        ]);
       

            $otherincome = Prlothinfile::where('id', $otherincome_id)->firstOrFail();
            

            $otherincome->employee_id    = $request->input('employee');
            $otherincome->othdate   = $request->input('DateFrom');
            $otherincome->stopdate   = $request->input('DateTo');
            $otherincome->othincamount   =$request->input('Amount');
            $otherincome->subamount    = $request->input('SubAmount');
            $otherincome->othinc_id   = $request->input('incometype');
            $otherincome->quantity    = $request->input('quantity');
            $otherincome->amount_term   = $request->input('Term');
            $otherincome->percent       =  $request->input('Percentage');
            $otherincome->recurrent     = $request->input('Recurent');
            $otherincome->status        = $request->input('Status');
            $otherincome->transaction_type=$request->input('Transaction');
        
            $otherincome->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

         $otherincomes=Prlothinfile::All();
         $pagetitle="otherincomes ";
         
       return redirect("viewotherincomes")->with('status','A otherincome Title has been Updated.');
    }


     public function destroy($otherincome_id)
        {
    $otherincomes = Prlothinfile::findOrFail($otherincome_id);

    $otherincomes->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "otherincome successfully deleted!");
           }
}
