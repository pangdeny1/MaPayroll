<?php

namespace App\Http\Controllers\salary;

use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Payroll;
use App\Models\Salary;
use App\Mailers\AppMailer;
use App\Http\Controllers\Controller;

class SalariesController extends Controller
{
public function index()
    {

    }

     public function create()
    {
        
        $pagetitle="Salary Change";
        $employees=Employee::All();
        $payrolls=Payroll::All();

        return view('salaries.create', compact('pagetitle','employees','payrolls'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'employee'     => 'required',
            'ChangedBy'     => 'required',
        ]);

        $salary= new Salary([
            'employeeid'     => $request->input('employee'),
            'salaryfrom'     => $request->input('SalaryFrom'),
            'salaryto'     => $request->input('SalaryTo'),
            'changedby'     => $request->input('ChangedBy'),
            'changedamount'     => $request->input('AmountChanged'),
            'parcentage'     => $request->input('ParcentageChanged'),
            'datechanged'     => $request->input('DateChanged'),
            'payrollid'     => $request->input('payroll')
        ]);

        $salary->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

        return redirect()->back()->with("status", "Salary Changed Successfully.");
    }
}
