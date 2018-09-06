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
                            Products
                        </li>
                    </ol>
                </nav>

                <div class="d-sm-flex align-items-sm-center">
                    <h1 class="page-title mr-sm-auto mb-0"> Products </h1>
                    <div class="btn-toolbar">
                        <a href="{{ route("products.export") }}" class="btn btn-light">
                            <i class="far fa-file-excel"></i>
                            <span class="ml-1">Export as excel</span>
                        </a>
                        @can("create", \App\Product::class)
                        <a href="{{ route("products.create") }}" class="btn btn-primary">
                            <span class="fas fa-plus mr-1"></span>
                            New product
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
                                <form action="">
                                    <input type="text" name="q" class="form-control" placeholder="Search record...">
                                </form>
                            </div>
                        </div>

                        <div class="text-muted my-3"> Showing {{ $products->firstItem() }} to {{ $products->lastItem() }} of  {{ $products->total() }} entries </div>

                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th class="text-left" nowrap>Name</th>
                                        <th class="text-left" nowrap>Category</th>
                                        <th class="text-right" nowrap=""></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($products as $product)
                                    <tr>
                                        <td class="align-middle">
                                            <div>
                                                <div>{{ $product->name }}</div>
                                                <small class="text-truncate text-muted">
                                                    {{ str_limit($product->description, 80) }}
                                                </small>
                                            </div>
                                        </td>
                                        <td class="align-middle">
                                            {{ $product->category()->name }}
                                        </td>
                                        <td class="align-middle">
                                            @can("edit", $product)
                                            <a href="{{ route("products.edit", $product) }}" class="btn btn-sm btn-secondary">
                                                <i class="fa fa-pencil-alt"></i>
                                                <span class="sr-only">Edit</span>
                                            </a>
                                            @endcan

                                            @can("delete", $product)
                                            <!-- Button trigger modal -->
                                            <button 
                                                type="button" 
                                                class="btn btn-sm btn-secondary"  
                                                class="btn btn-primary" 
                                                data-toggle="modal" 
                                                data-target="#deleteModal{{ $product->id }}"
                                            >
                                                <i class="far fa-trash-alt"></i>
                                                <span class="sr-only">Remove</span>
                                            </button>
                                            
                                            <!-- Modal -->
                                            <div class="modal fade" id="deleteModal{{ $product->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel{{ $product->id }}" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <form action="{{ route("products.destroy", $product) }}" method="post">
                                                            @csrf
                                                            @method("delete")
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Delete product</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Are you sure you want to delete this product
                                                            </div>
                                                            <div class="modal-footer justify-content-between">
                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">
                                                                    Cancel
                                                                </button>
                                                                <button type="submit" class="btn btn-danger">
                                                                    Move to trash
                                                                </button>
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

                        <!-- .pagination -->
                        {{ $products->links() }}
                        <!-- /.pagination -->
                    </div>
                </section>
            </div>
        </div>
    </div>
</div>
@endsection