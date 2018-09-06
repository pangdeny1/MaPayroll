@extends("layouts.master")

@section("content")
    <div class="wrapper">
        <div class="page has-sidebar">
            <div class="sidebar-backdrop"></div>
            <!-- .page-inner -->
            <div class="page-inner">
                <!-- .page-title-bar -->
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
                            <li class="breadcrumb-item">
                                <a href="{{ route("blocks.index") }}">
                                    Blocks
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    {{ $block->number }}
                                </a>
                            </li>
                            <li class="breadcrumb-item active">
                                Edit
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title">New block</h1>
                </header>

                <!-- .page-section -->
                <div class="page-section">
                    <div class="section-block">
                        <div class="d-xl-none">
                            <button class="btn btn-danger btn-floated" type="button" data-toggle="sidebar">
                                <i class="fa fa-th-list"></i>
                            </button>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <form action="{{ route("blocks.update", $block) }}" method="post">
                                    @csrf
                                    @method("put")
                                    <div class="card border-0">
                                        <header class="card-header border-bottom-0">
                                            Edit a new block
                                        </header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <label for="number">Household hh code</label>
                                                    <input type="text"
                                                           name="number"
                                                           id="number"
                                                           class="form-control  {{ $errors->has('number') ? "is-invalid" : "" }}"
                                                           value="{{ $block->number }}"
                                                           placeholder="Block 1253TYI..."
                                                    >
                                                    @if ($errors->has('number'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('number') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>

                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="description">Description</label>
                                                    <textarea name="description"
                                                              id="description"
                                                              class="form-control {{ $errors->has('description') ? "is-invalid" : "" }}"
                                                              rows="6"
                                                              placeholder="Type something..."
                                                    >{{ $block->description }}</textarea>
                                                    @if ($errors->has('description'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('description') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <header class="card-header border-bottom-0">
                                            Location information
                                        </header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="street">Village address</label>
                                                    <input type="text"
                                                           name="street"
                                                           class="form-control {{ $errors->has('street') ? 'is-invalid' : '' }}"
                                                           id="street"
                                                            value="{{ old("street", optional($block->address)->street) }}"
                                                           placeholder="1234 Main St"
                                                    >
                                                    @if ($errors->has('street'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('street') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>

                                            <div class="form-row">
                                                <div class="col-md-6 mb-3">
                                                    <label for="country">Country</label>
                                                    <select name="country"
                                                            class="custom-select d-block w-100"
                                                            id="country"
                                                    >
                                                        <option value="Tanzania">Tanzania</option>
                                                    </select>
                                                    <div class="invalid-feedback"> Please select a valid country. </div>
                                                </div>
                                                <div class="col-md-6 mb-3">
                                                    <label for="state">Region</label>
                                                    <select name="state"
                                                            class="custom-select d-block w-100"
                                                            id="state"
                                                            required=""
                                                    >
                                                        <option value=""> Choose... </option>
                                                      

                                                        @foreach($states as $key => $state)
                                                    <option name="{{ $state["name"] }}" {{ old("state", optional($block->address)->state) === $state["name"] ? "selected" : "" }}>
                                                        {{ $state["name"] }}
                                                    </option>
                                                @endforeach
                                                    </select>
                                                    <div class="invalid-feedback"> Please provide a valid state. </div>
                                                </div>
                                            </div>
                                            <hr class="mb-4">
                                            <button type="submit" class="btn btn-primary btn-lg btn-block">
                                                Save changes
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- .page-sidebar -->
            <div class="page-sidebar border-left bg-white">
                <header class="sidebar-header d-sm-none">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item active">
                                <a href="#" onclick="Looper.toggleSidebar()">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Back</a>
                            </li>
                        </ol>
                    </nav>
                </header>
                <div class="sidebar-section">

                </div>
            </div>
        </div>
    </div>
@endsection