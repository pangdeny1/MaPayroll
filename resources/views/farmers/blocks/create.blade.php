@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page has-sidebar">
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Farmers</a>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title"> Add a new Household </h1>
                </header>
                <div class="page-section">
                    <div class="row">
                        <div class="col-md-12">

                            <form action="{{ route("farmers.household_blocks.store", $farmer) }}"
                                  method="post"
                                  class="card border-0"
                            >
                                @csrf
                                <header class="card-header border-bottom-0">
                                    Basic information
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="number">Household Code</label>
                                            <input type="text"
                                                   name="number"
                                                   class="form-control {{ $errors->has('number') ? 'is-invalid' : '' }}"
                                                   id="number"
                                                   value="{{ old("number") }}"
                                            >
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-2 mb-3">
                                            <label for="size">Size</label>
                                            <input type="text"
                                                   name="size"
                                                   class="form-control {{ $errors->has('size') ? 'is-invalid' : '' }}"
                                                   id="size"
                                                   value="{{ old("size") }}"
                                            >
                                        </div>
                                        <div class="col-md-4 mb-3">
                                            <label for="size_unit">Unit</label>
                                            <select name="size_unit"
                                                    class="custom-select d-block w-100 {{ $errors->has('size_unit') ? 'is-invalid' : '' }}"
                                                    id="size_unit"
                                            >
                                                <option value="Hectare">Hectare</option>
                                            </select>
                                            @if ($errors->has('size_unit'))
                                                <span class="invalid-feedback">
                                                <strong>{{ $errors->first('size_unit') }}</strong>
                                            </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="farm_id">Farmland</label>
                                            <select name="farm_id"
                                                    class="form-control {{ $errors->has('farm_id') ? 'is-invalid' : '' }}"
                                                    id="farm_id"
                                            >
                                                <option value="">Choose...</option>
                                                @foreach(\App\Farm::where("farmer_id", $farmer->id)->get() as $farm)
                                                <option value="{{ $farm->id }}">
                                                    {{ $farm->name }}
                                                </option>
                                                @endforeach
                                            </select>
                                            @if ($errors->has('farm_id'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('farm_id') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-md-6 mb-3">
                                            <label for="product_id">Crop</label>
                                            <select name="product_id"
                                                    class="form-control d-block w-100 {{ $errors->has('product_id') ? 'is-invalid' : '' }}"
                                                    id="product_id"
                                                    required=""
                                            >
                                                <option value=""> Choose... </option>
                                                @foreach($products as $product)
                                                    <option value="{{ $product->id }}" {{ old("product_id") === $product->id ? "selected" : "" }}>
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
                                        <div class="form-group col-md-12">
                                            <label for="description">Description</label>
                                            <textarea class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}"
                                                      name="description"
                                                      id="description"
                                                      placeholder="Type something...."
                                                      rows="5"
                                            >{{ old("description") }}</textarea>
                                            @if ($errors->has('description'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('description') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <hr class="mb-4">
                                    <div class="form-row">
                                        <button class="btn btn-primary btn-lg btn-block" type="submit">
                                            Save changes
                                        </button>
                                    </div>
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
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Back</a>
                            </li>
                        </ol>
                    </nav>
                </header>
                <div class="sidebar-section">
                    {{-- <h3 class="section-title"> I'm a sidebar </h3> --}}
                </div>
            </div>
        </div>
    </div>
@endsection