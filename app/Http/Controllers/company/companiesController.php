<?php

namespace App\Http\Controllers\company;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Mailers\AppMailer;
use App\Http\Controllers\Controller;

class companiesController extends Controller
{
	public function index()
    {

    }

     public function create()
    {
        
        $pagetitle="Add Company";

        return view('companies.create', compact('pagetitle'));
    }

    public function store(Request $request, AppMailer $mailer)
    {
        //store addes files
        
        $this->validate($request, [
            'companyname'     => 'required',
            'companycode'     => 'required',
            'companyemail'     => 'required|email',
            'companyname'     => 'required'
        ]);

        $company = new company([
            'coycode'     => $request->input('companycode'),
            'coyname'     => $request->input('companyname'),
            'email'     => $request->input('companyemail'),
            'fax'     => $request->input('companyfax'),
            'regoffice1'     => $request->input('companyaddress'),
            'telephone'     => $request->input('companytelephone'),
            'companynumber'     => $request->input('companynumber'),
            'gstno'     => $request->input('companytaxnumber')
            
        ]);

        $company->save();

       // $mailer->sendTicketInformation(Auth::user(), $ticket);

        return redirect()->back()->with("status", "A company with Title has been created.");
    }
}
