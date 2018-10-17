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
                            <li class="breadcrumb-item active">
                                <a href="#">
                                    <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Settings</a>
                            </li>
                        </ol>
                    </nav>
                    <h1 class="page-title">Edit Tax</h1>
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
                                <form action="{{ url("updatetax/".$taxrate->id) }}" method="post">
                                    @csrf
                                   <div class="card border-0">
                                        <header class="card-header">Fix Rate</header>
                                        <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="RangeFrom">Range From</label>
                                        <input type="number"
                                               name="RangeFrom"
                                               id="RangeFrom"
                                               class="form-control {{ $errors->has('RangeFrom') ? 'is-invalid' : '' }}"
                                               value="{{ old("RangeFrom",$taxrate->rangefrom) }}"
                                               placeholder="range from..."
                                        >
                                        @if ($errors->has('RangeFrom'))
                                            <span class="invalid-feedback">
                                                <strong>{{ $errors->first('RangeFrom') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="RangeTo">Range To</label>
                                        <input type="number"
                                               name="RangeTo"
                                               id="RangeTo"
                                               class="form-control {{ $errors->has('RangeTo') ? 'is-invalid' : '' }}"
                                               value="{{ old("RangeTo",$taxrate->rangeto) }}"
                                               placeholder="range to.."
                                        >
                                        @if ($errors->has('RangeTo'))
                                            <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('RangeTo') }}</strong>
                                                </span>
                                        @endif
                                    </div>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="FixTax">FixTax</label>
                                                    <input type="text"
                                                           name="FixTax"
                                                           id="FixTax"
                                                           class="form-control  {{ $errors->has('FixTax') ? "is-invalid" : "" }}"
                                                           value="{{ old("FixTax",$taxrate->fixtax) }}"
                                                           placeholder="fix tax..."
                                                    >
                                                    @if ($errors->has('FixTax'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('FixTax') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                                
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="Percent">Percent</label>
                                                    <input type="text"
                                                           name="Percent"
                                                           id="Percent"
                                                           class="form-control  {{ $errors->has('Percent') ? "is-invalid" : "" }}"
                                                           value="{{ old("Percent",$taxrate->percentofexcessamount) }}"
                                                           placeholder="percent..."
                                                    >
                                                    @if ($errors->has('Percent'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('Percent') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>

                                          <hr>
                                            <button class="btn btn-block btn-primary">
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