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
                            <li class="breadcrumb-item active">
                                Clusters
                            </li>
                        </ol>
                    </nav>

                    <div class="d-sm-flex align-items-sm-center">
                        <h1 class="page-title mr-sm-auto mb-0"> Clusters </h1>
                        <div class="btn-toolbar">
                            <a href="{{ route("clusters.export") }}" class="btn btn-light">
                                <i class="far fa-file-excel"></i>
                                <span class="ml-1">Export as excel</span>
                            </a>
                        </div>
                    </div>
                </header>
                <div class="page-section">
                    @if (session('status'))
                        <div class="alert alert-success alert-dismissible fade show has-icon">
                            <button type="button" class="close" data-dismiss="alert">×</button>
                            <div class="alert-icon">
                                <i class="fas fa-info-circle"></i>
                            </div>
                            <strong>Well done!</strong> {{ session('status') }}
                        </div>
                    @endif

                    <section class="card card-fluid">
                        <header class="card-header">
                            <ul class="nav nav-tabs card-header-tabs">
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") ? "" : "active" }}"
                                        href="{{ route("clusters.index") }}"
                                    >
                                        All
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") === "processed" ? "active" : "" }}"
                                        href="{{ route("clusters.index", ["status" => "open"]) }}"
                                    >
                                        Open
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link {{ request()->query("status") === "unprocessed" ? "active" : "" }}"
                                        href="{{ route("clusters.index", ["status" => "active"]) }}"
                                    >
                                        Active
                                    </a>
                                </li>
                                <li class="nav-item ">
                                    <a class="nav-link {{ request()->query("status") === "rejected" ? "active" : "" }}"
                                        href="{{ route("clusters.index", ["status" => "closed"]) }}">
                                        Closed
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

                            <!-- .table-responsive -->
                            <div class="text-muted"> Showing {{ $clusters->firstItem() }} to {{ $clusters->lastItem() }} of {{ $clusters->total() }} entries </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th class="text-left"  nowrap>Number</th>
                                        <th class="text-left"  nowrap>Block</th>
                                        <th class="text-left"  nowrap>Group</th>
                                        <th class="text-left"  nowrap>Members</th>
                                        <th class="text-left"  nowrap>Purchases</th>
                                        <th class="text-left"  nowrap>Max</th>
                                        <th class="text-left"  nowrap>Status</th>
                                        <th nowrap="">Action</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                        @forelse($clusters as $cluster)
                                        <tr>
                                            <td nowrap>
                                                <a href="{{ route("clusters.purchases.index", $cluster) }}" class="user-avatar mr-1">
                                                    <img class="img-fluid"
                                                            src="{{ Avatar::create($cluster->number)->toBase64() }}"
                                                            alt="{{ $cluster->number }}"
                                                    >
                                                </a>
                                                <a href="{{ route("clusters.purchases.index", $cluster) }}">
                                                    {{ $cluster->number }}
                                                </a>
                                            </td>
                                            <td>{{ $cluster->block->number }}</td>
                                            <td>{{ optional($cluster->group)->name }}</td>
                                            <td>
                                                @include("clusters._member_modal")
                                            </td>
                                            <td>
                                                {{ $cluster->purchases->count() }} purchases
                                            </td>
                                            <td>{{ $cluster->max_count }}</td>
                                            <td>{{ $cluster->status }}</td>
                                            <td nowrap="">
                                                @if($cluster->max_count > $cluster->farmers->count())
                                                    @if(\App\Farmer::query()->whereNotIn("id", $cluster->farmers->pluck("id"))->exists())
                                                        @include("clusters._farmers_modal")
                                                    @endif
                                                @else
                                                    <button type="button" class="btn btn-sm btn-primary">
                                                        Batch is full
                                                    </button>
                                                @endif

                                            </td>
                                        </tr>
                                        @empty
                                        <tr>
                                            <td colspan="8" class="text-center">
                                                <p class="my-4">No Batch available yet!</p>
                                            </td>
                                        </tr>
                                        @endforelse
                                    </tbody>
                                </table>
                            </div>

                            <!-- .pagination -->
                            {{ $clusters->links() }}
                        </div>
                    </section>
                </div>
            </div>
        </div>
    </div>    
@endsection