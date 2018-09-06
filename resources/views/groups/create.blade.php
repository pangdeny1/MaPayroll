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
                            <li class="breadcrumb-item active">
                                New group
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title"> New group </h1>
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
                            <form action="{{ route("groups.store") }}"
                                  method="post"
                                  class="card"
                            >
                                @csrf
                                <header class="card-header border-bottom-0">
                                    Create a new farmers group
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="name">Name</label>
                                            <input type="text"
                                                   name="name"
                                                   id="name"
                                                   class="form-control" value="{{ old("name") }}"
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
                                            >{{ old("description") }}</textarea>
                                        </div>
                                    </div>
                                </div>
                                <hr>
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
                                    <hr>
                                    <button class="btn btn-block btn-primary">
                                        Save changes
                                    </button>
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