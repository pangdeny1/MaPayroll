<?php

namespace App\Http\Controllers\company;

use Illuminate\Http\Request;
use App\Models\Company;
use App\Mailers\AppMailer;
use App\Http\Controllers\Controller;

class companiesController extends Controller
{

    public function __construct()
    {
        $this->middleware('auth');
    }
    
	public function index()
    {
     $pagetitle="company";
        $companies=Company::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("coycode", "LIKE", "%". request("q") ."%")
                    ->orWhere("coyname", "LIKE", "%". request("q") ."%");

            })
            ->paginate();
        return view('companies.index', compact('pagetitle','companies'));
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

        return redirect("viewcompany")->with('status','"A company with Title has been created.');
    }

        public function edit($company_id)
   {

    $pagetitle="Company Edit";
    $company= Company::where('id', $company_id)->firstOrFail();

    return view('companies.edit', compact('company','pagetitle'));
   }



       public function update(Request $request, AppMailer $mailer,$company_id)
    {
      $this->validate($request, [
            'companyname'     => 'required',
            'companycode'     => 'required',
            'companyemail'     => 'required|email',
            'companyname'     => 'required'
        ]);

            $company = Company::where('id', $company_id)->firstOrFail();
            

            $company->coycode    = $request->input('companycode');
            $company->coyname  = $request->input('companyname');
            $company->email   = $request->input('companyemail');
            $company->fax   =$request->input('companyfax');
            $company->regoffice1  =$request->input('companyaddress');
            $company->telephone  =$request->input('companytelephone');
            $company->companynumber   =$request->input('companynumber');
            $company->gstno   =$request->input('companytaxnumber');
                                    
            $company->save();

                    
       return redirect("viewcompany")->with('status','company  has been Updated.');
    }


     public function destroy($companytype_id)
        {
       $company = Company::findOrFail($companytype_id);

            $company->delete();

      // return redirect()->route('tasks.index');
  return redirect()->back()->with("status", "company successfully deleted!");
           }
}
