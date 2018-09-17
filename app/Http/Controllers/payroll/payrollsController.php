<?php

namespace App\Http\Controllers\payroll;

use Illuminate\Http\Request;
//use App\Models\Employee;
use App\Models\Payroll;
use App\Models\Salary;
use App\prltransaction;
use App\Employee;
use App\Mailers\AppMailer;
use App\Models\YesOrNo;
use App\Models\Year;
use DB;
use App\Models\Prldailytran;
use App\Models\Prlsstransaction;
use App\Models\Prlssfile;
use App\Models\Month;
use App\Models\Payperiod;
use App\Models\Prlothintransaction;
use App\Models\Prlothinfile;
use app\Models\Prlothintype;
use App\Models\Prlothdedtransaction;
use App\Models\Prlothdedfile;
use app\Models\Prlothdedtype;
use App\Http\Controllers\Controller;

class payrollsController extends Controller
{
	public function index()
	{

             $payrolls= Payroll::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("payrollid", "LIKE", "%". request("q") ."%")
                    ->orWhere("payrolldesc", "LIKE", "%". request("q") ."%");
            })
            ->paginate();
         $pagetitle="Payrolls ";
        return view('payrolls.index',compact('payrolls','pagetitle'));

	}
 public function create()
    {
        
        $pagetitle="Add New Payroll Period";
        $yesornos =YesOrNo::All();
        $employees=Employee::All();
        $years=Year::All();
        $months=Month::All();
        $payperiods     =Payperiod::All();

        return view('payrolls.create', compact('pagetitle','payperiods','employees','years','yesornos','months'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'PayrollID'     => 'required|unique:prlpayrollperiod',
            'PayrollDesc'     => 'required',
            'StartDate'     => 'required',
            'EndDate'     => 'required',
            'FSMonth'     => 'required',
            'FSYear'     => 'required',
            'DeductSSS'     => 'required',
            'DeductHdmf'     => 'required',
            'DeductHealth'     => 'required',
            'payperiod'       =>'required'
        ]);

        $payroll= new Payroll([
            'payrollid'     => $request->input('PayrollID'),
            'payrolldesc'     => $request->input('PayrollDesc'),
            'startdate'     => $request->input('StartDate'),
            'enddate'     => $request->input('EndDate'),
            'fsmonth'     => $request->input('FSMonth'),
            'fsyear'     => $request->input('FSYear'),
            'deductsss'     => $request->input('DeductSSS'),
            'deducthdmf'     => $request->input('DeductHdmf'),
            'deductphilhealth'     => $request->input('DeductHealth'),
            'payperiodid'     => $request->input('payperiod')
        ]);

        $payroll->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

        return redirect()->back()->with("status", $request->input('PayrollDesc')." Payroll  Added Successfully.");
    }


     public function show($payroll_id)
    {   
    	$pagetitle="Payroll Records Maintenance";
        $payroll= payroll::where('id', $payroll_id)->firstOrFail();
        //$employees= Employee::where('active', 1)->where('payperiodid',$payroll->payperiodid)->get();
        $employees=Employee::where("active","yes")->get();
        $payperiods     =Payperiod::All();
         //$employees= Employee::All();

        return view('payrolls.show', compact('payroll','pagetitle','employees','payperiods'));
    }

    public function generate($payroll_id)
    {
        $employees=Employee::where("active","yes")->get();

         $payrollObj= new payrollsController();
        if($payrollObj->closedOpenedStatusCheck($payroll_id)=="Closed")
        {
          return redirect()->back()->with("status_error", "Cannot Generate payroll data, Payroll is already closed!"); 
            
        }
        $payrollObj->destroyTrans($payroll_id);
        $payrollObj->preparePayrollData($employees,$payroll_id);
        $payrollObj->prepareOthInData($payroll_id);
        $payrollObj->prepareOthDedData($payroll_id);
        $payrollObj->calculateBasicPay($payroll_id);
        $payrollObj->calculateGrossPay($payroll_id);
        $payrollObj->prepareSSData($payroll_id);
        $payrollObj->calculateTaxableAmount($payroll_id);
        return redirect()->back()->with("status", "Payroll data successfully generated");
    }

    public function preparePayrollData($employees,$payroll_id)
    {
        $payrollObj= new payrollsController();
        

     foreach($employees as $employee) {
                  $inserts[] = [ 'period_rate' => $employee->period_rate,
                                 'hourly_rate' => $employee->hourly_rate,
                                 'employee_id' => $employee->id,
                                 'payroll_id' =>$payroll_id,
                                 'reg_hours'  =>$payrollObj->calculateTotalEmployeeDailyTrans($payroll_id,$employee->id),
                                 'pay_type' =>$employee->pay_type,
                                 "creator_id" => auth()->id()
                               ]; 
                       }

              DB::table('prltransactions')->insert($inserts);
              return redirect()->back()->with("status", "payroll data prepared successfully!");
    }

     public function void($payroll_id)
    {  
        $payrollObj= new payrollsController();
        if($payrollObj->closedOpenedStatusCheck($payroll_id)=="Closed")
        {
          return redirect()->back()->with("status_error", "Cannot Void Payroll is closed!"); 
            
        }
            
        $payrollObj->destroyTrans($payroll_id);
        return redirect()->back()->with("status", "payroll successfully voided!");
    }

     public function close($payroll_id)
    {
         $payrollObj= new payrollsController();
        if($payrollObj->closedOpenedStatusCheck($payroll_id)=="Closed")
        {
          return redirect()->back()->with("status_error", "Cannot Close Payroll is already closed!"); 
            
        }
       //put validation  to check if Payroll is first generated because you cant close open payroll

        $payroll= payroll::where('id', $payroll_id)->firstOrFail();

        $payroll->update([
            "payclosed" =>2
            ]);
        return redirect()->back()->with("status", "payroll Closed successfully!");
    }

     public function open($payroll_id)
    {
        $payroll= payroll::where('id', $payroll_id)->firstOrFail();

        $payroll->update([
            "payclosed" =>1
            ]);
        return redirect()->back()->with("status", "payroll Opened successfully!");
    }
   
   public function closedOpenedStatusCheck($payroll_id)
   {
     $payroll= payroll::where('id', $payroll_id)->firstOrFail();
     if($payroll->payclosed==1)

        return "Open";
    else if($payroll->payclosed==2)
        return "Closed";
    else 
        return "Not Applicable";

   }

   public function payrollGenerated($payroll_id)
   {
     $payrollTrans= prltransaction::where('payroll_id', $payroll_id)->firstOrFail();
     if($payrollTrans->count > 0)

        return "Generated";
    
    else 
        return "NotGenerated";

   }


     public function edit($payroll_id)
    {   
    	$pagetitle="payroll Edit";
        $payroll= payroll::where('id', $payroll_id)->firstOrFail();
        $yesornos =YesOrNo::All();
        $employees=Employee::All();
        $years=Year::All();
        $months=Month::All();
        $payperiods     =Payperiod::All();

        

        //$comments = $ticket->comments;

        //$category = $ticket->category;

        return view('payrolls.edit', compact('payroll','payperiods','pagetitle','years','employees','yesornos','months'));
    }



       public function update(Request $request, AppMailer $mailer,$payroll_id)
    {
        $this->validate($request, [
            'PayrollID'     => 'required',
            'PayrollDesc'     => 'required',
            'StartDate'     => 'required',
            'EndDate'     => 'required',
            'FSMonth'     => 'required',
            'FSYear'     => 'required',
            'DeductSSS'     => 'required',
            'DeductHdmf'     => 'required',
            'DeductHealth'     => 'required',
            'payperiod'        =>'required'
        ]);
       

            $payroll = payroll::where('id', $payroll_id)->firstOrFail();

             $payroll->payrollid     =$request->input('PayrollID');
             $payroll->payrolldesc    =$request->input('PayrollDesc');
             $payroll->startdate    = $request->input('StartDate');
             $payroll->enddate   =$request->input('EndDate');
             $payroll->fsmonth    = $request->input('FSMonth');
             $payroll->fsyear   = $request->input('FSYear');
             $payroll->deductsss    = $request->input('DeductSSS');
             $payroll->deducthdmf    = $request->input('DeductHdmf');
             $payroll->deductphilhealth     = $request->input('DeductHealth');
             $payroll->payperiodid    =$request->input('payperiod');

         $payroll->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

        return redirect()->back()->with("status", "A payroll Title has been Updated.");
    }


     public function destroy($payroll_id)

        {
         $payrollObj= new payrollsController();
        if($payrollObj->closedOpenedStatusCheck($payroll_id)=="Closed")
        {
          return redirect()->back()->with("status_error", "Cannot delete,Payroll is Closed!"); 
            
        }
       
            $payrolls = payroll::findOrFail($payroll_id);

            $payrolls->delete();

      // return redirect()->route('tasks.index');
     return redirect()->back()->with("status", "payroll successfully deleted!");
        
    
           }

            public function destroyTrans($payroll_id)
        
                 {
           $payrolls = prltransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($payrolls as $payroll)
               {
   
            $payroll->delete();
    
            }

        return redirect()->back()->with("status", "payroll successfully voided!");
     
     }

         public function calculateBasicPay($payroll_id)
        
                 {
                    
           $payrolls = prltransaction::where('payroll_id',$payroll_id)->get();
           $payrollObj=new payrollsController();
     
            foreach ($payrolls as $payroll)
               {
            if($payroll->pay_type=="Hourly")
            {
                $payroll->update([
            "basicpay" =>($payroll->hourly_rate * $payroll->reg_hours),
            
                 ]);
            }
            else if($payroll->pay_type=="Salary")
            {
               $payroll->update([
            "basicpay" =>$payroll->period_rate,
           
                 ]);  
            }
            else
            {
                  $payroll->update([
            "basicpay" =>0
                 ]);  
            }
           
    
            }

        return redirect()->back()->with("status", "payroll successfully voided!");
     
     }
     public function calculateTotalEmployeeDailyTrans($payroll_id,$employee_id)
     {
        $dailyTrans=Prldailytran::where("employee_id",$employee_id)->where("payroll_id",$payroll_id)->get();
         $reg_hours=0;
         foreach ($dailyTrans as $dailyTran) {
           
            $reg_hours+=$dailyTran->reg_hours;
        }

        return $reg_hours;
     }

     //calculate gross

     public function calculateGrossPay($payroll_id)
     {
        
        $payrolls=Prltransaction::where("payroll_id",$payroll_id)->get();
         
         foreach ($payrolls as $payroll) {
           
            $payroll->update(["grosspay"=>($payroll->basicpay + $payroll->other_income)
            ]);
        }

     
         return redirect()->back()->with("status", "payroll data prepared successfully!");
    
     }

     //calculate SS

     public function calculateTotalEmployeeOtherIncome($payroll_id,$employee_id)
     {
        
        $employeeOtherIncomes=Prlothintransaction::where("employee_id",$employee_id)->where("payroll_id",$payroll_id)->get();
         $eotherincome=0;
         foreach ($employeeOtherIncomes as $employeeOtherIncome) {
           
            $eotherincome+=$employeeOtherIncome->amount;
        }

     
    return $eotherincome;
     }

      public function calculateTotalEmployeeOtherDeduction($payroll_id,$employee_id)
     {
        
        $employeeotherdeductions=Prlothdedtransaction::where("employee_id",$employee_id)->where("payroll_id",$payroll_id)->get();
         $eotherdeduction=0;
         foreach ($employeeotherdeductions as $employeeotherdeduction) {
           
            $eotherdeduction+=$employeeotherdeduction->amount;
        }

     
    return $eotherdeduction;
     }




     public function prepareOthInData($payroll_id)
    {

        $othinctrans = Prlothintransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($othinctrans  as $othinctran)
               {
   
            $othinctran->delete();
    
            }

        $othincfiles=Prlothinfile::where("payroll_id",$payroll_id)->get();
        

                 foreach($othincfiles as $othincfile) {
                  $inserts[] = [ 
                                 'othinc_id' => $othincfile->othinc_id,
                                 'amount' => $othincfile->othincamount,
                                 'employee_id' => $othincfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                       }

                   DB::table('prlothintransactions')->insert($inserts);

                   
        $payrolls = prltransaction::where('payroll_id',$payroll_id)->get();

           $payrollObj=new payrollsController();
     
            foreach ($payrolls as $payroll)
               {
                $payroll->update(
                    ['other_income'=>$payrollObj->calculateTotalEmployeeOtherIncome($payroll_id,$payroll->employee_id)]
                    );
    
            }
             return redirect()->back()->with("status", "payroll data prepared successfully!");
    }

 public function prepareOthDedData($payroll_id)
    {

        $othdedtrans = Prlothdedtransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($othdedtrans  as $othdedtran)
               {
   
            $othdedtran->delete();
    
            }

        $othdedfiles=Prlothdedfile::where("payroll_id",$payroll_id)->get();
        

                 foreach($othdedfiles as $othdedfile) {
                  $inserts[] = [ 
                                 'othded_id' => $othdedfile->othded_id,
                                 'amount' => $othdedfile->othdedamount,
                                 'employee_id' => $othdedfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                       }

                   DB::table('Prlothdedtransactions')->insert($inserts);


        $payrolls = prltransaction::where('payroll_id',$payroll_id)->get();

           $payrollObj=new payrollsController();
     
            foreach ($payrolls as $payroll)
               {
                $payroll->update(
                    ['other_deduction'=>$payrollObj->calculateTotalEmployeeOtherDeduction($payroll_id,$payroll->employee_id)]
                    );
    
            }
              return redirect()->back()->with("status", "payroll data prepared successfully!");
    }

    //prepare ss deduction

    public function prepareSSData($payroll_id)
    {

        $sstrans = Prlsstransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($sstrans  as $sstran)
               {
   
            $sstran->delete();
    
            }

        $ssfiles=Prlssfile::where("active",1)->get();
        
$payrollObj=new payrollsController;
                 foreach($ssfiles as $ssfile) {
                  $inserts[] = [ 
                                 'sstype_id' => $ssfile->sstype_id,
                                 'grosspay'  => $payrollObj->prltransrow($payroll_id,$ssfile->employee_id,"grosspay"),
                                 'employerss' => (($ssfile->employer_percent * $payrollObj->prltransrow($payroll_id,$ssfile->employee_id,"grosspay"))/100),
                                 'employeess' => (($ssfile->employee_percent * $payrollObj->prltransrow($payroll_id,$ssfile->employee_id,"grosspay"))/100),
                                 'total' => (($ssfile->total * $payrollObj->prltransrow($payroll_id,$ssfile->employee_id,"grosspay"))/100),
                                 'employee_id' => $ssfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                       }

                   DB::table('prlsstransactions')->insert($inserts);


        $payrolls = prltransaction::where('payroll_id',$payroll_id)->get();

           $payrollObj=new payrollsController();
     
            foreach ($payrolls as $payroll)
               {
                $payroll->update(
                    ['ss_pay'=>$payrollObj->calculateTotalEmployeeSSContribution($payroll_id,$payroll->employee_id)]
                    );
    
            }
              return redirect()->back()->with("status", "payroll data prepared successfully!");
    }

      public function calculateTotalEmployeeSSContribution($payroll_id,$employee_id)
     {
        
        $employeesscontributions=Prlsstransaction::where("employee_id",$employee_id)->where("payroll_id",$payroll_id)->get();
         $sscontribution=0;
         foreach ($employeesscontributions as $employeesscontribution) {
           
            $sscontribution+=$employeesscontribution->employeess;
        }

     
    return $sscontribution;
     }
     public function prltransrow($payroll_id,$employee_id,$colum)
     {
        $payroll=prltransaction::where('employee_id',$employee_id)->where('payroll_id',$payroll_id)->firstOrFail();
        if($colum == "basicpay")
         return $payroll->basicpay;

      else if($colum=="grosspay")

         return $payroll->grosspay;

        else return 0;

     } 

     public function calculateTaxableAmount($payroll_id)
     {
        $payrolls=prltransaction::where("payroll_id",$payroll_id)->get();
        foreach ($payrolls as $payroll) {

            $payroll->update(
                ["taxable_amount"=>($payroll->grosspay - $payroll->ss_pay)]);
        }
        return redirect()->back()->with("status","Payroll data successfully updated");
     }

     //tax computation

     public function calculateTax($payroll_id)
     {
        $payrolls=prltransaction::where("payroll_id")->get();
        foreach ($payrolls as $payroll) {

            $payroll->update(["tax"=>2300]);
        }
        return redirect()->back()->with("status","tax rows updated successfully");
     }
     

   
}
