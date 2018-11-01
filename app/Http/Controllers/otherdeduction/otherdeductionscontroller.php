<?php
namespace App\Http\Controllers\otherdeduction;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\Prlothdedfile;
use App\Models\Prlothdedctype;
use App\Models\otherdedtrans;
use App\Employee;
use App\Models\Payroll;
use App\Models\YesOrNo;
use App\Mailers\AppMailer;

class otherdeductionscontroller extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    
    public function index()
    {
        
        $pagetitle="otherdeductions ";
        $otherdedtypes=Prlothdedctype::All();
        $employees=Employee::All();
         $otherdeductions= Prlothdedfile::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("payroll_id", "LIKE", "%". request("q") ."%")
                    ->orWhere("othded_id", "LIKE", "%". request("q") ."%")
                    ->orWhere("othfiledesc", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('otherdeductions.index',compact('pagetitle','otherdeductions','employees','otherdedtypes'));

    }
 public function create()
    {
        $employees=Employee::All();
        
        $pagetitle="Add otherdeduction";
        $employees=Employee::All();
        $period=Payroll::where('payclosed',1)->firstOrFail();
        $otherdedtypes=Prlothdedctype::All();
        $yesornos=YesOrNo::All();

        return view('otherdeductions.create', compact('pagetitle','yesornos','employees','otherdedtypes','period'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
           
            'employee'     => 'required',
            'DateFrom'     => 'required',
            'DateTo'     => 'required',
            'Term'     => 'required',
            'otherdedtype'     => 'required',
            
        ]);

        $otherdeduction= new Prlothdedfile([
            
            'employee_id'     => $request->input('employee'),
            'payroll_id'     => $request->input('Period'),
            'othdate'     => $request->input('DateFrom'),
            'stopdate'     => $request->input('DateTo'),
            'othdedamount'     => $request->input('Amount'),
            'subamount'     => $request->input('SubAmount'),
            'othded_id'     => $request->input('otherdedtype'),
            'quantity'     => $request->input('quantity'),
            'amount_term'     => $request->input('Term'),
            'percent'     => $request->input('Percentage'),
            'recurrent'     => $request->input('Recurent'),
            'status'        => $request->input('Status'),
            'transaction_type'=>$request->input('Transaction')
            
              ]);

        $otherdeduction->save();

        return redirect("viewotherdeductions")->with('status','Deduction successfully created');
    }


     public function show($otherded_id)
    {   
        
        $otherdeduction= Prlothdedfile::where('id', $otherded_id)->firstOrFail();

        return view('otherdeductions.show', compact('otherdeduction','pagetitle'));
    }

   public function edit($otherded_id)
   {

    $pagetitle="otherdeduction Edit";
    $employees=Employee::All();
    $otherdedtypes=Prlothdedctype::All();
    $otherdeduction= Prlothdedfile::where('id', $otherded_id)->firstOrFail();
    $yesornos=YesOrNo::All();
    $period=Payroll::where('payclosed',1)->firstOrFail();

 return view('otherdeductions.edit', compact('otherdeduction','pagetitle','otherdedtypes','employees','yesornos','period'));
   }



       public function update(Request $request, AppMailer $mailer,$otherded_id)
    {
        $this->validate($request, [
           'employee'     => 'required',
            'DateFrom'     => 'required',
            'DateTo'     => 'required',
            'Term'     => 'required',
            'otherdedtype'  => 'required',
            
        ]);
       

            $otherdeduction = Prlothdedfile::where('id', $otherded_id)->firstOrFail();
            

            $otherdeduction->employee_id    = $request->input('employee');
            $otherdeduction->othdate   = $request->input('DateFrom');
            $otherdeduction->stopdate   = $request->input('DateTo');
            $otherdeduction->othdedamount   =$request->input('Amount');
            $otherdeduction->subamount    = $request->input('SubAmount');
            $otherdeduction->othded_id   = $request->input('otherdedtype');
            $otherdeduction->quantity    = $request->input('quantity');
            $otherdeduction->amount_term   = $request->input('Term');
            $otherdeduction->percent       =  $request->input('Percentage');
            $otherdeduction->recurrent     = $request->input('Recurent');
            $otherdeduction->status        = $request->input('Status');
            $otherdeduction->transaction_type=$request->input('Transaction');
        
            $otherdeduction->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

       
       return redirect("viewotherdeductions")->with('status',' otherdeduction Title has been Updated');

    }



     public function destroy($otherded_id)
        {
    $otherdeductions = Prlothdedfile::findOrFail($otherded_id);

    $otherdeductions->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "otherdeduction successfully deleted!");
           }
}
