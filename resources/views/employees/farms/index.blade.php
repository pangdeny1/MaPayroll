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
                    <h1 class="page-title mr-sm-auto"> Farmland Blocks
                        <small class="badge">{{ $farmer->farms->count() }} Totals</small>
                    </h1>
                </header>

                <!-- .page-section -->
                <div class="page-section">
                    <div class="row">
                        <div class="col-md-6">
                            <section class="card card-fluid border border-info">
                                <a href="{{ route("farmers.farms.create", $farmer) }}" class="card-body">
                                    <div class="text-center" style="padding: 2.5rem 0;">
                                        <i class="fas fa-plus mr-2"></i> Add a new Farmland Block
                                    </div>
                                </a>
                            </section>
                        </div>
                        @foreach($farmer->farms as $farm)
                            <div class="col-md-6">
                                <section class="card card-fluid">
                                    <div class="card-body">
                                        <div class="media align-items-center mb-3">
                                            <a href="#" class="user-avatar user-avatar-lg mr-3">
                                                <img src="{{ Avatar::create($farm->name)->toBase64() }}" />
                                            </a>
                                            <div class="media-body">
                                                <h3 class="card-title">
                                                    <a href="#">{{ $farm->name }}, {{optional($farm->block)->number}}</a>
                                                </h3>
                                                <h6 class="card-subtitle text-muted">{{ $farm->location }}</h6>
                                            </div>
                                            <a href="{{ route("farmers.farms.edit",$farm) }}"
                                               class="btn btn-reset text-muted"
                                               data-toggle="tooltip"
                                               title=""
                                               data-original-title="Edit Farmland Block">
                                                <i class="oi oi-chat"></i>
                                                Edit 
                                            </a>
                                        </div>
                                                 
                                    
                                </a>

                                        <p>{{ $farm->description }}</p>

                                        <hr>

                                        <!-- team details -->
                                        <ul class="list-icons mb-3">

                                             <li>
                                                <span class="list-icon">
                                                    <i class="far fa-object-ungroup"></i>
                                                </span>Block :: {{ optional($farm->block)->number }}
                                            </li><li>
                                                <span class="list-icon">
                                                    <span class="fa fa-map-marker text-muted"></span>
                                                </span> {{ $farm->location }}
                                            </li>
                                            <li>
                                                <span class="list-icon">
                                                    <span class="fa fa-flag text-muted"></span>
                                                </span> Since {{ $farm->created_at->toFormattedDateString() }}
                                            </li>
                                            <li>
                                                <span class="list-icon">
                                                    <i class="far fa-object-ungroup"></i>
                                                </span> {{ $farm->acreage }}
                                            </li>
                                            <li>
                                    
                            </li>
                                        </ul>
                                    </div>
                                </section>
                            </div>
                        @endforeach
                    </div>

                </div>
            </div>
        </div>
    </div>
@endsection