<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;
use App\Auth;
use Hash;
use Validator;

class ChangePasswordController extends Controller
{
     public function __construct()
    {
        $this->middleware("auth");
    } 
    public function index()
    {
    	$id = \Auth::user()->id;
       $user = User::find($id);
    	 return view("auth/passwords.changepassword",compact('user'));
    }
/*
    public function update(Request $request, User $user)
    {
        $this->validate($request, [
            "current_password" => "required",
            "new_password" => "required",
            "confirm_password" => "required|same:new_password",
            
        ]);

 
        $user->update([
            "password" => request("new_password"),
            
        ]);
        

       

       return redirect()->back()->with('status', 'password changed Successfully!');;
    }
*/
 public function update(Request $request,User $user)
    {
        //$user = Auth::getUser();

        $this->validator($request->all())->validate();
        if (Hash::check($request->get('current_password'), $user->password)) {
            $user->password = $request->get('new_password');
           // $user->save();
             $user->update([
            "password" => request("new_password"),
            
        ]);
        
            //return redirect($this->redirectTo)->with('success', 'Password change successfully!');
            return redirect()->back()->with('success', 'password changed Successfully!');
        } else {
            return redirect()->back()->with('danger', 'Current password is incorrect');

        }
    }

 protected function validator(array $data)
    {
        return Validator::make($data, [
             "current_password" => "required",
            "new_password" => "required",
            "confirm_password" => "required|same:new_password",
        ]);


    }

}
