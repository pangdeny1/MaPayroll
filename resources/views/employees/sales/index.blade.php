@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page">
            <div class="sidebar-backdrop"></div>
            <!-- .page-cover -->
            @include("farmers._page_cover")

            <!-- .page-navs -->
            @include("farmers._page_nav")

            <div class="page-inner">
                <!-- .page-title-bar -->
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="{{ route("farmers.show", $farmer) }}">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>
                                    {{ $farmer->full_name  }}
                                </a>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title mr-sm-auto"> Sales
                        <small class="badge">{{ $farmer->sales->count() }} Totals</small>
                    </h1>
                </header>

                <!-- .page-section -->
                <div class="page-section">

                    @if($farmer->sales->count())
                    <section class="card card-fluid">
                        <header class="card-header">
                            <ul class="nav nav-tabs card-header-tabs">
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") ? "" : "active" }}"
                                       href="{{ route("purchases.index") }}"
                                    >
                                        All
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") === "processed" ? "active" : "" }}"
                                       href="{{ route("purchases.index", ["status" => "processed"]) }}"
                                    >
                                        Processed
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") === "unprocessed" ? "active" : "" }}"
                                       href="{{ route("purchases.index", ["status" => "unprocessed"]) }}"
                                    >
                                        Unprocessed
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link {{ request()->query("status") === "rejected" ? "active" : "" }}"
                                       href="{{ route("purchases.index", ["status" => "rejected"]) }}">
                                        Rejected
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") === "completed" ? "active" : "" }}"
                                       href="{{ route("purchases.index", ["status" => "completed"]) }}">
                                        Completed
                                    </a>
                                </li>
                            </ul>
                        </header>

                        <div class="card-body">
                            <div class="form-group">
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <span class="oi oi-magnifying-glass"></span>
                                        </span>
                                    </div>
                                    <input type="text" class="form-control" placeholder="Search record">
                                </div>
                            </div>

                            <!-- .table-responsive -->
                            <div class="text-muted"> Showing 1 to 10 of 1,000 entries </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th class="text-left" nowrap>Product</th>
                                        <th class="text-right" nowrap>Farm weight</th>
                                        <th class="text-right" nowrap>Packing house weight</th>
                                        <th class="text-right" nowrap>Graded weight</th>
                                        <th class="text-right" nowrap>Rejected weight</th>
                                        <th class="text-right" nowrap>Unit price (<span class="text-muted">Tsh.</span>)</th>
                                        <th class="text-right" nowrap>Amount</th>
                                        <th>Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($farmer->sales as $sale)
                                        <tr>
                                            <td class="text-left align-middle" nowrap>
                                                {{ $sale->product->name }}
                                            </td>
                                            <td class="text-right align-middle" nowrap>
                                                {{ $sale->weight()->field_in_kg }}
                                            </td>
                                            <td class="text-right align-middle" nowrap>
                                                {{ $sale->weight()->before_in_kg }}
                                            </td>
                                            <td class="text-right align-middle" nowrap>
                                                {{ $sale->weight()->after_in_kg }}
                                            </td>
                                            <td class="text-right align-middle" nowrap>
                                                {{ $sale->weight()->loss_in_kg }}
                                            </td>
                                            <td class="text-right align-middle" nowrap>
                                                {{ $sale->price()->unit }}
                                            </td>
                                            <td class="text-right align-middle" nowrap>
                                                {{ $sale->price()->amount }}
                                            </td>
                                            <td class="text-capitalize align-middle" nowrap>
                                                {{ $sale->status }}
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>

                            <!-- .pagination -->
                            {{--{{ $purchases->links() }}--}}
                        </div>
                    </section>
                    @else
                        <div class="alert alert-info has-icon alert-dismissible fade show">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <div class="alert-icon">
                                <span class="oi oi-flag"></span>
                            </div>
                            <h4 class="alert-heading"> No sales related to {{ $farmer->full_name }}! </h4>
                            <p class="mb-0"> Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra augue. Praesent commodo cursus magna,
                                <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>. </p>
                        </div>
                    @endif

                </div>
            </div>
        </div>
    </div>
@endsection