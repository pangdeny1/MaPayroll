@extends("layouts.master")

@section("content")
<div class="wrapper">
    <!-- .page -->
    <div class="page has-sidebar">
        <!-- .page-inner -->
        <div class="page-inner">
            <!-- .page-title-bar -->
            <header class="page-title-bar">
                <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">
                    <a href="#">
                        <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Purchases</a>
                    </li>
                </ol>
                </nav>
                <h1 class="page-title">
                    Edit product purchase
                </h1>
            </header>
            <!-- /.page-title-bar -->
            <!-- .page-section -->
            <div class="page-section">
                <div class="row">
                    <div class="col-md-12">
                        <form action="{{ route("purchases.update", $purchase) }}"
                              method="post"
                        >
                            @csrf
                            @method("put")
                            <div class="card border-0">
                                <header class="card-header border-bottom-0">
                                    Basic information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="farmer">Farmer</label>
                                            <select name="farmer_id"
                                                    id="farmer"
                                                    class="form-control {{ $errors->has("farmer_id") ? "is-invalid" : "" }}"
                                            >
                                                <option value="">-- Select farmer --</option>
                                                @foreach($farmers as $farmer)
                                                    <option value="{{ $farmer->id }}"
                                                            @if(old("farmer_id", $purchase->farmer->id) == $farmer->id) selected @endif
                                                    >
                                                        {{ $farmer->full_name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @if($errors->has("farmer_id"))
                                                <span class="invalid-feedback">
                                                {{ $errors->first("farmer_id") }}
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="product">Product</label>
                                            <select name="product_id"
                                                    id="product"
                                                    class="form-control {{ $errors->has("product_id") ? "is-invalid" : "" }}"
                                            >
                                                <option value="">-- Select product --</option>
                                                @foreach($products as $product)
                                                    <option value="{{ $product->id }}"
                                                            @if(old("product_id", $purchase->product->id) == $product->id) selected @endif
                                                    >
                                                        {{ $product->name }}
                                                    </option>
                                                @endforeach
                                            </select>
                                            @if($errors->has("product_id"))
                                                <span class="invalid-feedback">
                                                {{ $errors->first("product_id") }}
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <header class="card-header border-bottom-0">
                                    Weight information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="weight_unit">Unit</label>
                                            <select name="weight_unit"
                                                    id="weight_unit"
                                                    class="form-control {{ $errors->has("weight_unit") ? "is-invalid" : "" }}"
                                            >
                                                <option value="">--Select unit --</option>
                                                @foreach($weightUnits as $weightUnit)
                                                <option value="{{ $weightUnit["unit"] }}"
                                                        @if(old("weight_unit", $purchase->weight_unit) == $weightUnit["unit"]) selected @endif
                                                >
                                                    {{ title_case($weightUnit["unit"]) }} - {{ $weightUnit["name"] }}
                                                </option>
                                                @endforeach
                                            </select>
                                            @if($errors->has("weight_unit"))
                                                <span class="invalid-feedback">
                                                {{ $errors->first("weight_unit") }}
                                            </span>
                                            @endif
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="weight_before">Before</label>
                                            <input type="text"
                                                    name="weight_before"
                                                    id="weight_before"
                                                    class="form-control {{ $errors->has("weight_before") ? "is-invalid" : "" }}"
                                                    value="{{ old("weight_before", $purchase->weight_before_processing) }}"
                                            >
                                        </div>
                                        <div class="form-group col-md-2">
                                            <label for="weight_after">After</label>
                                            <input type="text"
                                                    name="weight_after"
                                                    id="weight_after"
                                                    class="form-control {{ $errors->has("weight_after") ? "is-invalid" : "" }}"
                                                    value="{{ old("weight_after", $purchase->weight_after_processing) }}"
                                            >
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <header class="card-header border-bottom-0">
                                    Price information
                                </header>
                                <div class="card-status bg-blue"></div>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="amount">Amount</label>
                                            <div class="input-group">
                                                <span class="input-group-text">
                                                    Tsh.
                                                </span>
                                                <input type="text"
                                                        name="amount"
                                                        id="amount"
                                                        class="form-control {{ $errors->has("amount") ? "is-invalid" : "" }}"
                                                        value="{{ old("amount", $purchase->amount) }}"
                                                >
                                            </div>
                                            @if($errors->has("amount"))
                                                <span class="invalid-feedback">
                                                {{ $errors->first("amount") }}
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <hr>
                                    <button class="btn btn-primary btn-lg btn-block" type="submit">
                                        Save changes
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.page-section -->
        </div>
        <!-- /.page-inner -->
        <!-- .page-sidebar -->
        <div class="page-sidebar border-left bg-white">
            <!-- .sidebar-header -->
            <header class="sidebar-header d-sm-none">
                <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">
                    <a href="#" onclick="Looper.toggleSidebar()">
                        <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Back</a>
                    </li>
                </ol>
                </nav>
            </header>
            <!-- /.sidebar-header -->
            <!-- .sidebar-section -->
            <div class="sidebar-section">
                {{-- <h3 class="section-title"> I'm a sidebar </h3> --}}
            </div>
            <!-- /.sidebar-section -->
        </div>
        <!-- /.page-sidebar -->
    </div>
    <!-- /.page -->
</div>
<!-- /.wrapper -->
@endsection