<?php

namespace App\Http\Controllers\sss;

use Illuminate\Http\Request;
use App\Models\SocialSecurityScheme;
use App\Mailers\AppMailer;
use App\Http\Controllers\Controller;

class SssController extends Controller
{
   public function index()
    {

    }

     public function create()
    {
        
        $pagetitle="Salary Change";

        return view('sss.create', compact('pagetitle'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'PensionCode'     => 'required',
            'PensionName'     => 'required',
            'EmployeeContr'     => 'required',
            'EmployerContr'     => 'required'
        ]);

        $sss = new SocialSecurityScheme([
            'pcode'     => $request->input('PensionCode'),
            'penname'     => $request->input('PensionName'),
            'bracket'     => 10,
            'rangefrom'     => $request->input('RangeFrom'),
            'rangeto'     => $request->input('RangeTo'),
            'employerss'     => $request->input('EmployerContr'),
            'employeess'     => $request->input('EmployeeContr'),
            'employerec'     => $request->input('EmployerContr'),
            'total'     => ($request->input('EmployerContr') +$request->input('EmployeeContr')),

        ]);

        $sss->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

        return redirect()->back()->with("status", "A Pension with ".$request->input('PensionName')." Title has been created.");
    }
}
