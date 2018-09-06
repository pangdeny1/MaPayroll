@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page has-sidebar">
            <div class="sidebar-backdrop"></div>
            <!-- .page-inner -->
            <div class="page-inner">
                <!-- .page-title-bar -->
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Settings</a>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title">Edit product</h1>
                </header>

                <!-- .page-section -->
                <div class="page-section">
                    <div class="section-block">
                        <div class="d-xl-none">
                            <button class="btn btn-danger btn-floated" type="button" data-toggle="sidebar">
                                <i class="fa fa-th-list"></i>
                            </button>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <form action="{{ route("products.update", $product) }}" method="post">
                                    @csrf
                                    @method("put")
                                    <div class="card border-0">
                                        <header class="card-header">Edit product</header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="name">Name</label>
                                                    <input type="text"
                                                           name="name"
                                                           id="name"
                                                           class="form-control  {{ $errors->has('name') ? "is-invalid" : "" }}"
                                                           value="{{ old("name", $product->name) }}"
                                                           placeholder="Mchicha..."
                                                    >
                                                    @if ($errors->has('name'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('name') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                                
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="category">Category</label>
                                                    <select name="category_id"
                                                            id="category"
                                                            class="form-control {{ $errors->has('category_id') ? "is-invalid" : "" }}"
                                                    >
                                                        <option value="">Select category...</option>
                                                        @foreach($productCategories as $productCategory)
                                                            <option value="{{ $productCategory->id }}"
                                                                    @if(old("category_id", $product->category()->id) == $productCategory->id) selected @endif
                                                            >
                                                                {{ $productCategory->name }}
                                                            </option>
                                                        @endforeach
                                                    </select>
                                                    @if ($errors->has('category_id'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('category_id') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="description">Description</label>
                                                    <textarea name="description"
                                                              id="description"
                                                              class="form-control {{ $errors->has('description') ? "is-invalid" : "" }}"
                                                              rows="6"
                                                              placeholder="Type something..."
                                                    >{{ old("description", $product->description) }}</textarea>
                                                    @if ($errors->has('description'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('description') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                                            <hr>
                                            <button class="btn btn-block btn-primary">
                                                Save changes
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .page-sidebar -->
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

                </div>
            </div>
        </div>
    </div>
@endsection