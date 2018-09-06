@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page has-sidebar">
            <div class="sidebar-backdrop"></div>
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i> Dashboard
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Settings
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="{{ route("groups.index") }}">
                                    Groups
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    {{ $group->name }}
                                </a>
                            </li>
                            <li class="breadcrumb-item active">
                                Edit
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title"> Edit group </h1>
                </header>

                <div class="page-section">
                    <div class="section-block">
                        <div class="d-xl-none">
                            <button class="btn btn-danger btn-floated" type="button" data-toggle="sidebar">
                                <i class="fa fa-th-list"></i>
                            </button>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <form action="{{ route("groups.update", $group) }}"
                                  method="post"
                                  class="card"
                            >
                                @csrf
                                @method("put")
                                <header class="card-header border-bottom-0">
                                    Edit farmers group
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="name">Name</label>
                                            <input type="text"
                                                   name="name"
                                                   id="name"
                                                   class="form-control" value="{{ $group->name }}"
                                                   placeholder="Arusha group...">
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="description">Description</label>
                                            <textarea name="description"
                                                      id="description"
                                                      class="form-control"
                                                      rows="6"
                                                      placeholder="Type something..."
                                            >{{ $group->description }}</textarea>
                                        </div>
                                    </div>
                                    <hr>
                                    <button class="btn btn-block btn-primary">
                                        Save changes
                                    </button>
                                </div>
                              {{--  <hr>
                                <header class="card-header border-bottom-0">
                                    Product information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="product_id">Product</label>
                                            <select name="product_id"
                                                    id="product_id"
                                                    class="form-control {{ $errors->has('product_id') ? "is-invalid" : "" }}"
                                            >
                                                <option value="">Choose product...</option>
                                                @foreach(\App\Product::all() as $product)
                                                <option value="{{ $product->id }}">
                                                    {{ $product->name }}
                                                </option>
                                                @endforeach
                                            </select>
                                            @if ($errors->has('product_id'))
                                            <span class="invalid-feedback">
                                                <strong>{{ $errors->first('product_id') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>

                                     <div class="form-row">
                                        <div class="form-group col-md-8">
                                            <label for="amount">Amount</label>
                                            <div class="input-group">
                                                <span class="input-group-text">
                                                    Tsh.
                                                </span>
                                                <input type="hidden" name="currency" value="TZS">
                                                <input type="text"
                                                       name="amount"
                                                       id="amount"
                                                       class="form-control {{ $errors->has('amount') ? "is-invalid" : "" }}"
                                                       value="{{ old("amount") }}"
                                                >
                                                @if ($errors->has('amount'))
                                                    <span class="invalid-feedback">
                                                        <strong>{{ $errors->first('amount') }}</strong>
                                                    </span>
                                                @endif
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="unit">Unit</label>
                                            <select name="unit" id="unit" class="form-control">
                                                <option value="kg">Kilogram - Kg</option>
                                                <option value="gm">Gram - Gm</option>
                                            </select>
                                        </div>
                                        <div class="form-group col-md-3">
                                            <label for="unit_value">Unit value</label>
                                            <input type="number"
                                                   name="unit_value"
                                                   id="unit_value"
                                                   class="form-control {{ $errors->has('unit_value') ? "is-invalid" : "" }}"
                                                   value="{{ old("unit_value", 1) }}"
                                            >
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-4">
                                            <label for="valid_from">Valid from</label>
                                            <input type="date"
                                                   name="valid_from"
                                                   id="valid_from"
                                                   class="form-control {{ $errors->has('valid_from') ? "is-invalid" : "" }}"
                                                   value="{{ old("valid_from", date("Y-m-d")) }}"
                                            >
                                        </div>
                                        <div class="form-group col-md-4">
                                            <label for="valid_till">Valid to</label>
                                            <input type="date"
                                                   name="valid_till"
                                                   id="valid_till"
                                                   class="form-control"
                                                   value="{{ old("valid_till") }}"
                                            >
                                        </div>
                                    </div> --}}
                                    
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="page-sidebar border-left bg-white">
                <header class="sidebar-header d-sm-none">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#" onclick="Looper.toggleSidebar()">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Back
                                </a>
                            </li>
                        </ol>
                    </nav>
                </header>
                <div class="sidebar-section">
                    {{--<h3 class="section-title"> I'm a sidebar </h3>--}}
                </div>
            </div>
        </div>
    </div>
@endsection