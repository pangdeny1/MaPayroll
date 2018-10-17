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
                    <h1 class="page-title">Edit Workers Union</h1>
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
                                <form action="{{ url("updatehdmf/".$hdmfrate->id) }}" method="post">
                                    @csrf
                                   
                                    <div class="card border-0">
                                        <header class="card-header">Add Workers Union</header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="HdmfName">HdmfName</label>
                                                    <input type="text"
                                                           name="HdmfName"
                                                           id="HdmfName"
                                                           class="form-control  {{ $errors->has('HdmfName') ? "is-invalid" : "" }}"
                                                           value="{{ old("HdmfName",$hdmfrate->hdmfname) }}"
                                                           placeholder="code..."
                                                    >
                                                    @if ($errors->has('HdmfName'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('HdmfName') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                                
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="Description">Name</label>
                                                    <input type="text"
                                                           name="Description"
                                                           id="Description"
                                                           class="form-control  {{ $errors->has('Description') ? "is-invalid" : "" }}"
                                                           value="{{ old("Description",$hdmfrate->description) }}"
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
                                               value="{{ old("EmployeeContr",$hdmfrate->employeeshare) }}"
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
                                               value="{{ old("EmployerContr",$hdmfrate->employershare) }}"
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
                                               value="{{ old("RangeFrom",$hdmfrate->rangefrom) }}"
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
                                               value="{{ old("RangeTo",$hdmfrate->rangeto) }}"
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