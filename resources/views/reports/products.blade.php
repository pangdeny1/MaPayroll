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
                            Product reports
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
                                <li class="nav-item">
                                    <a href="{{ route("products.reports", ["period" => "daily"]) }}"
                                       class="nav-link {{ request()->query("period") === "daily" ? "active" : "" }}"
                                    >
                                        Daily
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route("products.reports", ["period" => "weekly"]) }}"
                                       class="nav-link {{ request()->query("period") === "weekly" ? "active" : "" }}"
                                    >
                                        Weekly
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route("products.reports", ["period" => "monthly"]) }}"
                                       class="nav-link {{ request()->query("period") === "monthly" ? "active" : "" }}"
                                    >
                                        Monthly
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="{{ route("products.reports", ["period" => "annual"]) }}"
                                       class="nav-link {{ request()->query("period") === "annual" ? "active" : "" }}"
                                    >
                                        Annual
                                    </a>
                                </li>
                            </ul>
                        </header>

                        <div class="card-body">
                            @if($purchases->count())
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th>Product</th>
                                            <th class="text-right">Total weight before</th>
                                            <th class="text-right">Total weight after</th>
                                            <th class="text-right">Difference in weight</th>
                                            <th class="text-right">Total amount in Tsh.</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($purchases as $purchase)
                                            <tr>
                                                <td>{{ $purchase->product->name }}</td>
                                                <td class="text-right">
                                                    {{ number_format($purchase->total_weight_before, 2) }}
                                                    {{ $purchase->weight_unit }}
                                                </td>
                                                <td class="text-right">
                                                    {{ number_format($purchase->total_weight_after, 2) }}
                                                    {{ $purchase->weight_unit }}
                                                </td>
                                                <td class="text-right">
                                                    {{ number_format(($purchase->total_weight_before - $purchase->total_weight_after), 2) }}
                                                    {{ $purchase->weight_unit }}
                                                </td>
                                                <td class="text-right">
                                                    {{ number_format($purchase->amount, 2) }}
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                        <tfoot>
                                        <tr>
                                            <th></th>
                                            <th class="text-right">
                                                {{ number_format($purchases->sum("total_weight_before"), 2) }} Kg
                                            </th>
                                            <th class="text-right">
                                                {{ number_format($purchases->sum("total_weight_after"), 2) }} Kg
                                            </th>
                                            <th class="text-right">
                                                {{ number_format(($purchases->sum("total_weight_before") - $purchases->sum("total_weight_after")), 2) }} kg
                                            </th>
                                            <th class="text-right">
                                                {{ number_format($purchases->sum("amount"), 2) }}
                                            </th>
                                        </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            @else
                                <div class="text-center my-4">No product report for this period of time</div>
                            @endif
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection