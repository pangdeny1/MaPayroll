@extends("layouts.master")

@section("content")
    @if($purchases->count())
        <div class="wrapper">
            <div class="page">
                <div class="page-inner">
                    <header class="page-title-bar">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="{{ route("home") }}">
                                        <i class="breadcrumb-icon fa fa-angle-left mr-2"></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item active">
                                    Purchases
                                </li>
                            </ol>
                        </nav>

                        <div class="d-sm-flex align-items-sm-center">
                            <h1 class="page-title mr-sm-auto mb-0">Purchases</h1>
                            <div class="btn-toolbar">
                                <button type="button" class="btn btn-light">
                                    <i class="far fa-file-excel"></i>
                                    <span class="ml-1">Export as excel</span>
                                </button>
                            </div>
                        </div>
                    </header>
                    <div class="page-section">
                        @if (session('status'))
                            <div class="alert alert-success alert-dismissible fade show has-icon">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <div class="alert-icon">
                                    <i class="fas fa-info-circle"></i>
                                </div>
                                <strong>Well done!</strong> {{ session('status') }}
                            </div>
                        @endif

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
                                        <a class="nav-link {{ request()->query("status") === "received" ? "active" : "" }}"
                                           href="{{ route("purchases.index", ["status" => "received"]) }}"
                                        >
                                            Processed
                                        </a>
                                    </li>
                                    
                                    <li class="nav-item">
                                        <a class="nav-link {{ request()->query("status") === "packed" ? "active" : "" }}"
                                           href="{{ route("purchases.index", ["status" => "packed"]) }}"
                                        >
                                            Packed
                                        </a>
                                    </li>
                                    
                                    <li class="nav-item ">
                                        <a class="nav-link {{ request()->query("status") === "graded" ? "active" : "" }}"
                                           href="{{ route("purchases.index", ["status" => "graded"]) }}">
                                           Graded
                                        </a>
                                    </li>
                                    
                                    <li class="nav-item">
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

                                    <li class="nav-item">
                                        <a class="nav-link {{ request()->query("status") === "paid" ? "active" : "" }}"
                                           href="{{ route("purchases.index", ["status" => "paid"]) }}">
                                           Paid
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

                                        <form action="">
                                            <input type="text" name="q" class="form-control" placeholder="Search record...">
                                        </form>
                                    </div>
                                </div>

                                <!-- .table-responsive -->
                                <div class="text-muted"> Showing {{ $purchases->firstItem() }} to {{ $purchases->lastItem() }} of {{ $purchases->total() }} entries </div>

                                <div class="table-responsive" style="min-height: 500px;">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="text-left"  nowrap>Farmer</th>
                                                <th class="text-left"  nowrap>Product</th>
                                                <th class="text-left"  nowrap>Batch number</th>
                                                <th class="text-left"  nowrap>Block ID</th>
                                                <th class="text-left"  nowrap>DO number</th>
                                                <th class="text-left"  nowrap>Harvest date</th>
                                                <th class="text-right" nowrap>Farm weight</th>
                                                <th class="text-right" nowrap>Pack house weight</th>
                                                <th class="text-right" nowrap>Graded weight</th>
                                                <th class="text-right" nowrap>Reject weight</th>
                                                <th class="text-right" nowrap>Amount</th>
                                                <th class="text-left"  nowrap>Status</th>
                                                <th class="text-left"  nowrap style="width:100px; min-width:100px;">&nbsp;</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($purchases as $purchase)
                                                <tr>
                                                    <td nowrap>
                                                        <a href="{{ route("farmers.show", $purchase->farmer) }}" class="user-avatar mr-1">
                                                            <img class="img-fluid"
                                                                 src="{{ Avatar::create($purchase->farmer->full_name)->toBase64() }}"
                                                                 alt="{{ $purchase->farmer->full_name }}"
                                                            >
                                                        </a>
                                                        <a href="{{ route("farmers.show", $purchase->farmer) }}">
                                                            {{ $purchase->farmer->full_name }}
                                                        </a>
                                                    </td>
                                                    <td nowrap>
                                                        {{ $purchase->product->name }}
                                                    </td>
                                                    <td nowrap>
                                                        {{ optional($purchase->batch)->number }}
                                                    </td>
                                                    <td nowrap>
                                                        {{ optional($purchase->block)->number }}
                                                    </td>
                                                    <td nowrap>
                                                        {{ optional($purchase->deliveryNote)->number }}
                                                    </td>
                                                    <td nowrap>
                                                        {{ optional(optional($purchase->harvest)->expected_date)->toFormattedDateString() }}
                                                    </td>
                                                    <td nowrap>
                                                        {{ $purchase->weight()->field_in_kg }}
                                                    </td>
                                                    <td nowrap>
                                                        @include("purchases.modals.packing_house_weight")
                                                    </td>
                                                    <td nowrap>
                                                        @if($purchase->weight_before)
                                                            @include("purchases.modals.graded_weight")
                                                        @else
                                                            NIL
                                                        @endif
                                                    </td>
                                                    <td class="text-right" nowrap>
                                                        {{ $purchase->weight()->loss_in_kg }}
                                                    </td>
                                                    <td class="text-right" nowrap>
                                                        {{ $purchase->price()->amount }}
                                                    </td>
                                                    <td class="text-capitalize" nowrap>
                                                        @include("purchases.statuses.$purchase->status")
                                                    </td>
                                                    <td>
                                                        @include("purchases.actions.index")
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                </div>

                                <!-- .pagination -->
                                {{ $purchases->links() }}
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    @else
        <div class="wrapper">
            <!-- .empty-state -->
            <section id="notfound-state" class="empty-state">
                <!-- .empty-state-container -->
                <div class="empty-state-container">
                    <div class="state-figure">
                        <img class="img-fluid"
                             src="{{ asset("themes/looper/assets/images/illustration/img-7.png") }}"
                             alt=""
                             style="max-width: 300px">
                    </div>
                    <h3 class="state-header"> No Content, Yet. </h3>
                    <p class="state-description lead text-muted"> Use the button below to add your awesomething, aperiam ex veniam suscipit porro ab saepe nobis odio. </p>
                    <div class="state-action">
                        <a href="{{ route("farmers.create") }}" class="btn btn-primary">Record new a purchase</a>
                    </div>
                </div>
                <!-- /.empty-state-container -->
            </section>
            <!-- /.empty-state -->
        </div>
    @endif
@endsection