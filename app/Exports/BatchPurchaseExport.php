<?php

namespace App\Exports;

use App\Batch;
use Illuminate\Contracts\View\View;
use Maatwebsite\Excel\Concerns\FromView;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class BatchPurchaseExport implements FromView
{
    use Exportable;

    public function __construct(Batch $batch)
    {
        $this->batch = $batch;
    }

    public function view(): View
    {
        return view('clusters.purchases.excel', [
            'batch' => $this->batch
        ]);
    }
}
