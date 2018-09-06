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
                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto"> Harvests
                            <small class="badge">{{ $farmer->harvests->count() }} Totals</small>
                        </h1>
                        <div class="btn-toolbar">
                            <button type="button" class="btn btn-light">
                                <i class="oi oi-data-transfer-download"></i>
                                <span class="ml-1">Export</span>
                            </button>
                            <button type="button" class="btn btn-light">
                                <i class="oi oi-data-transfer-upload"></i>
                                <span class="ml-1">Import</span>
                            </button>
                            <a href="{{ route("farmers.harvests.create", $farmer) }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                Add a new harvest
                            </a>
                        </div>
                    </div>
                </header>

                <!-- .page-section -->
                <div class="page-section">

                    @if($farmer->harvests->count())
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
                                            <th class="text-right" nowrap>Expected amount</th>
                                            <th class="text-left" nowrap>Expected date</th>
                                            <th class="text-left" nowrap>Farm</th>
                                            <th class="text-left" nowrap>Status</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($farmer->harvests as $harvest)
                                            <tr>
                                                <td class="text-left align-middle" nowrap>
                                                    {{ $harvest->householdBlock->product->name }}
                                                </td>
                                                <td class="text-right align-middle" nowrap>
                                                    {{ $harvest->expected_amount }} {{ $harvest->amount_unit }}
                                                </td>
                                                <td class="text-left align-middle" nowrap>
                                                    {{ $harvest->expected_date->toFormattedDateString() }}
                                                </td>
                                                <td class="text-left align-middle" nowrap>
                                                    {{ $harvest->householdBlock->farm->name }}
                                                </td>
                                                <td class="text-left text-capitalize align-middle" nowrap>
                                                    {{ $harvest->status }}
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
                            <h4 class="alert-heading"> Warning! </h4>
                            <p class="mb-0">
                                Best check yo self, you're not looking too good. Nulla vitae elit libero, a pharetra
                                augue. Praesent commodo cursus magna,
                                <a href="#" class="alert-link">vel scelerisque nisl consectetur et</a>.
                            </p>
                        </div>
                    @endif

                </div>
            </div>
        </div>
    </div>
@endsection