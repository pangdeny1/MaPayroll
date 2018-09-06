<?php

namespace App\Exports;

use App\User;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\WithMapping;
use Maatwebsite\Excel\Concerns\FromCollection;

class UsersExport implements FromCollection, WithMapping, WithHeadings
{
    public function collection()
    {
        return User::all();
    }

    public function map($user) : array
    {
        return [
            $user->first_name ." ". $user->last_name,
            $user->first_name,
            $user->last_name,
            $user->email,
            $user->phone,
            $user->gender,
            $user->birthday,
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
