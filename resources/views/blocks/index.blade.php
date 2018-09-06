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
                                Blocks
                            </li>
                        </ol>
                    </nav>

                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0"> Blocks </h1>
                        <div class="btn-toolbar">
                            <a href="{{ route("blocks.export") }}" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </a>
                            @can("create", \App\Block::class)
                            <a href="{{ route("blocks.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                New block
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
                                       href="{{ route("blocks.index") }}"
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

                            <div class="text-muted"> Showing {{ $blocks->firstItem() }} to {{ $blocks->lastItem() }} of {{ $blocks->total() }} entries </div>

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th class="text-left"  nowrap>Name</th>
                                        <th class="text-right" nowrap></th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        @forelse($blocks as $block)
                                        <tr>
                                            <td>
                                                <div>
                                                    <div>{{ $block->number }}</div>
                                                    <small class="text-truncate text-muted">
                                                        {{ str_limit($block->description, 80) }}
                                                    </small>
                                                </div>
                                            </td>

                                            <td class="align-middle text-right">
                                                @can("edit", \App\Block::class)
                                                <a href="{{ route("blocks.edit", $block) }}" class="btn btn-sm btn-secondary">
                                                    <i class="fa fa-pencil-alt"></i>
                                                    <span class="sr-only">Edit</span>
                                                </a>
                                                @endcan

                                                @can("delete", \App\Block::class)
                                                <!-- Button trigger modal -->
                                                <a href="#" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#deleteModal{{ $block->id }}">
                                                    <i class="far fa-trash-alt"></i>
                                                    <span class="sr-only">Remove</span>
                                                </a>
                                                
                                                <!-- Modal -->
                                                <div class="modal fade" id="deleteModal{{ $block->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel{{ $block->id }}" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <form action="{{ route("blocks.destroy", $block) }}" method="POST">
                                                                @csrf
                                                                @method("delete")
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="deleteModalLabel{{ $block->id }}">Delete item</h5>
                                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                        <span aria-hidden="true">&times;</span>
                                                                    </button>
                                                                </div>
                                                                <div class="modal-body">
                                                                    Are you sure you want to delete this item
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
                                        @empty
                                        <tr>
                                            <td colspan="2">
                                                <div class="my-3">No block yet!</div>
                                            </td>
                                        </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>

                            <!-- .pagination -->
                        {{ $blocks->links() }}
                        <!-- /.pagination -->
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection