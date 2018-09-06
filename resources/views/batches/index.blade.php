@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page">
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
                            <li class="breadcrumb-item active">
                                Batches
                            </li>
                        </ol>
                    </nav>

                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0">
                            Batches
                        </h1>
                        <div class="btn-toolbar">
                            <a href="{{ route("batches.export") }}" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </a>
                            @can("create", \App\Batch::class)
                            <a href="{{ route("batches.create") }}" class="btn btn-primary">
                                <span class="fas fa-plus mr-1"></span>
                                New batch
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
                                       href="{{ route("batches.index") }}"
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

                        <div class="text-muted my-3"> Showing {{ $batches->firstItem() }} to {{ $batches->lastItem() }} of  {{ $batches->total() }} entries </div>

                        <div class="card-body">
                                <div class="text-muted"> Showing {{ $batches->firstItem() }} to {{ $batches->lastItem() }} of {{ $batches->total() }} entries </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th nowrap>Number</th>
                                            <th class="text-right" nowrap>Max #</th>
                                            <th nowrap>Valid from</th>
                                            <th nowrap>Valid till</th>
                                            <th nowrap>Status</th>
                                            <th class="text-right" nowrap>Members</th>
                                            <th nowrap></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    @foreach($batches as $batch)
                                        <tr>
                                            <td class="text-left"  nowrap>
                                                <a href="{{ route("batches.show", $batch) }}">
                                                    {{ $batch->number }}
                                                </a>
                                            </td>
                                            <td class="text-right" nowrap>
                                                {{ $batch->max_count }}
                                            </td>
                                            <td class="text-left" nowrap>
                                                {{ $batch->valid_from->toFormattedDateString() }}
                                            </td>
                                            <td class="text-left" nowrap>
                                                {{ $batch->valid_till->toFormattedDateString() }}
                                            </td>
                                            <td class="text-left" nowrap>
                                                {{ $batch->status }}
                                            </td>
                                            <td class="text-right" nowrap>
                                                {{ $batch->farmers->count() }}
                                            </td>
                                            <td class="align-middle text-right" nowrap>
                                                @can("edit", $batch)
                                                <a href="{{ route("batches.edit", $batch) }}" class="btn btn-sm btn-secondary">
                                                    <i class="fa fa-pencil-alt"></i>
                                                    <span class="sr-only">Edit</span>
                                                </a>
                                                @endcan

                                                @can("delete", $batch)
                                                <!-- Button trigger modal -->
                                                <a href="#" class="btn btn-sm btn-secondary" data-toggle="modal" data-target="#deleteModal{{ $batch->id }}">
                                                    <i class="far fa-trash-alt"></i>
                                                    <span class="sr-only">Remove</span>
                                                </a>
                                                
                                                <!-- Modal -->
                                                <div class="modal fade" id="deleteModal{{ $batch->id }}" tabindex="-1" role="dialog" aria-labelledby="deleteModalLabel{{ $batch->id }}" aria-hidden="true">
                                                    <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <form action="{{ route("batches.destroy", $batch) }}" method="POST">
                                                                @csrf
                                                                @method("delete")
                                                                <div class="modal-header">
                                                                    <h5 class="modal-title" id="deleteModalLabel{{ $batch->id }}">Delete item</h5>
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
                                    @endforeach
                                    </tbody>
                                </table>
                            </div>
                            {{ $batches->links() }}
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>
@endsection