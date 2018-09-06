<?php

namespace App\Http\Controllers;

use App\Remark;
use Illuminate\Http\Request;

class RemarkReplaysController extends Controller
{
    public function __construct()
    {
        $this->middleware("auth");
    }

    public function store(Request $request, Remark $remark)
    {
        $this->validate($request, [
            "remarks" => "required"
        ]);

        $remark->parent()->create([
            "body" => $request->remarks,
            "creator_id" => auth()->id(),
        ]);

        return redirect()->back();
    }
}
