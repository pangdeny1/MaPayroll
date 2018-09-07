<?php

namespace App\Http\Controllers\Api;

use App\Employee;
use App\Http\Resources\employeesCollection;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class EmployeesController extends Controller
{
    public function index()
    {
        $employees = Employee::query()
            ->whereHas("sales", function($query){
                return $query->whereNotNull("field_weight");
            })
            ->has("farms")
            ->get();

        return new employeesCollection($employees);
    }
}
