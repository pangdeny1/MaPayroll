@extends("layouts.master")

@section("content")
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
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Settings
                                </a>
                            </li>
                            <li class="breadcrumb-item active">
                                Product categories
                            </li>
                        </ol>
                    </nav>

                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0">
                            Product categories
                        </h1>
                        <div class="btn-toolbar">
                            <a href="{{ route("product_categories.export") }}" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </a>
                            
                            @can("create", \App\ProductCategory::class)
                            <a href="{{ route("product_categories.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                New category
                            </a>
                            @endcan
                        </div>
                    </div>
                </header>
                <div class="page-section">
                    <section class="card card-fluid">
                        <header class="card-header">
                            <ul class="nav nav-tabs card-header-tabs">
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") ? "" : "active" }}"
                                       href="{{ route("product_categories.index") }}"
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
                                    <form action="">
                                        <input type="text" name="q" class="form-control" placeholder="Search record...">
                                    </form>
                                </div>
                            </div>
                            <div class="text-muted"> Showing {{ $productCategories->firstItem() }} to {{ $productCategories->lastItem() }} of {{ $productCategories->total() }} entries </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($productCategories as $productCategory)
                                        <tr>
                                            <td>
                                                <div>
                                                    <div>{{ $productCategory->name }}</div>
                                                    <div>
                                                        <small>{{ str_limit($productCategory->description, 80)  }}</small>
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="align-middle text-right">
                                                @can("edit", $productCategory)
                                                <a href="{{ route("product_categories.edit", $productCategory) }}" class="btn btn-sm btn-secondary">
                                                    <i class="fa fa-pencil-alt"></i>
                                                    <span class="sr-only">Edit</span>
                                                </a>
                                                @endcan

                                                @can("delete", $productCategory)
                                                <!-- Button trigger modal -->
                                                <a href="#" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#deleteModal{{ $productCategory->id }}">
                                                    <i class="far fa-trash-alt"></i>
                                                    <span class="sr-only">Remove</span>
                                                </a>
                                                
                                                <!-- Modal -->
                                                <div class="modal fade" id="deleteModal{{ $productCategory->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel{{ $productCategory->id }}" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <form action="{{ route("product_categories.destroy", $productCategory) }}" method="POST">
                                                                @csrf
                                                                @method("delete")
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="deleteModalLabel{{ $productCategory->id }}">Delete category</h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    Are you sure you want to delete this category
                                                                </div>
                                                                <div class="modal-footer justify-content-between">
                                                                    <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn btn-sm btn-danger">Move to trash</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                                @endcan
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            {{ $productCategories->links() }}
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection