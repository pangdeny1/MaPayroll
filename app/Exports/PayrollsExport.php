<?php

namespace App\Exports;

use App\Models\Payroll;
use App\prltransaction;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\FromCollection;

class PayrollsExport implements FromCollection, WithMapping, WithHeadings
{
    public function collection()
    {
        return prltransaction::all();
    }

    public function map($payroll) : array
    {
        return [
            $payroll->payroll_id,
            $payroll->employee_id,
            $payroll->period_rate,
            $payroll->basicpay,
            $payroll->grosspay,
            $payroll->tax,
            $payroll->netpay,
        ];
    }

    public function headings(): array
    {
        return [
            "Full name",
            "First name",
            "Last name",
            "Email address",
            "Phone number",
            "Gender",
            "Birthday",
        ];
    }
}
