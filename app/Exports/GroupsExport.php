<?php

namespace App\Exports;

use App\Group;
use Maatwebsite\Excel\Concerns\FromCollection;

class GroupsExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Group::all();
    }
}
