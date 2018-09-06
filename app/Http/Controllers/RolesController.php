<?php

namespace App\Http\Controllers;

use App\Http\Requests\RoleCreateRequest;
use App\Role;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\View\View;

class RolesController extends Controller
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
        $this->authorize("view", Role::class);

        $roles = Role::paginate();

        return view("roles.index", compact("roles"));
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize("create", Role::class);

        return view("roles.create");
    }

    /**
     * @param RoleCreateRequest $request
     * @return RedirectResponse
     * @throws AuthorizationException
     */
    public function store(RoleCreateRequest $request)
    {
        $this->authorize("create", Role::class);
        
        $entities = [
            "users" => \App\User::class,
            "roles" => \App\User::class,
            "farmers" => \App\Farmer::class,
            "products" => \App\Product::class,
            "product-categories" => \App\ProductCategory::class,
            "purchases" => \App\Purchase::class,
            "blocks" => \App\Block::class,
            "batches" => \App\Batch::class,
            "farms" => \App\Farm::class,
        ];

        $role = Role::forceCreate($request->only(["name", "title", "description"]));

        foreach (request("permissions") as $key => $permissions) {
            foreach ($permissions as $name => $permission) {
                if (key_exists($key, $entities)) {
                    \Bouncer::allow($role->name)->to($name, $entities[$key]);
                }
            }
        }

        return redirect()->route("roles.index");
    }

    public function edit(Role $role)
    {
        return view("roles.edit", compact("role"));
    }

    public function update(Request $request, Role $role)
    {
        $this->validate($request, [
            "name" => "required",
            "title" => "required",
            "description" => "required",
        ]);
$entities = [
            "users" => \App\User::class,
            "roles" => \App\User::class,
            "farmers" => \App\Farmer::class,
            "products" => \App\Product::class,
            "product-categories" => \App\ProductCategory::class,
            "purchases" => \App\Purchase::class,
            "blocks" => \App\Block::class,
            "batches" => \App\Batch::class,
            "farms" => \App\Farm::class,
        ];

        $role->update($request->only(["name", "title", "description"]));


         foreach (request("permissions") as $key => $permissions) {
            foreach ($permissions as $name => $permission) {
                if (key_exists($key, $entities)) {
                    \Bouncer::allow($role->name)->to($name, $entities[$key]);
                }
            }
        }

        return redirect()->route("roles.index");
    }
}
