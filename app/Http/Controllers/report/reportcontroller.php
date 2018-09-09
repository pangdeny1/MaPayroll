<?php

namespace App\Http\Controllers\report;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Requests;
use App\Models\Profile;
use App\Models\User;
use App\Models\country;
use App\Models\Region;
use App\Models\District;
use App\Models\Employee;
use App\Models\job;
use App\Models\Jobgroup;
use App\Models\gender;
use App\Models\Payperiod;
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

class reportcontroller extends Controller
{
    public function test2()
    {
      $employee = Employee::findOrFail(2);
      $company = company::findOrFail(1);
    	return view('reports.test',compact('employee','company'));
    }

    public function test()

    {

    	 $pagetitle='Employees Master';
         $company = company::findOrFail(1);
        $employee=DB::table('prlemployeemaster')
        ->select('employeeid','firstname','lastname','middlename','city','state','email1','phone1','phone2','zip',
            'birthdate','hiredate','marital','employeecode','departmentname','regionname','districtname',
        'jobs.jobname as jobid','employeestatutes.name as active','genders.name as gender','hiredate','hourlyrate','paytype',
        'periodrate')
        ->leftjoin('genders','prlemployeemaster.gender','genders.id')
        ->leftjoin('jobs','prlemployeemaster.jobid','jobs.id')
        ->leftjoin('employeestatutes','prlemployeemaster.active','employeestatutes.id')
        ->leftjoin('departments','prlemployeemaster.deptid','departments.id')
        ->leftjoin('regions','prlemployeemaster.city','regions.id')
        ->leftjoin('districts','prlemployeemaster.state','districts.id')
        ->where('employeeid',2) 
        ->first();

        //return view('employee.employeemaster',compact('employees','pagetitle'));
        return view('reports.test',compact('employee','company'));
    }

    public function testpdf()
    {
        return view('reports.testpdf');
    }
    
}
