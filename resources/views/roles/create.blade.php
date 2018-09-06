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
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i> Settings
                                </a>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title"> New role </h1>
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
                            <form action="{{ route("roles.store") }}"
                                  method="post"
                                  class="card"
                            >
                                @csrf
                                <header class="card-header border-bottom-0">
                                    Create a new role
                                </header>
                                <div class="card-body">
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="name">Name</label>
                                            <input type="text"
                                                   name="name"
                                                   id="name"
                                                   class="form-control {{ $errors->has('name') ? 'is-invalid' : '' }}"
                                                   value="{{ old("name") }}"
                                                   placeholder="marketing-manager..."
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
                                            <label for="title">Title</label>
                                            <input type="text"
                                                   name="title"
                                                   id="title"
                                                   class="form-control {{ $errors->has('title') ? 'is-invalid' : '' }}"
                                                   value="{{ old("title") }}"
                                                   placeholder="Marketing manager..."
                                            >
                                            @if ($errors->has('title'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('title') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-12">
                                            <label for="description">Description</label>
                                            <textarea name="description"
                                                      id="description"
                                                      class="form-control {{ $errors->has('description') ? 'is-invalid' : '' }}"
                                                      rows="6"
                                                      placeholder="Type something..."
                                            >{{ old("description") }}</textarea>
                                            @if ($errors->has('description'))
                                                <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('description') }}</strong>
                                                </span>
                                            @endif
                                        </div>
                                    </div>
                                </div>
                                <hr>
                                <div class="card-body">
                                    <div class="mb-4">User with this role can:</div>
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th class="text-right">View</th>
                                                <th class="text-right">Create</th>
                                                <th class="text-right">Edit</th>
                                                <th class="text-right">Delete</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>Users</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[users][view]" value="view-user">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[users][create]" value="create-user">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[users][edit]" value="edit-user">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[users][delete]" value="delete-user">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Farmers</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[farmers][view]" value="view-farmer">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[farmers][create]" value="create-farmer">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[farmers][edit]" value="edit-farmer">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[farmers][delete]" value="delete-farmer">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Products</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[products][view]" value="view-product">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[products][create]" value="create-product">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[products][edit]" value="edit-product">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[products][delete]" value="delete-product">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Product categories</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[product-categories][view]" value="view-product-category">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[product-categories][create]" value="create-product-category">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[product-categories][edit]" value="edit-product-category">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[product-categories][delete]" value="delete-product-category">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Purchases</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][view]" value="purchase-view">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][create]" value="purchase-create">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][edit]" value="purchase-edit">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][delete]" value="purchase-delete">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Blocks</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[blocks][view]" value="purchase-view">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[blocks][create]" value="purchase-create">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[blocks][edit]" value="purchase-edit">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[blocks][delete]" value="purchase-delete">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Batches</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[batches][view]" value="purchase-view">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[batches][create]" value="purchase-create">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[batches][edit]" value="purchase-edit">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[batches][delete]" value="purchase-delete">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Farms</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[farms][view]" value="purchase-view">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[farms][create]" value="purchase-create">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[farms][edit]" value="purchase-edit">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[farms][delete]" value="purchase-delete">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Reports</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[reports][view]" value="purchase-view">
                                                </td>
                                                <td class="text-right"></td>
                                                <td class="text-right"></td>
                                                <td class="text-right"></td>
                                            </tr>
                                            <tr>
                                                <td>Dashboard</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[dashbord][view]" value="purchase-view">
                                                </td>
                                                <td class="text-right"></td>
                                                <td class="text-right"></td>
                                                <td class="text-right"></td>
                                            </tr>

                                             <tr>
                                                <td>Clusters</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[batches][view]" value="cluster-view">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[batches][create]" value="cluster-create">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[batches][edit]" value="cluster-edit">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[batches][delete]" value="cluster-delete">
                                                </td>
                                            </tr>
                                            <tr>
                                            <tr>
                                                <td>Packing house weight</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][packing_house_weight_view]" value="purchase-view">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][packing_house_weight_create]" value="purchase-create">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][packing_house_weight_edit]" value="purchase-edit">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][packing_house_weight_delete]" value="purchase-delete">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>Graded weight</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][graded_weight_view]" value="purchase-view">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][graded_weight_create]" value="purchase-create">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][graded_weight_edit]" value="purchase-edit">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][graded_weight_delete]" value="purchase-delete">
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>Farm weight</td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][farm_weight_view]"    value="purchase-view">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][farm_weight_create]"  value="purchase-create">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][farm_weight_edit]"    value="purchase-edit">
                                                </td>
                                                <td class="text-right">
                                                    <input type="checkbox" name="permissions[purchases][farm_weight_delete]"  value="purchase-delete">
                                                </td>
                                            </tr>

                                        </tbody>
                                    </table>
                                    <hr>
                                    <button class="btn btn-block btn-primary">Save changes</button>
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