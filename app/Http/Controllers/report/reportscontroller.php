<?php

namespace App\Http\Controllers\report;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\Profile;
use App\Models\country;
use App\Models\title;
use App\Models\Region;
use App\Models\District;
use App\Models\Employee;
use App\Models\PayrollTrans;
use App\Models\employeequalification;
use App\Models\qualification;
use App\Models\institute;
use App\Models\qualificationlevel;
use App\Models\job;
use App\Models\Dependant;
use App\Models\WorkExperience;
use App\Models\Dependanttype;
use App\Models\Jobgroup;
use App\Models\gender;
use App\Models\Payperiod;
use App\Models\Payroll;
use App\Models\prlemployementstatuses;
use App\Models\bank;
use App\Models\Branch;
use App\Models\Company;
use App\Models\CostCenter;
use App\Models\HDMF;
use App\Models\HealthInsuarance;
use App\Models\SocialSecurityScheme;
use App\Models\TaxTable;
use App\Models\Department;
use App\Models\YesOrNo;
use App\Models\maritalstatus;
use App\Models\employementstatus;
use App\Models\employeestatus;
use App\Models\endofcontractreason;
use App\Models\paytype;
use App\Models\loantrans;
use App\Models\loan;
use App\Models\loantable;
use App\Models;
use App\Models\Retailer;
use App\Traits\ActivationTrait;
use App\Traits\CaptchaTrait;
use App\Traits\CaptureIpTrait;
use Auth;
use Illuminate\Foundation\Auth\RegistersUsers;
use jeremykenedy\LaravelRoles\Models\Permission;
use jeremykenedy\LaravelRoles\Models\Role;
use Validator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;

class reportscontroller extends Controller
{
   
    public function employeebio(Request $request)

    {

         $this->validate($request, [
            'employee'     => 'required'
        ]);

         $employeeid=$request->input('employee');

    	 $pagetitle='Employee Bio';
        $company = company::findOrFail(2);
        $workexperience= WorkExperience::where('employeeid', $employeeid)->get();
        $dependants= Dependant::where('employeeid', $employeeid)->get();
         $dependanttypes=Dependanttype::All();
         $genders      =gender::All();
        $qualifications=qualification::All();
        $institutions=institute::All();
        $levels=qualificationlevel::All();
        $banks               =Bank::All();
        $employeequalifications= employeequalification::where('employeeid', $employeeid)->get();
        $employee=DB::table('prlemployeemaster')
        ->select('employeeid','firstname','lastname','governmentid','middlename','city','bankname','accountname','penname','ssnumber','branchname','atmnumber','bankid','terminatedate','state','email1','email2','phone1','phone2','zip',
            'spousename','spouseemail','spouseaddress','spousephone','nextofkinname','nextofkinemail','nextofkinphone','nextofkinaddress',
            'birthdate','hiredate','employeecode','departments.departmentname as departmentname','regionname','districtname',
        'jobs.jobname as jobid','titles.titlename as titlename','employeestatutes.name as active','genders.name as gender','hiredate','hourlyrate','paytype',
        'maritalstatus.name as marital',
        'periodrate')
        ->leftjoin('genders','prlemployeemaster.gender','genders.id')
        ->leftjoin('jobs','prlemployeemaster.jobid','jobs.id')
        ->leftjoin('employeestatutes','prlemployeemaster.active','employeestatutes.id')
        ->leftjoin('departments','prlemployeemaster.deptid','departments.id')
        ->leftjoin('branches','prlemployeemaster.branchid','branches.id')
        ->leftjoin('regions','prlemployeemaster.city','regions.id')
        ->leftjoin('districts','prlemployeemaster.state','districts.id')
        ->leftjoin('maritalstatus','prlemployeemaster.marital','maritalstatus.id')
        ->leftjoin('titles','prlemployeemaster.tittle','titles.id')
        ->leftjoin('banks','prlemployeemaster.bankid','banks.id')
        ->leftjoin('prlsstable','prlemployeemaster.pencode','prlsstable.id')
        ->where('employeeid',$employeeid) 
        ->first();

        //return view('employee.employeemaster',compact('employees','pagetitle'));
        return view('reports.employeebio',compact('employee','company','pagetitle','workexperience','dependants','employeequalifications','dependanttypes','genders','institutions','qualifications','levels'));
    }

public function reportform()
{   
    $pagetitle="Employee Bio Report"; 
    $employees=Employee::All();
    return  view('reports.reportform',compact('pagetitle','employees'));
}


public function payslipform()
{   
    $pagetitle="Employee Bio Report"; 
    $employees=Employee::All();
    $periods=Payroll::All();
    return  view('reports.payslipform',compact('pagetitle','employees','periods'));
}

public function payslip(Request $request)
{
     $this->validate($request, [
            
            'period'     => 'required'
        ]);
     $pagetitle="Payslip";
     $employeeid=$request->input('employee');
     $headertype=$request->input('Report');
     $period=$request->input('period');
     $payrollperiod= payroll::where('id', $period)->firstOrFail();
     $company=Company::where('id',1)->firstOrFail();
     $payrolltrans=PayrollTrans::where('employeeid',$employeeid)->where('payrollid',$payrollperiod->id)->firstOrFail();
     $employee=Employee::where('employeeid',$employeeid)->firstOrFail();
     $sss=SocialSecurityScheme::where('id',$employee->pencode)->firstOrFail();
    

    return view('reports.payslip1',compact('pagetitle','headertype','payrollperiod','company','employee','payrolltrans','sss'));
}

public function payrollregisterform()
{   
    $pagetitle="Payroll Register"; 
    $employees=Employee::All();
    $periods=Payroll::All();
    return  view('reports.payrollregisterform',compact('pagetitle','employees','periods'));
}

public function payrollregister(Request $request)
{
     $this->validate($request, [
            'period'     => 'required'
        ]);
     $headertype=$request->input('Report');
     $period=$request->input('period');
     $company=Company::where('id',1)->firstOrFail();
    $pagetitle="Payroll Register";
    $payrollperiod= payroll::where('id', $period)->firstOrFail();
    return view('reports.payrollregister',compact('pagetitle','headertype','payrollperiod','company'));
}


public function payrollregisterformpdf()
{   
    $pagetitle="Payroll Register"; 
    $employees=Employee::All();
    $periods=Payroll::All();
    return  view('reports.payrollregisterformpdf',compact('pagetitle','employees','periods'));
}

public function payrollregisterpdf(Request $request)
{
     $this->validate($request, [
            'period'     => 'required'
        ]);
     $headertype=$request->input('Report');
     $period=$request->input('period');
     $company=Company::where('id',1)->firstOrFail();
    $pagetitle="Payroll Register";
    $payrollperiod= payroll::where('id', $period)->firstOrFail();
    return view('reports.payrollregisterpdf',compact('pagetitle','headertype','payrollperiod','company'));
}

}
