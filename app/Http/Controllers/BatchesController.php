<?php

namespace App\Http\Controllers;

use App\Batch;
use App\Http\Requests\BatchCreateRequest;
use Illuminate\Auth\Access\AuthorizationException;
use Illuminate\Http\Request;
use Illuminate\View\View;
use App\Exports\BatchesExport;
use Maatwebsite\Excel\Facades\Excel;

class BatchesController extends Controller
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
        $this->authorize("view", Batch::class);


          $batches= Batch::latest()
            ->when(request("q"), function($query){
                return $query
                    ->where("number", "LIKE", "%". request("q") ."%")
                    ->orWhere("description", "LIKE", "%". request("q") ."%");
            })
            ->paginate();

        return view("batches.index", compact("batches"));
    }

    /**
     * @return View
     * @throws AuthorizationException
     */
    public function create()
    {
        $this->authorize("create", Batch::class);

        return view("batches.create");
    }

    /**
     * @param BatchCreateRequest $request
     * @return \Illuminate\Http\RedirectResponse
     * @throws AuthorizationException
     */
    public function store(BatchCreateRequest $request)
    {
        $this->authorize("create", Batch::class);

        // $this->validate($request, [
        //     "farmers" => function($attribute, $value, $fail) {
        //         if (count($value) > request("max_count")){
        //             return $fail($attribute.' is selected exceed maximum limit.');
        //         }
        //     },
        // ]);

        $batch = Batch::create($request->only([
            "number",
            "valid_from",
            "valid_till",
            "description",
            "max_count",
            "block_id",
            "group_id",
            "expected_arrival_time",
            "expected_arrival_temperature",
            "expected_delivery_time",
            "expected_departure_time",
            "expected_harvest_time",
        ]));
        /*
       if(count($request->farmers)){
            $batch->farmers()->attach(request("farmers"));

            if ($batch->max_count == $batch->farmers->count()) {
                $batch->update(["status" => "active"]);
            }
        }
        */
        


        return redirect()->route("batches.index");
    }

    public function edit(Batch $batch)
    {
        return view("batches.edit", compact("batch"));
    }

    public function update(Request $request, Batch $batch)
    {
        $this->validate($request, [
            "number" => "required",
            "valid_from" => "required|date",
            "valid_till" => "required|date",
            "max_count" => "required|numeric",
            "description" => "required",
            "block_id" => "required",
            "group_id" => "required",
            "expected_arrival_time" => "required|date",
            "expected_arrival_temperature" => "required",
            "expected_harvest_time" => "required|date",
            "expected_delivery_time" => "required|date",
            "expected_departure_time" => "required|date",
        ]);

        $batch->update([
            "number" => request("number", $batch->number),
            "valid_from" => request("valid_from", $batch->valid_from),
            "valid_till" => request("valid_till", $batch->valid_till),
            "description" => request("description", $batch->description),
            "max_count" => request("max_count", $batch->max_count),
            "block_id" => request("block_id", $batch->block_id),
            "group_id" => request("group_id", $batch->group_id),
            "expected_arrival_time" => request("expected_arrival_time", $batch->expected_arrival_time),
            "expected_arrival_temperature" => request("expected_arrival_temperature", $batch->expected_arrival_temperature),
            "expected_delivery_time" => request("expected_delivery_time", $batch->expected_delivery_time),
            "expected_departure_time" => request("expected_departure_time", $batch->expected_departure_time),
            "expected_harvest_time" => request("expected_harvest_time", $batch->expected_harvest_time),
        ]);

        return redirect()->route("batches.index");
    }

    public function destroy(Batch $batch)
    {
        $batch->farmers()->detach();

        $batch->delete();
        
        return redirect()->route("batches.index");
    }

    public function export() 
    {
        return Excel::download(new BatchesExport, 'batches.xlsx');
    }
}
