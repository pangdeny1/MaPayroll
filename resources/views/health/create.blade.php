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
                    <h1 class="page-title">Add Health</h1>
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
                                <form action="{{ url('/addhealth') }}" method="post">
                                    @csrf
                                    <div class="card border-0">
                                        <header class="card-header">Add Health</header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="HealthName">HealthName</label>
                                                    <input type="text"
                                                           name="HealthName"
                                                           id="HealthName"
                                                           class="form-control  {{ $errors->has('HealthName') ? "is-invalid" : "" }}"
                                                           value="{{ old("HealthName") }}"
                                                           placeholder="name..."
                                                    >
                                                    @if ($errors->has('HealthName'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('HealthName') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                                
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="Description">Description</label>
                                                    <input type="text"
                                                           name="Description"
                                                           id="Description"
                                                           class="form-control  {{ $errors->has('Description') ? "is-invalid" : "" }}"
                                                           value="{{ old("Description") }}"
                                                           placeholder="name..."
                                                    >
                                                    @if ($errors->has('Description'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('Description') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>

                                                 <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="EmployeeContr">Employee Contr</label>
                                        <input type="number"
                                               name="EmployeeContr"
                                               id="EmployeeContr"
                                               class="form-control {{ $errors->has('EmployeeContr') ? 'is-invalid' : '' }}"
                                               value="{{ old("EmployeeContr") }}"
                                               placeholder="employee contr..."
                                        >
                                        @if ($errors->has('EmployeeContr'))
                                            <span class="invalid-feedback">
                                                <strong>{{ $errors->first('EmployeeContr') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="EmployerContr">Employer Contr</label>
                                        <input type="number"
                                               name="EmployerContr"
                                               id="EmployerContr"
                                               class="form-control {{ $errors->has('EmployerContr') ? 'is-invalid' : '' }}"
                                               value="{{ old("EmployerContr") }}"
                                               placeholder="employer contr..."
                                        >
                                        @if ($errors->has('EmployerContr'))
                                            <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('EmployerContr') }}</strong>
                                                </span>
                                        @endif
                                    </div>

                                  <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="RangeFrom">Range From</label>
                                        <input type="number"
                                               name="RangeFrom"
                                               id="RangeFrom"
                                               class="form-control {{ $errors->has('RangeFrom') ? 'is-invalid' : '' }}"
                                               value="{{ old("RangeFrom",0) }}"
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
                                               value="{{ old("RangeTo",9999999999) }}"
                                               placeholder="range to.."
                                        >
                                        @if ($errors->has('RangeTo'))
                                            <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('RangeTo') }}</strong>
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