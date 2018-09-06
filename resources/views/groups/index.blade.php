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
                                Groups
                            </li>
                        </ol>
                    </nav>

                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0">
                            Groups
                        </h1>
                        <div class="btn-toolbar">
                            <a href="{{ route("groups.export") }}" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </a>
                            
                            <a href="{{ route("groups.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                New group
                            </a>
                        </div>
                    </div>
                </header>
                <div class="page-section">
                    <section class="card card-fluid">
                        <header class="card-header">
                            <ul class="nav nav-tabs card-header-tabs">
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") ? "" : "active" }}"
                                       href="{{ route("groups.index") }}"
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
                            <div class="text-muted"> Showing {{ $groups->firstItem() }} to {{ $groups->lastItem() }} of {{ $groups->total() }} entries </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Product</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($groups as $group)
                                        <tr>
                                            <td>{{ $group->name }}</td>
                                            <td>
                                                <!-- Button trigger modal -->
                                                <button type="button" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#productModal{{ $group->id }}">
                                                    {{ $group->products->count() }} product
                                                </button>

                                                <!-- Modal -->
                                                <div class="modal fade" id="productModal{{ $group->id }}" tabindex="-1" role="dialog" aria-labelledby="productModalLabel{{ $group->id }}" aria-hidden="true">
                                                    <form action="{{ route("groups.products.store", $group) }}" method="post">
                                                        @csrf
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="productModalLabel{{ $group->id }}">
                                                                        Group product form
                                                                    </h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="form-group">
                                                                        <label>Product</label>
                                                                        <select name="product_id" class="form-control">
                                                                            <option value="">Choose product</option>
                                                                            @foreach(\App\Product::get() as $product)
                                                                            <option value="{{ $product->id }}">
                                                                                {{ $product->name }}
                                                                            </option>
                                                                            @endforeach
                                                                        </select>
                                                                    </div>
                                                                </div>
                                                                <div class="modal-footer">
                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn btn-primary">Save changes</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </form>
                                                    
                                                </div>
                                            </td>   
                                            <td class="align-middle text-right">
                                                
                                                <a href="{{ route("groups.edit", $group) }}" class="btn btn-sm btn-secondary">
                                                    <i class="fa fa-pencil-alt"></i>
                                                    <span class="sr-only">Edit</span>
                                                </a>
                                                
                                                <!-- Button trigger modal -->
                                                <a href="#" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#deleteModal{{ $group->id }}">
                                                    <i class="far fa-trash-alt"></i>
                                                    <span class="sr-only">Remove</span>
                                                </a>
      
                                                <!-- Modal -->
                                                <div class="modal fade" id="deleteModal{{ $group->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel{{ $group->id }}" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <form action="{{ route("groups.destroy", $group) }}" method="POST">
                                                                @csrf
                                                                @method("delete")
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="deleteModalLabel{{ $group->id }}">Delete Item</h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body text-right">
                                                                    <div class="text-right">Are you sure you want to delete this item</div>
                                                                </div>
                                                                <div class="modal-footer justify-content-between">
                                                                    <button type="button" class="btn btn-sm btn-secondary" data-dismiss="modal">Close</button>
                                                                    <button type="submit" class="btn btn-sm btn-danger">Move to trash</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            {{ $groups->links() }}
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection