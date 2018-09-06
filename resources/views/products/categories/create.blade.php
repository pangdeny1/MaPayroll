@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page has-sidebar">
            <div class="sidebar-backdrop"></div>
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i> Dashboard
                                </a>
                            </li>
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    Settings
                                </a>
                            </li>
                            <li class="breadcrumb-item active">
                                <a href="{{ route("product_categories.index") }}">
                                    Products categories
                                </a>
                            </li>
                            <li class="breadcrumb-item active">
                                New product categories
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title"> New product category </h1>
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
                            <form action="{{ route("product_categories.store") }}"
                                  method="post"
                                  class="card"
                            >
                                @csrf
                                <header class="card-header border-bottom-0">
                                    Create a new product category
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="name">Name</label>
                                            <input type="text"
                                                   name="name"
                                                   id="name"
                                                   class="form-control" value="{{ old("name") }}"
                                                   placeholder="Vegetable...">
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
                                    <hr>
                                    <button class="btn btn-block btn-primary">Save changes</button>
                                </div>
                                <footer class="card-footer bg-gray-lightest border-top-0 d-flex justify-content-between">

                                </footer>
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