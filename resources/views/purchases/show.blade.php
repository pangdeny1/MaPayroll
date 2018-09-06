@extends("layouts.master")

@section("content")
<div class="wrapper">
    <div class="page has-sidebar">
        <div class="page-inner">
            <header class="page-title-bar">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active">
                            <a href="#">
                                <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Purchases</a>
                        </li>
                    </ol>
                </nav>
                <h1 class="page-title">Purchase information</h1>
            </header>
            <div class="page-section">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <header class="card-header border-0">
                                <div class="d-flex align-items-center">
                                    <span class="mr-auto">Purchases information</span>
                                    <div class="card-header-control">
                                        <!-- .dropdown -->
                                        <div class="dropdown">
                                            <button type="button" class="btn btn-sm btn-light" data-toggle="dropdown">
                                                <i class="fa fa-fw fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-arrow"></div>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="#" class="dropdown-item">Actions</a>
                                                <a href="#" class="dropdown-item">Goes here</a>
                                                <a href="#" class="dropdown-item">Remove</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </header>
                            <div class="card-body pb-4">
                                <div class="card-title">
                                    <div>
                                        <i class="fab fa-product-hunt"></i>
                                        {{ $purchase->product->name }}
                                    </div>
                                </div>
                                <div>
                                    {{ $purchase->product->description }}
                                </div>
                            </div>

                            <div class="card-body bg-light mb-3 pb-4">
                                <div class="card-title">
                                    <div>
                                        <i class="fas fa-user-circle"></i>
                                        Farmer information
                                    </div>
                                </div>
                                <a href="#" class="btn-account" role="button">
                                    <div class="user-avatar mr-2">
                                        <img src="{{ asset("themes/looper/assets/images/avatars/profile.jpg") }}" alt="User Avatar">
                                    </div>
                                    <span class="account-simgary">
                                        <span class="account-name">{{ $purchase->farmer->full_name }}</span>
                                        <span class="account-description">
                                            <span class="text-dark">Phone number</span> – {{ $purchase->farmer->phone }}
                                        </span>
                                    </span>
                                </a>
                            </div>

                            <div class="list-group list-group-flush list-group-bordered mb-4">
                                <div class="list-group-header mb-2">
                                    <div class="text-uppercase">
                                        <i class="fas fa-balance-scale"></i>
                                        Weight information
                                    </div>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Packhouse weight</span>
                                    <strong>{{ $purchase->weight_before }} kg</strong>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Graded  Weight</span>
                                    <strong>{{ $purchase->weight_after }} kg</strong>
                                </div>
                                <div class="list-group-item justify-content-between bg-light border-top-0">
                                    <span class="text-muted">Rejected Weight</span>
                                    <strong>{{ $purchase->weight_before - $purchase->weight_after }} kg</strong>
                                </div>
                            </div>
                            <div class="list-group list-group-flush list-group-bordered">
                                <div class="list-group-header">
                                    <div class="text-uppercase">
                                        <i class="fas fa-money-check-alt"></i>
                                        Price information
                                    </div>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Unit price</span>
                                    <strong>Tsh. {{ $purchase->product->price->amount }}/ kg</strong>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Quantity</span>
                                    <strong>{{ $purchase->weight_after }} kg</strong>
                                </div>
                                <div class="list-group-item justify-content-between">
                                    <span class="text-muted">Calculate amount</span>
                                    <strong>
                                        Tsh. {{ number_format($purchase->amount, 2) }}
                                    </strong>
                                </div>
                                <div class="list-group-item justify-content-between bg-light border-top-0">
                                    <span class="text-muted">Actual amount</span>
                                    <strong>
                                        Tsh. {{ number_format($purchase->amount, 2) }}
                                    </strong>
                                </div>
                            </div>
                        </div>

                        <div class="section-block mb-4">
                            <h2 class="section-title">
                                <i class="far fa-comment-alt"></i> Remarks
                            </h2>
                            <p class="text-muted"> Displays each of the user’s upcoming, current, and past activities/events. </p>
                        </div>

                        @if($purchase->remarks->count())
                        <article class="feed">
                            <section class="feed-post card">
                                <header class="card-header card-header-fluid">
                                    <a href="#" class="btn-account" role="button">
                                        <div class="user-avatar user-avatar-lg">
                                            <img src="{{ asset("themes/looper/assets/images/avatars/profile.jpg") }}"
                                                 alt="User Avatar"> </div>
                                        <div class="account-summary">
                                            <p class="account-name"> Beni arisandi </p>
                                            <p class="account-description">
                                                {{ $purchase->remark->created_at }}
                                            </p>
                                        </div>
                                    </a>
                                    <!-- .dropdown -->
                                    <div class="dropdown align-self-start ml-auto">
                                        <button class="btn btn-reset text-muted" data-toggle="dropdown">
                                            <i class="fa fa-fw fa-ellipsis-v"></i>
                                        </button>
                                        <div class="dropdown-arrow"></div>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href="#" class="dropdown-item">Get notified</a>
                                            <a href="#" class="dropdown-item">Mute notified</a>
                                            <a href="#" class="dropdown-item">Permalink</a>
                                            <a href="#" class="dropdown-item">Block this user</a>
                                            <a href="#" class="dropdown-item">Remove</a>
                                        </div>
                                    </div>
                                    <!-- /.dropdown -->
                                </header>
                                <div class="card-body">
                                    <div class="mb-2">{{ $purchase->remark->body }}</div>
                                </div>
                            </section>
                            <section class="feed-comments card">
                                <section role="log" class="conversations">
                                    <ul class="conversation-list">
                                        @foreach($purchase->remarks()->latest()->skip(1) as $remark)
                                        <li class="conversation-inbound">
                                            <div class="conversation-avatar">
                                                <a href="#" class="user-avatar">
                                                    <img src="{{ asset("themes/looper/assets/images/avatars/uifaces12.jpg") }}"
                                                         alt="User Avatar">
                                                </a>
                                            </div>
                                            <div class="conversation-message">
                                                <div class="conversation-meta">
                                                    <a href="#" class="mr-2">
                                                        <strong>Zachary Fowler</strong>
                                                    </a>
                                                    <span class="time">5m</span>
                                                </div>
                                                <div class="conversation-message-text">
                                                    {{ $remark->body }}
                                                </div>
                                                <div class="conversation-meta">
                                                    <a href="#">Edit</a> ·
                                                    <a href="#">Delete</a>
                                                </div>
                                            </div>
                                        </li>
                                        @endforeach
                                        <li class="conversation-action mt-3">
                                            <div class="media">
                                                <figure class="user-avatar mr-2">
                                                    <img src="{{ asset("themes/looper/assets/images/avatars/profile.jpg") }}" alt="User Avatar">
                                                </figure>
                                                <div class="media-body">
                                                    <div class="publisher publisher-alt">
                                                        <form action="{{ route("remarks.replays.store", $purchase->remark) }}"
                                                              method="post"
                                                        >
                                                            @csrf
                                                            <div class="publisher-input">
                                                                <textarea id="publisherInput1" class="form-control" placeholder="Write a comment..."></textarea>
                                                            </div>
                                                            <div class="publisher-actions">
                                                                <div class="publisher-tools mr-auto">
                                                                    <button type="button" class="btn btn-link fileinput-button">
                                                                        <i class="fa fa-paperclip"></i>
                                                                        <input type="file" id="message-attachment" name="attachment[]" multiple="">
                                                                    </button>
                                                                    <button type="button" class="btn btn-link">
                                                                        <i class="far fa-smile"></i>
                                                                    </button>
                                                                </div>
                                                                <button type="submit" class="btn btn-primary">Publish</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </section>
                            </section>
                        </article>
                        @else
                            <form action="{{ route("purchases.remarks.store", $purchase) }}"
                                  method="post"
                                  class="card"
                            >
                                @csrf
                                <div class="card-body">
                                    <div class="publisher focus active">
                                        <label for="remarks" class="publisher-label">Write something</label>
                                        <!-- .publisher-input -->
                                        <div class="publisher-input">
                                            <textarea id="remarks"
                                                      name="remarks"
                                                      class="form-control"
                                                      placeholder="Write something"
                                            >{{ old("remarks") }}</textarea>
                                        </div>
                                        <!-- .publisher-actions -->
                                        <div class="publisher-actions">
                                            <!-- .publisher-tools -->
                                            <div class="publisher-tools mr-auto">
                                                <button type="button" class="btn btn-link fileinput-button">
                                                    <i class="fa fa-paperclip"></i>
                                                    <input type="file"
                                                           id="message-attachment"
                                                           name="attachment[]"
                                                           multiple=""
                                                    >
                                                </button>
                                                <button type="button" class="btn btn-link">
                                                    <i class="far fa-smile"></i>
                                                </button>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Publish</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        @endif
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
                <h3 class="section-title">
                    <i class="fas fa-stream"></i> Activities
                </h3>

                <div class="text-muted mb-4"> Displays each of the user’s upcoming, current, and past activities/events. </div>

                <ul class="timeline timeline-fluid mb-0">
                    @foreach($purchase->audits()->latest()->get() as $activity)
                    <li class="timeline-item">
                        <!-- .timeline-figure -->
                        <div class="timeline-figure">
                            <span class="tile tile-circle tile-sm">
                                <i class="far fa-calendar-alt fa-lg"></i>
                            </span>
                        </div>

                        <!-- .timeline-body -->
                        <div class="timeline-body">
                            <!-- .media -->
                            <div class="media">
                                <!-- .media-body -->
                                <div class="media-body">
                                    <p class="mb-0">
                                        <a href="{{ route("users.show", $activity->user) }}">{{ $activity->user->full_name }}</a> {{ $activity->event }} a <a href="{{ route("purchases.show", $activity->auditable_id) }}">{{ class_basename($activity->auditable_type) }}</a>
                                    </p>
                                    <span class="timeline-date">
                                        {{ $activity->created_at->toDayDateTimeString() }}
                                    </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</div>
@endsection