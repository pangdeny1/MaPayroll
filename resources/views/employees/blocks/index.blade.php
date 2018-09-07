@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page">
            <div class="sidebar-backdrop"></div>
            <!-- .page-cover -->
            @include("farmers._page_cover")

            <!-- .page-navs -->
            @include("farmers._page_nav")

            <div class="page-inner">
                <!-- .page-title-bar -->
                <header class="page-title-bar">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="{{ route("farmers.show", $farmer) }}">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>
                                    {{ $farmer->full_name  }}
                                </a>
                            </li>
                        </ol>
                    </nav>
                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto">
                            Household Blocks
                            <small class="badge">{{ $farmer->householdBlocks->count() }} Totals</small>
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
                            <a href="{{ route("farmers.household_blocks.create", $farmer) }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span> New Household block
                            </a>
                        </div>
                    </div>
                </header>

                <!-- .page-section -->
                <div class="page-section">

                    @if($farmer->householdBlocks->count())
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

                                <!-- .table-responsive -->
                                <div class="text-muted"> Showing 1 to 10 of 1,000 entries </div>
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                        <tr>
                                            <th class="text-left" nowrap>Number</th>
                                            <th class="text-right" nowrap>Size</th>
                                            <th class="text-left" nowrap>Farm</th>
                                            <th class="text-left" nowrap>Product</th>
                                            <th class="text-left" nowrap>Status</th>
                                            <th class="text-right" nowrap></th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($farmer->householdBlocks as $block)
                                            <tr>
                                                <td class="text-left align-middle" nowrap>
                                                    {{ $block->number }}
                                                </td>
                                                <td class="text-right align-middle" nowrap>
                                                    {{ $block->size }} {{ $block->size_unit }}
                                                </td>
                                                <td class="text-left align-middle" nowrap>
                                                    {{ $block->farm->name }}
                                                </td>
                                                <td class="text-left align-middle" nowrap>
                                                    {{ $block->product->name }}
                                                </td>
                                                <td class="text-left text-capitalize align-middle" nowrap>
                                                    {{ $block->status }}
                                                </td>
                                                <td class="align-middle text-right">
                                                    @can("edit", \App\Farmer::class)
                                                    <a href="{{route("farmers.household_blocks.edit",[$block->id, $farmer])}}" class="btn btn-sm btn-secondary">
                                                        <i class="fa fa-pencil-alt"></i>
                                                        <span class="sr-only">Edit</span>
                                                    </a>
                                                    @endcan

                                                    @can("delete", \App\Farmer::class)
                                                    <button 
                                                type="button" 
                                                class="btn btn-sm btn-secondary"  
                                                class="btn btn-primary" 
                                                data-toggle="modal" 
                                                data-target="#deleteModal{{ $block->id}}"
                                            >
                                                    <a href="#" class="btn btn-sm btn-secondary">
                                                        <i class="far fa-trash-alt"></i>
                                                        <span class="sr-only">Remove</span>
                                                    </a>
                                                </button>

                                                <!-- Modal -->
                                            <div class="modal fade" id="deleteModal{{ $block->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel{{ $block->id }}" aria-hidden="true">
                                                <div class="modal-dialog" role="document">
                                                    <div class="modal-content">
                                                        <form action="{{ route("farmers.household_block.destroy",$block->id) }}" method="post">
                                                            @csrf
                                                            @method("delete")
                                                            <div class="modal-header">
                                                                <h5 class="modal-title" id="exampleModalLabel">Delete Household Block</h5>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">&times;</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                Are you sure you want to delete this Household Block
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
                                {{--{{ $purchases->links() }}--}}
                            </div>
                        </section>
                    @else
                        <div class="alert alert-info has-icon alert-dismissible fade show">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <div class="alert-icon">
                                <span class="oi oi-flag"></span>
                            </div>
                            <h4 class="alert-heading"> Warning! </h4>
                            <p class="mb-0">
                                No household block available
                               
                            </p>
                        </div>
                    @endif

                </div>
            </div>
        </div>
    </div>
@endsection