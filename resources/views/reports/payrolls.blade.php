@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page">
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i> Reports
                                </a>
                            </li>
                        </ol>
                    </nav>
                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0">
                            Payroll reports
                        </h1>
                        <div class="btn-toolbar">
                             <a href="{{ route("payrolls.export") }}" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </a>
                        </div>
                    </div>
                </header>

                <div class="page-section">
                    <section class="card shadow-1 border-0 card-fluid">
                        <header class="card-header">
                            <ul class="nav nav-tabs card-header-tabs">
                                @foreach(\App\Models\Payroll::latest()->take(10)->get() as $payrollperiod)
                                <li class="nav-item">
                                    <a href="{{ route("payrolls.reports", ["payroll_id" => $payrollperiod]) }}"
                                       class="nav-link {{ request()->query("payroll_id") === $payrollperiod ? "active" : "" }}"
                                    >
                                        {{$payrollperiod->payrollid}}
                                    </a>
                                </li>
                                @endforeach
                                
                            </ul>
                        </header>

                        <div class="card-body">
                            @if($payrolls->count())
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="text-left">#</th>
                                            <th class="text-left">Employee</th>
                                            <th class="text-right">Basic</th>
                                            <th class="text-right">Other Income</th>
                                            <th class="text-right">Gross</th>
                                            <th class="text-right">Pension</th>                                            
                                            <th class="text-right">Health</th>
                                            <th class="text-right">Hdmf</th>
                                            <th class="text-right">Taxable</th>
                                            <th class="text-right">Tax</th>
                                            <th class="text-right">Loans</th>
                                            <th class="text-right">Deductions</th>
                                            <th class="text-right">Net Pay</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($payrolls as $payroll)
                                        <tr>
                                            <td>{{  $i++}}.</td>
                                            <td>{{  $payroll->first_name }} {{  $payroll->last_name }}</td>
                                            <td>{{  number_format($payroll->basicpay,2)}}</td>
                                            <td>{{  number_format($payroll->other_income,2)}}</td>
                                            <td class="text-right">
                                                {{  number_format($payroll->grosspay,2)}}
                                            </td>
                                            <td class="text-right">
                                                {{ number_format($payroll->ss_pay, 2) }}
                                            </td>
                                           
                                            <td class="text-right">
                                                {{ number_format($payroll->health, 2) }}
                                            </td>
                                            <td class="text-right">
                                                {{ number_format($payroll->hdmf, 2) }}
                                            </td>
                                            <td class="text-right">
                                                {{ number_format($payroll->taxable_income, 2) }}
                                            </td>
                                            <td class="text-right">
                                                {{ number_format($payroll->tax, 2) }}
                                            </td>
                                              <td class="text-right">
                                                {{ number_format($payroll->loan_deduction, 2) }}
                                            </td>
                                             <td class="text-right">
                                                {{ number_format($payroll->total_deduction, 2) }}
                                            </th>
                                             <th class="text-right">
                                                {{ number_format($payroll->netpay, 2) }}
                                            </th>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="2"></th>
                                            <th class="text-right">
                                                {{ number_format($payrolls->sum("basicpay"), 2) }}
                                            </th>
                                             <th class="text-right">
                                                {{ number_format($payrolls->sum("other_income"), 2) }}
                                            </th>
                                             <th class="text-right">
                                                {{ number_format($payrolls->sum("grosspay"), 2) }}
                                            </th>
                                            <th class="text-right">
                                                {{ number_format($payrolls->sum("ss_pay"), 2) }}
                                            </th>
                                             <th class="text-right">
                                                {{ number_format($payrolls->sum("health"), 2) }}
                                            </th>
                                             <th class="text-right">
                                                {{ number_format($payrolls->sum("hdmf"), 2) }}
                                            </th>
                                            <th class="text-right">
                                                {{ number_format($payrolls->sum("taxable_income"), 2) }}
                                            </th>
                                             <th class="text-right">
                                                {{ number_format($payrolls->sum("tax"), 2) }}
                                            </th>
                                            <th class="text-right">
                                                {{ number_format($payrolls->sum("loan_deduction"), 2) }}
                                            </th>
                                            <th class="text-right">
                                                {{ number_format($payrolls->sum("total_deduction"), 2) }}
                                            </th>
                                            <th class="text-right">
                                                {{ number_format($payrolls->sum("netpay"), 2) }}
                                            </th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            @else
                                <div class="text-center my-4">No Payrolls report for this payroll of time</div>
                            @endif
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection