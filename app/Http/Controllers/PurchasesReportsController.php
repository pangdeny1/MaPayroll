<?php

namespace App\Http\Controllers;

use App\Purchase;
use Carbon\Carbon;
use Illuminate\Http\Request;

class PurchasesReportsController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function index()
    {
        $queryBuilder = Purchase::query();
            //->where("status", "completed");

        if (request("period") == "daily") {
            $queryBuilder->whereBetween("updated_at", [
                Carbon::now()->startOfDay()->toDateTimeString(),
                Carbon::now()->endOfDay()->toDateTimeString()
            ]);
        }

        if (request("period") == "weekly") {
            $queryBuilder->whereBetween("updated_at", [
                Carbon::now()->startOfWeek()->toDateTimeString(),
                Carbon::now()->endOfWeek()->toDateTimeString()
            ]);
        }

        if (request("period") == "monthly") {
            $queryBuilder->whereBetween("updated_at", [
                Carbon::now()->startOfMonth()->toDateTimeString(),
                Carbon::now()->endOfMonth()->toDateTimeString()
            ]);
        }

        if (request("period") == "monthly") {
            $queryBuilder->whereBetween("updated_at", [
                Carbon::now()->startOfMonth()->toDateTimeString(),
                Carbon::now()->endOfMonth()->toDateTimeString()
            ]);
        }

        $purchases = $queryBuilder->get();

        return view("reports.purchases", compact("purchases"));
    }
}
