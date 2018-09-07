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
                    <h1 class="page-title mr-sm-auto"> Settings </h1>
                </header>

                <!-- .page-section -->
                <div class="page-section">
                    <!-- .masonry-layout -->
                    <div class="masonry-layout" style="position: relative; height: 800px;">
                        <div class="masonry-item col-lg-6" >
                            <section class="card card-fluid" style="min-height: 346px;">
                                <a href="{{ route("farmers.farms.create", $farmer) }}" class="card-body">
                                    <i class="fas fa-plus-circle"></i>
                                </a>
                            </section>
                        </div>
                        @foreach($farmer->farms as $farm)
                        <div class="masonry-item col-lg-6">
                            <section class="card card-fluid">
                                <div class="card-body">
                                    <div class="media align-items-center mb-3">
                                        <a href="#" class="user-avatar user-avatar-lg mr-3">
                                            <img src="{{ Avatar::create('Block B')->toBase64() }}" />
                                        </a>
                                        <div class="media-body">
                                            <h3 class="card-title">
                                                <a href="#">Block B, Farm</a>
                                            </h3>
                                            <h6 class="card-subtitle text-muted"> Farm </h6>
                                        </div>
                                        <a href="#"
                                           class="btn btn-reset text-muted"
                                           data-toggle="tooltip"
                                           title=""
                                           data-original-title="Chat with teams">
                                            <i class="oi oi-chat"></i>
                                        </a>
                                    </div>

                                    <p>{{ $farm->description }}</p>

                                    <hr>

                                    <!-- team details -->
                                    <ul class="list-icons mb-3">
                                        <li>
                                            <span class="list-icon">
                                                <span class="fa fa-map-marker text-muted"></span>
                                            </span> Arusha, Block B
                                        </li>
                                        <li>
                                            <span class="list-icon">
                                                <span class="fa fa-flag text-muted"></span>
                                            </span> Since {{ $farm->created_at->toFormattedDateString() }}
                                        </li>
                                        <li>
                                            <span class="list-icon">
                                                <i class="far fa-object-ungroup"></i>
                                            </span> {{ $farm->size }} {{ str_plural($farm->size_unit, $farm->size) }}
                                        </li>
                                        <li>
                                            <span class="list-icon">
                                                <i class="fab fa-pagelines"></i>
                                            </span>
                                            {{ $farm->crops->implode('name', ', ') }}
                                            <a href="#">
                                                <i class="fas fa-plus-circle"></i>
                                            </a>
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