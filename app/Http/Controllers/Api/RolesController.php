<?php

namespace App\Http\Controllers\Api;

use App\Http\Resources\RoleCollection;
use App\Role;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class RolesController extends Controller
{
    public function index()
    {
        return new RoleCollection(Role::get());
    }
}
