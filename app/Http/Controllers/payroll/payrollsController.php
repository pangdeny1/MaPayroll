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
use App\Prltaxtransaction;
use App\Models\Prldailytran;
use App\Models\Prlsstransaction;
use App\Models\Prltaxtablerate;
use App\Models\Prlssfile;
use App\Models\Prlsstype;
use App\Models\Month;
use App\Models\Payperiod;
use App\Models\Prlothintransaction;
use App\Models\Prlothinfile;
use app\Models\Prlothintype;
use App\Models\Prlothdedtransaction;
use App\Models\Prlothdedfile;
use App\Models\Prlothdedtype;
use App\Prlhdmftype;
use App\Models\Prlhdmftransaction;
use App\prlhealthtransaction;
use App\prlhealthtype;
use App\Models\Prlloantransaction;
use App\Models\Prlloanfile;
use App\Models\Prlloantype;
use App\Http\Controllers\Controller;

class payrollsController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    
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
        $payrollObj= new payrollsController();
        $payroll= payroll::where('id', $payroll_id)->firstOrFail();
        //$employees= Employee::where('active', 1)->where('payperiodid',$payroll->payperiodid)->get();
        //$employees=Employee::where("active","yes")->get();
        $employees=Employee::where("active","yes")->where('pay_period',$payrollObj->payrollRows($payroll_id,"payperiod"))->get();
        $payperiods     =Payperiod::All();
         //$employees= Employee::All();

        return view('payrolls.show', compact('payroll','pagetitle','employees','payperiods'));
    }

    public function generate($payroll_id)
    {
        $payrollObj= new payrollsController();
        $employees=Employee::where("active","yes")->where('pay_period',$payrollObj->payrollRows($payroll_id,"payperiod"))->get();

         
        if($payrollObj->closedOpenedStatusCheck($payroll_id)=="Closed")
        {
          return redirect()->back()->with("status_error", "Cannot Generate payroll data, Payroll is already closed!"); 
            
        }
        $payrollObj->destroyTrans($payroll_id);
        $payrollObj->preparePayrollData($employees,$payroll_id);
        $payrollObj->calculateBasicPay($payroll_id);
        $payrollObj->prepareOthInData($payroll_id);
        $payrollObj->calculateGrossPay($payroll_id);
        $payrollObj->prepareOthDedData($payroll_id);
        $payrollObj->computeSSContribution($payroll_id);
        $payrollObj->computeHDMF($payroll_id);
        $payrollObj->computeHealth($payroll_id);
        $payrollObj->computeTaxableIncome($payroll_id);
        $payrollObj->prepareTaxData($payroll_id);
        $payrollObj->computeLoan($payroll_id);
        $payrollObj->computeTotalDeduction($payroll_id);
        $payrollObj->computeNetpay($payroll_id);
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
                                 'sstype_id'=>$employee->sstype_id,
                                 'deduct_ss'=>$employee->deduct_ss,
                                 'deduct_tax'=>$employee->deduct_tax,
                                 'deduct_health'=>$employee->deduct_health,
                                 'deduct_hdmf'=>$employee->deduct_hdmf,
                                 'pay_period' =>$employee->pay_period,
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
//closepayroll
     public function close($payroll_id)
    {
         $payrollObj= new payrollsController();

         $loantrans=Prlloantransaction::where("payroll_id",$payroll_id)->get();
         if($loantrans->count()>0)
         {
            foreach ($loantrans as $loantran) {
               $payrollObj->updateBalance($loantran->employee_id,$loantran->loantype_id,$loantran->amount);
            }
            
            
         }
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

    public function updateBalance($employee_id,$loantype_id,$amount)
    {
        $loanbal=Prlloanfile::where("employee_id",$employee_id)->where("loantype_id",$loantype_id)->firstOrFail();
        return $loanbal->update([
            "ytddeduction" =>$amount+$loanbal->ytddeduction,
            "loanbalance"  =>$loanbal->loanamount-$loanbal->ytddeduction-$amount
            ]);
    }


    public function updateClosePayrollBalance($employee_id,$loantype_id,$amount)
    {
        $loanbal=Prlloanfile::where("employee_id",$employee_id)->where("loantype_id",$loantype_id)->firstOrFail();
        return $loanbal->update([
            "ytddeduction" =>$loanbal->ytddeduction-$amount,
            "loanbalance"  =>$loanbal->loanbalance+$amount
            ]);
    }

     public function open($payroll_id)
    {
        $payrollObj= new payrollsController();

         $loantrans=Prlloantransaction::where("payroll_id",$payroll_id)->get();
         if($loantrans->count()>0)
         {
            foreach ($loantrans as $loantran) {
               $payrollObj->updateClosePayrollBalance($loantran->employee_id,$loantran->loantype_id,$loantran->amount);
            }
            
            
         }
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

              $othinctrans = Prlothintransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($othinctrans  as $othinctran)
               {
   
            $othinctran->delete();
    
            }


             $othdedtrans = Prlothdedtransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($othdedtrans  as $othdedtran)
               {
   
            $othdedtran->delete();
    
            }

            $sstrans = Prlsstransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($sstrans  as $sstran)
               {
   
            $sstran->delete();
    
            }

            $taxtrans = Prltaxtransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($taxtrans  as $taxtran)
               {
   
            $taxtran->delete();
    
            }

            $healthtrans = Prlhealthtransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($healthtrans  as $healthtran)
               {
   
            $healthtran->delete();
    
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

     public function calculateTotalEmployeeOtherIncome($payroll_id,$employee_id,$value)
     {
        if($value=="taxable")
        {
          $employeeOtherIncomes=Prlothintransaction::where("employee_id",$employee_id)->where("payroll_id",$payroll_id)->where("taxable",$value)->get();
        }
       if($value=="non-taxable")
        {
           $employeeOtherIncomes=Prlothintransaction::where("employee_id",$employee_id)->where("payroll_id",$payroll_id)->where("taxable",$value)->get();
        }
        if($value=="ALL")
        {
          $employeeOtherIncomes=Prlothintransaction::where("employee_id",$employee_id)->where("payroll_id",$payroll_id)->get();  
        }
        
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



//computeotherincome
     public function prepareOthInData($payroll_id)
    {
         $payrollObj=new payrollsController();

        $othinctrans = Prlothintransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($othinctrans  as $othinctran)
               {
   
            $othinctran->delete();
    
            }

        //$othincfiles=Prlothinfile::where("payroll_id",$payroll_id)->get();
        $othincfiles=Prlothinfile::where("stopdate",">=",$payrollObj->payrollDate($payroll_id,"startdate"))->where("status",1)->get();
        
        if($othincfiles->count()>0)
        {


                 foreach($othincfiles as $othincfile) {
                    if($othincfile->amount_term=="Amount")
                    {

                  $inserts[] = [ 
                                 'othinc_id' => $othincfile->othinc_id,
                                 'amount' => $othincfile->othincamount,
                                 'employee_id' => $othincfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                       }
                       elseif ($othincfile->amount_term=="Percent") {
                           $inserts[] = [ 
                                 'othinc_id' => $othincfile->othinc_id,
                                 'amount' => (($othincfile->percent * $payrollObj->payrollTransRows($payroll_id,$othincfile->employee_id,"Basic"))/100),
                                 'employee_id' => $othincfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                           }
                       else
                       {

                        $inserts[] = [ 
                                 'othinc_id' => $othincfile->othinc_id,
                                 'amount' => 0,
                                 'employee_id' => $othincfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                       }
                   }

                   DB::table('prlothintransactions')->insert($inserts);
}
                   
        $payrolls = prltransaction::where('payroll_id',$payroll_id)->get();

          
     
            foreach ($payrolls as $payroll)
               {
                $payroll->update(
                    ['other_income'=>$payrollObj->calculateTotalEmployeeOtherIncome($payroll_id,$payroll->employee_id,"ALL"),
                    'other_income_taxable'=>$payrollObj->calculateTotalEmployeeOtherIncome($payroll_id,$payroll->employee_id,"taxable"),
                    'other_income_nontaxable'=>$payrollObj->calculateTotalEmployeeOtherIncome($payroll_id,$payroll->employee_id,"non-taxable")]
                    );
    
            }
             return redirect()->back()->with("status", "payroll data prepared successfully!");
    }

//computeotherdeduction
 public function prepareOthDedData($payroll_id)
    {
        $payrollObj=new payrollsController();


        $othdedtrans = Prlothdedtransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($othdedtrans  as $othdedtran)
               {
   
            $othdedtran->delete();
    
            }

        //$othdedfiles=Prlothdedfile::where("payroll_id",$payroll_id)->get();
        $othdedfiles=Prlothdedfile::where("stopdate",">=",$payrollObj->payrollDate($payroll_id,"startdate"))->where("status",1)->get();
         if($othdedfiles->count()>0)
            { 
                foreach($othdedfiles as $othdedfile) {

                    if($othdedfile->amount_term=="Amount")
                    {
                       $inserts[] = [ 
                                 'othded_id' => $othdedfile->othded_id,
                                 'amount' => $othdedfile->othdedamount,
                                 'employee_id' => $othdedfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                       } 
                    

                      elseif($othdedfile->amount_term=="Percent")
                    {
                        if($othdedfile->transaction_type=="Basic")
                        {
                           $inserts[] = [ 
                                 'othded_id' => $othdedfile->othded_id,
                                 'amount' => (($othdedfile->percent * $payrollObj->payrollTransRows($payroll_id,$othdedfile->employee_id,"Basic"))/100),
                                 'employee_id' => $othdedfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ];  
                           }
                           elseif($othdedfile->transaction_type=="Gross")
                           {
                                 $inserts[] = [ 
                                 'othded_id' => $othdedfile->othded_id,
                                 'amount' => (($othdedfile->percent * $payrollObj->payrollTransRows($payroll_id,$othdedfile->employee_id,"Gross"))/100),
                                 'employee_id' => $othdedfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                           }
                           else{
                             $inserts[] = [ 
                                 'othded_id' => $othdedfile->othded_id,
                                 'amount' => 0,
                                 'employee_id' => $othdedfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                           }
                       
                       } 
                    
                    else{
                         $inserts[] = [ 
                                 'othded_id' => $othdedfile->othded_id,
                                 'amount' => 0,
                                 'employee_id' => $othdedfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                    }
                }

                  

                   DB::table('Prlothdedtransactions')->insert($inserts);

            }

                 
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

    //compute ss contribution 
   public function computeSSContribution($payroll_id)
    {
    $payrollObj=new payrollsController;    

        $sstrans = Prlsstransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($sstrans  as $sstran)
               {
   
            $sstran->delete();
    
            }
         if($payrollObj->isdeducted($payroll_id,"deduct_ss")==1)
              {
           
        $payrolls=Prltransaction::where("payroll_id",$payroll_id)->where("deduct_ss","yes")->get();
        $count=0;
        
                 foreach($payrolls as $payroll) {
                        $count+=1;
                     $inserts[] = [ 
                                 'sstype_id' => $payroll->sstype_id,
                                 'grosspay'  => $payroll->basicpay,
                                 'employerss' => $payrollObj->computeContribution($payroll->sstype_id,$payroll->basicpay,"employee"),
                                 'employeess' => $payrollObj->computeContribution($payroll->sstype_id,$payroll->basicpay,"employer"),
                                 'total'      => $payrollObj->computeContribution($payroll->sstype_id,$payroll->basicpay,"total"),
                                 'employee_id' => $payroll->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 

                     $payroll->update(
                    ['ss_pay'=>$payrollObj->computeContribution($payroll->sstype_id,$payroll->basicpay,"employee")]
                    );
                    
                       }
                       if($count>0)
                       {
                         DB::table('prlsstransactions')->insert($inserts);
                       }

               


}
return redirect()->back()->with("status", "payroll data prepared successfully!");  

              
    }

      public function computeContribution($sstype_id,$grosspay,$contributor)
     {
        $paytype=Prlsstype::where('id',$sstype_id)->firstOrFail();
        if($contributor == "employee")
         return (($grosspay * $paytype->employeess)/100);

      else if($contributor=="employer")

          return (($grosspay * $paytype->employerss)/100);

       else if($contributor=="total")

          return (($grosspay * $paytype->total)/100);

        else return 0;

     } 


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

     public function computeTaxableIncome($payroll_id)
     {
        $payrolls=prltransaction::where("payroll_id",$payroll_id)->where("deduct_tax","yes")->get();
        foreach ($payrolls as $payroll) {

            $payroll->update(
                ["taxable_income"=>($payroll->grosspay - $payroll->ss_pay - $payroll->health - $payroll->hdmf)]);
        }
        return redirect()->back()->with("status","Payroll data successfully updated");
     }

     //tax computation


      public function prepareTaxData($payroll_id)
    {

        $taxtrans = Prltaxtransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($taxtrans  as $taxtran)
               {
   
            $taxtran->delete();
    
            }

        $payrolls=Prltransaction::where("payroll_id",$payroll_id)->get();
        $count=0;
        $payrollObj=new payrollsController;
                 foreach($payrolls as $payroll) {
                    $count+=1;
                  $inserts[] = [ 
                                 'taxable_income'  => $payroll->taxable_income,
                                 'fsmonth' => $payroll->fsmonth,
                                 'fsyear' => $payroll->fsyear,
                                 'tax' => $payrollObj->getMyTax($payroll->taxable_income),
                                 'employee_id' => $payroll->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 

                                $payroll->update(["tax"=>$payrollObj->getMyTax($payroll->taxable_income)]);
                       }
                       if($count>0)
                       {
                         DB::table('prltaxtransactions')->insert($inserts);
                       }

                  else


              return 0;
    }

     public function computeNetpay($payroll_id)
     {
       $payrolls=prltransaction::where("payroll_id","$payroll_id")->get();
        foreach ($payrolls as $payroll) {

            $payroll->update(["netpay"=>$payroll->grosspay - $payroll->total_deduction]);
        }
        return redirect()->back()->with("status","Netpayrows updated successfully");
     }

      public function computeTotalDeduction($payroll_id)
     {
        $payrolls=prltransaction::where("payroll_id","$payroll_id")->get();
        foreach ($payrolls as $payroll) {

            $payroll->update(["total_deduction"=>$payroll->tax + $payroll->ss_pay + $payroll->hdmf + $payroll->health + $payroll->other_deduction + $payroll->loan_deduction]);
        }
        return redirect()->back()->with("status","Netpayrows updated successfully");
     }


     public function getMyTax($taxable_income)
     {
        $fixtax=0;
        $mytax=Prltaxtablerate::where("rangefrom","<=",$taxable_income)->where("rangeto",">=",$taxable_income)->firstOrFail();
          

          if($mytax->count()>0)
          {
                
                $AA=$mytax->percentofexcessamount/100;
                $BB=$taxable_income - $mytax->rangefrom ;
                $CC=$AA*$BB;
                $deduct=$mytax->fixtax  +$CC;
            //return ($mytax->fixtax + ($taxable_income - $mytax->rangeto)*($mytax->percentofexcessamount/100));
            return $deduct;   
          }
          else return 0;
     }
     
     //compute health 
   public function computeHealth($payroll_id)
    {
        $payrollObj=new payrollsController;
        $healthtrans = Prlhealthtransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($healthtrans  as $healthtran)
               {
   
            $healthtran->delete();
    
            }
            if($payrollObj->isdeducted($payroll_id,"deduct_health")==1)
{

        $payrolls=Prltransaction::where("payroll_id",$payroll_id)->where("deduct_health","yes")->get();
        $count=0;
        
                 foreach($payrolls as $payroll) {
                        $count+=1;
                     $inserts[] = [ 
                                 'employee_id' => $payroll->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'grosspay'   =>$payroll->grosspay,
                                 'employee_contr'=>(($payrollObj->getHealthPercent('employee')*$payroll->basicpay)/100),
                                 'employer_contr'=>(($payrollObj->getHealthPercent('employer')*$payroll->basicpay)/100),
                                 'total'     =>(($payrollObj->getHealthPercent('total')*$payroll->basicpay)/100),
                                 'creator_id' => auth()->id()
                               ]; 

                

                                $payroll->update(["health"=>(($payrollObj->getHealthPercent('employee')*$payroll->basicpay)/100),
                                ]);
                       }
                       if($count > 0)
                       {
                        DB::table('prlhealthtransactions')->insert($inserts);
                       }

                 return redirect()->back()->with("status", "payroll data prepared successfully!");
      }
    }

    public function getHealthPercent($record)
    {
        $healthtable=prlhealthtype::first();
        if($record=="employer")
        return $healthtable->employerph;

    else if($record=="employee")
    {
        return $healthtable->employeeph;
    }
   else if($record=="total")
   {
    return $healthtable->total;
   }
    else return 0;
    }

    //compute Hdmf

    public function computeHDMF($payroll_id)
    {
        $payrollObj=new payrollsController;
         $hdmftrans = Prlhdmftransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($hdmftrans  as $hdmftran)
               {
   
           $hdmftran->delete();
    
            }
            $payrollObj=new payrollsController;

        if($payrollObj->isdeducted($payroll_id,"deduct_hdmf")==1)
{

         $count=0;
        $payrolls=Prltransaction::where("payroll_id",$payroll_id)->where("deduct_hdmf","yes")->get();
        
        
                 foreach($payrolls as $payroll) {
                    $count+=1;

                     $inserts[] = [ 
                                 'employee_id' => $payroll->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'grosspay'   =>$payroll->grosspay,
                                 'employee_hdmf'=>(($payrollObj->getHDMFPercent('employee')*$payroll->basicpay)/100),
                                 'employer_hdmf'=>(($payrollObj->getHDMFPercent('employer')*$payroll->basicpay)/100),
                                 'total'     =>(($payrollObj->getHDMFPercent('total')*$payroll->basicpay)/100),
                                 'creator_id' => auth()->id()
                               ]; 

                

                                $payroll->update(["hdmf"=>(($payrollObj->getHDMFPercent('employee')*$payroll->basicpay)/100),
                                ]);
                       }
                       if($count>0)
                     { 
                       return DB::table('prlhdmftransactions')->insert($inserts);
                }

return redirect()->back()->with("status", "payroll data prepared successfully!");

}
              
    }

public function getHDMFPercent($record)
    {
    $hdmftable=Prlhdmftype::first();
        if($record=="employer")
        return $hdmftable->employershare;

    else if($record=="employee")
      {
        return $hdmftable->employeeshare;
        }
    else if($record=="total")
         {
        return $hdmftable->total;
            }
    else return 0;
    }

    public function isdeducted($payroll_id,$deducttype)
    {
        $payroll=Payroll::where("id",$payroll_id)->firstOrFail();
        
         if($deducttype=="deduct_ss")

            return $payroll->deductsss;

        elseif($deducttype=="deduct_health")

            return $payroll->deductphilhealth;

         elseif($deducttype=="deduct_hdmf")

            return $payroll->deducthdmf;

        else return 0;

    }

    public function payrollRows($payroll_id,$row)
    {
        $payrollperiod=Payroll::where('id',$payroll_id)->firstOrFail();
        if($row=="payperiod")
        {
            return $payrollperiod->payperiodid;
        }
    }

       public function payrollTransRows($payroll_id,$employee_id,$transaction_type)
    {
        $row=prltransaction::where('payroll_id',$payroll_id)->where('employee_id',$employee_id)->firstOrFail();
        if($transaction_type=="Basic")
        {
            return $row->basicpay;
        }
        elseif($transaction_type=="Gross")
        {
            return $row->grosspay;
        }
        else return 0;
        
    }

    public function payrollDate($payroll_id,$date)
    {
        $payrolldate=Payroll::where('id',$payroll_id)->firstOrFail();
        if($date=="startdate")
            return $payrolldate->startdate;
        if($date=="enddate")
            return $payrolldate->enddate;
    }

//compute Loan Deduction
  
  public function computeLoan($payroll_id)
    {
        $payrollObj=new payrollsController();

        $loantrans = Prlloantransaction::where('payroll_id',$payroll_id)->get();
     
            foreach ($loantrans  as $loantran)
               {
   
            $loantran->delete();
    
            }

        //$loanfiles=Prlloanfile::All();
        $loanfiles=Prlloanfile::where("startdeduction","<=",$payrollObj->payrollDate($payroll_id,"enddate"))->where("loanbalance",">",0)->where("status",1)->get();
        
        if($loanfiles->count()>0)
        {

                 foreach($loanfiles as $loanfile) {
                    if($loanfile->amount_term=="Amount" && $loanfile->loanbalance >= $loanfile->amortization)
                    {
                     $inserts[] = [ 
                                 'loantype_id' => $loanfile->loantype_id,
                                 'amount' => $loanfile->amortization,
                                 'employee_id' => $loanfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                       }

                        elseif($loanfile->amount_term=="Amount" && $loanfile->loanbalance < $loanfile->amortization)
                    {
                     $inserts[] = [ 
                                 'loantype_id' => $loanfile->loantype_id,
                                 'amount' => $loanfile->loanbalance,
                                 'employee_id' => $loanfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                       }
                       
                       elseif ($loanfile->amount_term=="Percent" && $loanfile->loanbalance >= (($loanfile->percent * $payrollObj->payrollTransRows($payroll_id,$loanfile->employee_id,"Basic"))/100)) {
                                 $inserts[] = [ 
                                 'loantype_id' => $loanfile->loantype_id,
                                 'amount' => (($loanfile->percent * $payrollObj->payrollTransRows($payroll_id,$loanfile->employee_id,"Basic"))/100),
                                 'employee_id' => $loanfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                           } 

                             elseif ($loanfile->amount_term=="Percent" && $loanfile->loanbalance < (($loanfile->percent * $payrollObj->payrollTransRows($payroll_id,$loanfile->employee_id,"Basic"))/100)) {
                                 $inserts[] = [ 
                                 'loantype_id' => $loanfile->loantype_id,
                                 'amount' =>$loanfile->loanbalance,
                                 'employee_id' => $loanfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                           } 
                           else
                           {
                             $inserts[] = [ 
                                 'loantype_id' => $loanfile->loantype_id,
                                 'amount' => 0,
                                 'employee_id' => $loanfile->employee_id,
                                 'payroll_id' =>$payroll_id,
                                 'creator_id' => auth()->id()
                               ]; 
                           }   
                    }
                 

                   DB::table('prlloantransactions')->insert($inserts);

        }


                   
        $payrolls = prltransaction::where('payroll_id',$payroll_id)->get();

           
     
            foreach ($payrolls as $payroll)
               {
                $payroll->update(
                    ['loan_deduction'=>$payrollObj->calculateTotalEmployeeLoan($payroll_id,$payroll->employee_id)]
                    );
    
            }
             return redirect()->back()->with("status", "payroll data prepared successfully!");
    }



//calulate loan
    public function calculateTotalEmployeeLoan($payroll_id,$employee_id)
    {
         $loantrans = Prlloantransaction::where('payroll_id',$payroll_id)->where('employee_id',$employee_id)->get();
         $loandeduction=0; 
            foreach ($loantrans  as $loantran)
               {
   
            $loandeduction+=$loantran->amount;
    
            }
        return $loandeduction;
    }

   
}
