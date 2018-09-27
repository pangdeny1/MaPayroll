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
                            <button type="button" class="btn btn-light">
                                <i class="oi oi-data-transfer-download"></i>
                                <span class="ml-1">Export</span>
                            </button>
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
                                            <th>Farmerrr</th>
                                            <th>Product</th>
                                            <th>Creator</th>
                                            <th class="text-right">Weight</th>
                                            <th class="text-right">Amount in Tsh.</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($payrolls as $payroll)
                                        <tr>
                                            <td>{{ $payroll->employee_id }}</td>
                                            <td>--}</td>
                                            <td>David Pella</td>
                                            <td class="text-right">
                                                {{ $payroll->basicpay}}
                                            </td>
                                            <td class="text-right">
                                                {{ number_format($payroll->netpay, 2) }}
                                            </td>
                                        </tr>
                                        @endforeach
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th colspan="3"></th>
                                            <th class="text-right">
                                                {{ number_format($payrolls->sum("gross_pay"), 2) }}
                                            </th>
                                            <th class="text-right">
                                                {{ number_format($payrolls->sum("basic_pay"), 2) }}
                                            </th>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                            @else
                                <div class="text-center my-4">No Payrolls report for this payroll_id of time</div>
                            @endif
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection