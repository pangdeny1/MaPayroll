<?php

namespace App\Exports;

use App\Batch;
use Maatwebsite\Excel\Concerns\FromCollection;

class BatchesExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Batch::all();
    }
}
