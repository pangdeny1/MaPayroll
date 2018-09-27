<?php

namespace App\Http\Controllers;

//use App\Purchase;
use App\prltransaction;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PayrollsReportsController extends Controller
{
   public function __construct()
    {
        $this->middleware("auth");
    }

    public function index()
    {
    	$payroll_id=request("payroll_id");
        $queryBuilder = prltransaction::query();
            //->where("status", "completed");

        if (request("payroll_id") == $payroll_id) {
            $queryBuilder->where("payroll_id",$payroll_id );
        }

        if (request("payroll_id") == 2) {
            $queryBuilder->whereBetween("updated_at", [
                Carbon::now()->startOfWeek()->toDateTimeString(),
                Carbon::now()->endOfWeek()->toDateTimeString()
            ]);
        }

        if (request("payroll_id") == 3) {
            $queryBuilder->whereBetween("updated_at", [
                Carbon::now()->startOfMonth()->toDateTimeString(),
                Carbon::now()->endOfMonth()->toDateTimeString()
            ]);
        }

        if (request("payroll_id") == 4) {
            $queryBuilder->whereBetween("updated_at", [
                Carbon::now()->startOfMonth()->toDateTimeString(),
                Carbon::now()->endOfMonth()->toDateTimeString()
            ]);
        }

        $payrolls = $queryBuilder->get();

        return view("reports.payrolls", compact("payrolls"));
    }

    public function report($payroll_id)
    {
    	  $queryBuilder = prltransaction::query();
            //->where("status", "completed");

        if (request("payroll_id") == $payroll_id) {
            $queryBuilder->where("payroll_id",$payroll_id );
        }
        return view("reports.payrolls", compact("payrolls"));
    }
}
