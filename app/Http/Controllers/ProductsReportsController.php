<?php

namespace App\Http\Controllers;

use App\Purchase;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ProductsReportsController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function index()
    {
        $queryBuilder = Purchase::query()
            ->select(
            '*',
            \DB::raw('SUM(amount) as total_amount'),
            \DB::raw('SUM(weight_before) as total_weight_before'),
            \DB::raw('SUM(weight_after) as total_weight_after')
        )
            ->groupBy("purchases.product_id");

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

        return view("reports.products", compact("purchases"));
    }
}
