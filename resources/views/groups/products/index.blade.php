@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page">
            <div class="page-inner">
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>
                                    Settings
                                </a>
                            </li>
                        </ol>
                    </nav>

                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0">
                            Groups
                        </h1>
                        <div class="btn-toolbar">
                            <button type="button" class="btn btn-light">
                                <i class="oi oi-data-transfer-download"></i>
                                <span class="ml-1">Export</span>
                            </button>
                            <button type="button" class="btn btn-light">
                                <i class="oi oi-data-transfer-upload"></i>
                                <span class="ml-1">Import</span>
                            </button>
                            
                            <a href="{{ route("groups.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                Add a group
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
                                    <input type="text" class="form-control" placeholder="Search record">
                                </div>
                            </div>
                            <div class="text-muted"> Showing 1 to 10 of 1,000 entries </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Product</th>
                                            <th>Price</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($groupProducts as $groupProduct)
                                        <tr>
                                            <td>{{ $groupProduct->group->name }}</td>
                                            <td>{{ $groupProduct->product->name }}</td>
                                            <td>
                                                @if($groupProduct->price_id)
                                                    {{ number_format($groupProduct->price->amount, 2) }}
                                                @else
                                                    <!-- Button trigger modal -->
                                                    <button type="button" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#productModal{{ $groupProduct->id }}">
                                                        Add price
                                                    </button>
                                                @endif

                                                <!-- Modal -->
                                                <div class="modal fade" id="productModal{{ $groupProduct->id }}" tabindex="-1" role="dialog" aria-labelledby="productModalLabel{{ $groupProduct->id }}" aria-hidden="true">
                                                    <form action="{{ route("group_products.update", $groupProduct->id) }}" method="post">
                                                        @csrf
                                                        @method("patch")
                                                        <div class="modal-dialog" role="document">
                                                            <div class="modal-content">
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="productModalLabel{{ $groupProduct->id }}">
                                                                        Group product form ({{ $groupProduct->group->name }})
                                                                    </h5>
                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    <div class="form-group">
                                                                        <label>Product</label>
                                                                        <p><strong>{{ $groupProduct->product->name }}</strong></p>
                                                                    </div>

                                                                    <div class="form-row">
                                                                        <div class="form-group col-md-6">
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
                                                                        <div class="form-group col-md-6">
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
                                                                        <div class="form-group col-md-6">
                                                                            <label for="valid_from">Valid from</label>
                                                                            <input type="date"
                                                                                   name="valid_from"
                                                                                   id="valid_from"
                                                                                   class="form-control {{ $errors->has('valid_from') ? "is-invalid" : "" }}"
                                                                                   value="{{ old("valid_from", date("Y-m-d")) }}"
                                                                            >
                                                                        </div>
                                                                        <div class="form-group col-md-6">
                                                                            <label for="valid_till">Valid to</label>
                                                                            <input type="date"
                                                                                   name="valid_till"
                                                                                   id="valid_till"
                                                                                   class="form-control"
                                                                                   value="{{ old("valid_till") }}"
                                                                            >
                                                                        </div>
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
                                                
                                                <a href="" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#productModal{{ $groupProduct->id }}">
                                                    <i class="fa fa-pencil-alt"></i>
                                                    <span class="sr-only">Edit</span>
                                                </a>
                                                

                                                
                                                <a href="#" class="btn btn-sm btn-secondary">
                                                    <i class="far fa-trash-alt"></i>
                                                    <span class="sr-only">Remove</span>
                                                </a>
                                                
                                            </td>
                                        </tr>
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            {{ $groupProducts->links() }}
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection