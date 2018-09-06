<?php

namespace App\Http\Controllers;

use App\Batch;
use App\Exports\ClustersExport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Http\Request;

class ClustersController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function index()
    {
        $clusters = Batch::latest()
            ->when(request("q"), function($query){
                return $query->where("number", "LIKE", "%". request("q") ."%");
            })
            ->when(request("status"), function($query){
                return $query->where("status", request("status"));
            })
            ->paginate();

        return view("clusters.index", compact("clusters"));
    }

    public function show(Batch $batch)
    {
        return view("clusters.show", compact("batch"));
    }

    public function export() 
    {
        return Excel::download(new ClustersExport, 'clusters.xlsx');
    }
}
