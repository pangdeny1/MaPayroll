<?php
namespace App\Http\Controllers;

use App\Farm;
use App\Http\Requests\EmployeeCreateRequest;
use App\State;
use App\Employee;
use App\Purchase;
use App\Group;
use App\GroupMember;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\View\View;
use Sms;

class EmployeesController extends Controller
{
	public function __construct()
    {
        $this->middleware("auth");
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function index()
    {
        $this->authorize("view", Employee::class);

        //$employees = Employee::latest()->paginate();
        //$groups = GroupMember::all()->load('Groups');

             $employees= Employee::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("first_name", "LIKE", "%". request("q") ."%")
                    ->orWhere("last_name", "LIKE", "%". request("q") ."%");
            })
            ->paginate();

       return view("employees.index", compact("employees"));
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize("create", Employee::class);

        return view("employees.create", [
            "states" => State::getCountryName("Tanzania"),
        ]);
    }

    /**
     * @param EmployeeCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function store(EmployeeCreateRequest $request)
    {
        $this->authorize("create", Employee::class);

        $Employee = Employee::create([
            "first_name" => request("first_name"),
            "last_name" => request("last_name"),
            "phone" => request("phone"),
            "email" => request("email"),
            "gender" => request("gender"),
            "creator_id" => auth()->id(),
        ]);

        $Employee->address()->create($request->only([
            "street",
            "address",
            "state",
            "country",
            "postal_code",
        ]));

       // $Employee->groups()->attach($request->group_id);
        
        /* \Sms::send(phone(request("phone"), "TZ"), $this->messageBody(
            request("first_name"),
            request("last_name"),
            request("phone")
        ));
        */
        return redirect()->route("employees.show", $Employee);
    }

    /**
     * @param Employee $Employee
     * @return RedirectResponse
     * @throws AuthorizationException
     */

    public function edit(Employee $Employee)
    {
        $this->authorize("edit", Employee::class);

        return view("employees.edit", [
            "states" => State::getCountryName("Tanzania"),
            "Employee" =>$Employee,
            "groups" =>Group::All(),
            "groupmember"=>GroupMember::All(),
           
        ]);
    }
/* public function update(Employee $Employee)
    {
        $this->authorize("edit", $Employee);

        $Employee->update([
            "first_name" => request("first_name", $Employee->first_name),
            "last_name" => request("last_name", $Employee->last_name),
            "phone" => request("phone", $Employee->phone),
            "email" => request("email", $Employee->email),
            "gender" => request("gender", $Employee->gender),
        ]);

        return redirect()->back();
    }

*/

    public function update(Request $request,Employee $Employee)
    {
        $this->authorize("update", $Employee);
        $this->validate($request, [
            "first_name" => "required",
            "last_name" => "required",
            "phone" => "required",
            "country" => "required",
            "gender" => ["required", Rule::in(["male","female"])],
        ]);

        $Employee->update([
            "first_name" => request("first_name"),
            "last_name" => request("last_name"),
            "email" => request("email"),
            "phone" => request("phone"),
            "gender" => request("gender"),
        ]);

        if ($Employee->address()->exists()){
            $Employee->address()->update([
                "street" => request("street", optional($Employee->address)->street),
                "address" => request("address", optional($Employee->address)->address),
                "state" => request("state", optional($Employee->address)->state),
                "country" => request("country", optional($Employee->address)->country),
                "postal_code" => request("postal_code", optional($Employee->address)->postal_code),
            ]);
        } else {
            $Employee->address()->create([
                "street" => request("street"),
                "address" => request("address", ""),
                "state" => request("state"),
                "country" => request("country"),
                "postal_code" => request("postal_code"),
            ]);
        }

        $Employee->groups()->sync($request->group_id);
        return redirect()->route("employees.index");
        //return redirect()->back();
    }
    /**
     * @param Employee $Employee
     * @return View
     * @throws AuthorizationException
     */
    public function show(Employee $Employee)
    {
        $this->authorize("view", $Employee);

        return view("employees.show", compact("Employee"));
    }

    /**
     * @param Employee $Employee
     * @return RedirectResponse
     * @throws \Exception
     */
    public function destroy(Employee $Employee)
    {
        $Employee->delete();

        return redirect()->route("employees.index");
    }
    
    public function messageBody($firstname, $lastname, $group)
    {
        $format = 'Habari %s %s,Hongera  umesajiliwa kwenye mfumo wa Uzalishaji wa Homeveg';

        return sprintf(
            $format,
            $firstname,
            $lastname,
            $group
        );
    }
}
