<?php

namespace App\Exports;

use App\Block;
use Maatwebsite\Excel\Concerns\FromCollection;

class BlocksExport implements FromCollection
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        return Block::all();
    }
}
