<?php

namespace App\Http\Controllers;

use App\Role;
use App\State;
use App\User;
use App\Exports\UsersExport;
use Maatwebsite\Excel\Facades\Excel;
use App\Events\UserRegistered;
use App\Http\Requests\UserCreateRequest;
use App\Http\Requests\UserEditRequest;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;
use Illuminate\View\View;

class UsersController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    /**
     * @return \Illuminate\Contracts\View\Factory|View
     * @throws AuthorizationException
     */
    public function index()
    {
        $this->authorize("view", User::class);

        $users = User::latest()->paginate();

        return view("users.index", compact("users"));
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize("create", User::class);

        return view("users.create", [
            "states" => State::getCountryName("Tanzania"),
            "roles"  => Role::get(),
        ]);
    }

    /**
     * @param UserCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function store(UserCreateRequest $request)
    {
        $this->authorize("create", User::class);

        $user = User::create([
            "first_name" => request("first_name"),
            "last_name" => request("last_name"),
            "email" => request("email"),
            "phone" => request("phone"),
            "country" => request("country"),
            "gender" => request("gender"),
            "birthday" => request("birthday"),
            "password" => $password = str_random(6),
            "creator_id" => auth()->id(),
        ]);

        $user->address()->create([
            "street" => request("street"),
            "address" => request("address", ""),
            "state" => request("state"),
            "country" => request("country"),
            "postal_code" => request("postal_code"),
        ]);

        foreach (request("roles") as $role) {
            $user->assign($role);
        }

        event(new UserRegistered($user, $password));

        return redirect()->route("users.index");
    }

    public function edit(User $user)
    {
        return view("users.edit", [
            "user" => $user,
            "states" => State::getCountryName("Tanzania"),
        ]);
    }

    public function update(UserEditRequest $request, User $user)
    {
        $this->validate($request, [
            "first_name" => "required",
            "last_name" => "required",
            "email" => "required|email",
            "phone" => "required",
            "country" => "required",
            "gender" => ["required", Rule::in(["male","female"])],
            "birthday" => "required",
        ]);

        $user->update([
            "first_name" => request("first_name"),
            "last_name" => request("last_name"),
            "email" => request("email"),
            "phone" => request("phone"),
            "country" => request("country"),
            "gender" => request("gender"),
            "birthday" => request("birthday"),
        ]);

        if ($user->address()->exists()){
            $user->address()->update([
                "street" => request("street", optional($user->address)->street),
                "address" => request("address", optional($user->address)->address),
                "state" => request("state", optional($user->address)->state),
                "country" => request("country", optional($user->address)->country),
                "postal_code" => request("postal_code", optional($user->address)->postal_code),
            ]);
        } else {
            $user->address()->create([
                "street" => request("street"),
                "address" => request("address", ""),
                "state" => request("state"),
                "country" => request("country"),
                "postal_code" => request("postal_code"),
            ]);
        }
       
 foreach (request("roles") as $role) {
            $user->assign($role);
        }

        return redirect()->route("users.index");
    }

    public function show(User $user)
    {
        return view("users.show",compact("user"));
    }

    /**
     * @param User $user
     * @return RedirectResponse
     * 
     */
    public function destroy(User $user)
    {
        $user->addresses()->delete();

        $user->delete();

        return redirect()->route("users.index");
    }

    public function export() 
    {
        return Excel::download(new UsersExport, 'users.xlsx');
    }
}
