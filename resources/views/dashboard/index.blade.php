@extends('layouts.master')

@section('content')
    <div class="wrapper">
        <!-- .page -->
        <div class="page"><div class="sidebar-backdrop"></div>
            <!-- .page-inner -->
            <div class="page-inner">
                <!-- .page-title-bar -->
                <header class="page-title-bar">
                    <p class="lead">
                        <span class="font-weight-bold">Hello, {{ auth()->user()->full_name }}</span>
                        <span class="d-block text-muted">Here’s what’s happening with your business today.</span>
                    </p>
                </header>

                <div class="page-section">
                    <div class="section-block">
                        <div class="metric-row">
                            <div class="col-lg-9">
                                <div class="metric-row metric-flush">
                                    <!-- metric column -->
                                    <div class="col">
                                        <!-- .metric -->
                                        <a href="user-teams.html" class="metric metric-bordered align-items-center">
                                            <h2 class="metric-label"> Registered farmers </h2>
                                            <p class="metric-value h3">
                                                <sub>
                                                    <i class="oi oi-people"></i>
                                                </sub>
                                                <span class="value">
                                                    {{ sprintf("%05d", \App\Farmer::count()) }}
                                                </span>
                                            </p>
                                        </a>
                                        <!-- /.metric -->
                                    </div>
                                    <!-- /metric column -->

                                    <div class="col">
                                        <!-- .metric -->
                                        <a href="user-projects.html" class="metric metric-bordered align-items-center">
                                            <h2 class="metric-label"> Packhouse weight </h2>
                                            <p class="metric-value h3">
                                                <sub>
                                                    <i class="oi oi-fork"></i>
                                                </sub>
                                                <span class="value">
                                                    {{ number_format(\App\Purchase::sum("weight_before"), 2) }} kg
                                                </span>
                                            </p>
                                        </a>
                                    </div>

                                    <!-- metric column -->
                                    <div class="col">
                                        <!-- .metric -->
                                        <a href="user-tasks.html" class="metric metric-bordered align-items-center">
                                            <h2 class="metric-label"> Graded Weight </h2>
                                            <p class="metric-value h3">
                                                <sub>
                                                    <i class="fa fa-tasks"></i>
                                                </sub>
                                                <span class="value">
                                                    {{ number_format(\App\Purchase::sum("weight_after"), 2) }} kg
                                                </span>
                                            </p>
                                        </a>
                                        <!-- /.metric -->
                                    </div>
                                    <!-- /metric column -->
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <div class="card-metric">
                                    <a class="metric">
                                        <div class="metric-badge">
                                        <span class="badge badge-lg badge-success">
                                            <span class="oi oi-media-record pulse mr-1"></span> COMPLETED PURCHASES
                                        </span>
                                        </div>
                                        <p class="metric-value h3">
                                            <sub>
                                                <i class="oi oi-timer"></i>
                                            </sub>
                                            <span class="value">
                                                {{ sprintf("%05d", \App\Purchase::where("status", "completed")->count()) }}
                                            </span>
                                        </p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-lg-12 col-xl-6">
                            <section class="card card-fluid">
                                <div class="card-body">
                                    <div class="d-flex align-items-center mb-3">
                                        <h3 class="card-title mr-auto">
                                            Number of purchases over time
                                        </h3>
                                    </div>

                                    <div class="chartjs" style="height: 300px">
                                        <div class="chartjs-size-monitor" style="position: absolute; left: 0px; top: 0px; right: 0px; bottom: 0px; overflow: hidden; pointer-events: none; visibility: hidden; z-index: -1;">
                                            <div class="chartjs-size-monitor-expand" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;">
                                                <div style="position:absolute;width:1000000px;height:1000000px;left:0;top:0"></div>
                                            </div>
                                            <div class="chartjs-size-monitor-shrink" style="position:absolute;left:0;top:0;right:0;bottom:0;overflow:hidden;pointer-events:none;visibility:hidden;z-index:-1;"><div style="position:absolute;width:200%;height:200%;left:0; top:0"></div></div></div>
                                        <canvas id="completion-tasks" width="268" height="283" class="chartjs-render-monitor" style="display: block; width: 268px; height: 283px;"></canvas>
                                    </div>
                                </div>
                            </section>
                        </div>

                        <div class="col-12 col-lg-6 col-xl-6">
                            <section class="card card-fluid">
                                <!-- .card-body -->
                                <div class="card-body pb-0">
                                    <div class="d-flex align-items-center mb-3">
                                        <h3 class="card-title mr-auto"> PurchasesBoard </h3>

                                        <div class="card-title-control">
                                            <div class="form-group dropdown">
                                                <button class="btn btn-light" data-toggle="dropdown">
                                                    <span>Today</span>
                                                    <i class="fa fa-fw fa-caret-down"></i>
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- legend -->
                                    <ul class="list-inline small">
                                        <li class="list-inline-item">
                                            <i class="fa fa-fw fa-circle text-info"></i> Received
                                        </li>
                                        <li class="list-inline-item">
                                            <i class="fa fa-fw fa-circle text-purple"></i> Completed
                                        </li>
                                        <li class="list-inline-item">
                                            <i class="fa fa-fw fa-circle text-teal"></i> Paid
                                        </li>
                                        <li class="list-inline-item">
                                            <i class="fa fa-fw fa-circle text-red"></i> Rejected
                                        </li>
                                    </ul>
                                </div>

                                <!-- .list-group -->
                                <div class="list-group list-group-flush">
                                    @foreach(\App\Product::latest()->take(5)->get() as $product)
                                    <div class="list-group-item">
                                        <div class="list-group-item-figure">
                                            <a href="user-profile.html"
                                               class="user-avatar"
                                               data-toggle="tooltip"
                                               title=""
                                               data-original-title="Martha Myers"
                                        >
                                                <img src="{{ Avatar::create($product->name)->toBase64() }}" alt="">
                                            </a>
                                        </div>
                                        <div class="list-group-item-body">
                                            <!-- .progress -->
                                            <div class="progress bg-white rounded-0" data-toggle="tooltip" data-html="true" title="" data-original-title="">
                                                <div class="progress-bar bg-purple"
                                                     role="progressbar"
                                                     aria-valuenow="73"
                                                     aria-valuemin="0"
                                                     aria-valuemax="100"
                                                     style="width: 73%"
                                                >
                                                    <span class="sr-only">73% Complete</span>
                                                </div>
                                                <div class="progress-bar bg-teal"
                                                     role="progressbar"
                                                     aria-valuenow="8"
                                                     aria-valuemin="0"
                                                     aria-valuemax="100"
                                                     style="width: 18%"
                                                >
                                                    <span class="sr-only">8% Complete</span>
                                                </div>
                                                <div class="progress-bar bg-red"
                                                     role="progressbar"
                                                     aria-valuenow="3"
                                                     aria-valuemin="0"
                                                     aria-valuemax="100"
                                                     style="width: 3%">
                                                    <span class="sr-only">3% Complete</span>
                                                </div>
                                            </div>
                                            <!-- /.progress -->
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                            </section>
                        </div>
                    </div>

                    <div class="section-deck">
                        <div class="card card-fluid">
                            <header class="card-header"> Today's purchases </header>
                            @if(\App\Purchase::count())
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="text-left"  nowrap=>Farmer</th>
                                                <th class="text-left"  nowrap>Product</th>
                                                <th class="text-right" nowrap>Packhouse Weight</th>
                                                <th class="text-right" nowrap>Graded Weight</th>
                                                <th class="text-right" nowrap>Amount</th>
                                                <th class="text-left"  nowrap>Status</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        @foreach(\App\Purchase::take(5)->get() as $purchase)
                                            <tr>
                                                <td>
                                                    <a href="{{ route("farmers.show", $purchase->farmer) }}" class="user-avatar mr-1">
                                                        <img src="{{ Avatar::create($purchase->farmer->full_name)->toBase64() }}" alt="User Avatar">
                                                    </a>
                                                    <a href="{{ route("farmers.show", $purchase->farmer) }}">
                                                        {{ $purchase->farmer->full_name }}
                                                    </a>
                                                </td>
                                                <td>{{ $purchase->product->name }}</td>
                                                <td class="text-right">
                                                    {{ $purchase->weight()->before_in_kg }}
                                                </td>
                                                <td class="text-right">
                                                    {{ $purchase->weight()->after_in_kg }}
                                                    {{ $purchase->weight_unit }}
                                                </td>
                                                <td class="text-right">
                                                    {{ number_format($purchase->amount, 2) }}
                                                </td>
                                                <td class="text-capitalize">
                                                    @include("purchases.statuses.$purchase->status")
                                                </td>
                                            </tr>
                                        @endforeach
                                        </tbody>
                                    </table>
                                </div>
                            @else
                                <div class="text-center my-4">
                                    No purchase recorded today
                                </div>
                            @endif

                            <footer class="card-footer">
                                <a href="{{ route("purchases.index") }}" class="card-footer-item">
                                    View all
                                    <i class="fa fa-fw fa-angle-right"></i>
                                </a>
                            </footer>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-lg-6">
                            <section class="card card-fluid">
                                <header class="card-header">
                                    Newly registered farmers
                                </header>
                                <div class="list-group list-group-flush list-group-divider">
                                    @foreach(\App\Farmer::latest()->take(5)->get() as $farmer)
                                    <div class="list-group-item">
                                        <div class="list-group-item-figure">
                                            <a href="{{ route("farmers.show", $farmer) }}" class="user-avatar mr-1">
                                                <img src="{{ Avatar::create($farmer->full_name)->toBase64() }}" alt="User Avatar">
                                            </a>
                                        </div>
                                        <div class="list-group-item-body">
                                            <h4 class="list-group-item-title">
                                                <a href="#">{{ $farmer->full_name }}</a>
                                            </h4>
                                            <p class="list-group-item-text">
                                                {{ $farmer->created_at }}
                                            </p>
                                        </div>
                                        <div class="list-group-item-figure">
                                            <a href="{{ route("farmers.show", $farmer) }}" class="btn btn-sm btn-light">
                                                <i class="far fa-file-alt"></i>
                                            </a>
                                        </div>
                                    </div>
                                    @endforeach
                                </div>
                                <footer class="card-footer">
                                    <a href="{{ route("farmers.index") }}" class="card-footer-item">
                                        View all
                                        <i class="fa fa-fw fa-angle-right"></i>
                                    </a>
                                </footer>
                            </section>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
