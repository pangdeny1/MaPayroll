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
                    <h1 class="page-title">Edit Company</h1>
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
                                <form action="{{ url("updatecompany/".$company->id) }}" method="post">
                                    @csrf
                                   
                                    <div class="card border-0">
                                        <header class="card-header">Add Company</header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="companycode">Company code</label>
                                                    <input type="text"
                                                           name="companycode"
                                                           id="companycode"
                                                           class="form-control  {{ $errors->has('companycode') ? "is-invalid" : "" }}"
                                                           value="{{ old("companycode",$company->coycode) }}"
                                                           placeholder="code..."
                                                    >
                                                    @if ($errors->has('companycode'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('companycode') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                                
                                            </div>
                                            <div class="form-row">
                                                <div class="form-group col-md-12">
                                                    <label for="companyname">Name</label>
                                                    <input type="text"
                                                           name="companyname"
                                                           id="companyname"
                                                           class="form-control  {{ $errors->has('companyname') ? "is-invalid" : "" }}"
                                                           value="{{ old("companyname",$company->coyname) }}"
                                                           placeholder="name..."
                                                    >
                                                    @if ($errors->has('companyname'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('companyname') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>


                                                 <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="companynumber">Company Number</label>
                                        <input type="number"
                                               name="companynumber"
                                               id="companynumber"
                                               class="form-control {{ $errors->has('companynumber') ? 'is-invalid' : '' }}"
                                               value="{{ old("companynumber",$company->companynumber) }}"
                                               placeholder="employee contr..."
                                        >
                                        @if ($errors->has('companynumber'))
                                            <span class="invalid-feedback">
                                                <strong>{{ $errors->first('companynumber') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="companytaxnumber">Tax Number</label>
                                        <input type="number"
                                               name="companytaxnumber"
                                               id="companytaxnumber"
                                               class="form-control {{ $errors->has('companytaxnumber') ? 'is-invalid' : '' }}"
                                               value="{{ old("companytaxnumber",$company->gstno) }}"
                                               placeholder="employer contr..."
                                        >
                                        @if ($errors->has('companytaxnumber'))
                                            <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('companytaxnumber') }}</strong>
                                                </span>
                                        @endif
                                    </div>

                                  <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="companyaddress">Adress</label>
                                        <input type="text"
                                               name="companyaddress"
                                               id="companyaddress"
                                               class="form-control {{ $errors->has('companyaddress') ? 'is-invalid' : '' }}"
                                               value="{{ old("companyaddress",$company->regoffice1) }}"
                                               placeholder="range from..."
                                        >
                                        @if ($errors->has('companyaddress'))
                                            <span class="invalid-feedback">
                                                <strong>{{ $errors->first('companyaddress') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="companytelephone">Phone</label>
                                        <input type="number"
                                               name="companytelephone"
                                               id="companytelephone"
                                               class="form-control {{ $errors->has('phone') ? 'is-invalid' : '' }}"
                                               value="{{ old("companytelephone",$company->telephone) }}"
                                               placeholder="range to.."
                                        >
                                        @if ($errors->has('companytelephone'))
                                            <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('companytelephone') }}</strong>
                                                </span>
                                        @endif
                                    </div>

                                    <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <label for="companyfax">Fax</label>
                                        <input type="number"
                                               name="companyfax"
                                               id="companyfax"
                                               class="form-control {{ $errors->has('companyfax') ? 'is-invalid' : '' }}"
                                               value="{{ old("companyfax",$company->fax) }}"
                                               placeholder="range from..."
                                        >
                                        @if ($errors->has('companyfax'))
                                            <span class="invalid-feedback">
                                                <strong>{{ $errors->first('companyfax') }}</strong>
                                            </span>
                                        @endif
                                    </div>
                                   <div class="form-group col-md-6">
                                        <label for="companyemail">Email</label>
                                        <input type="email"
                                               name="companyemail"
                                               id="companyemail"
                                               class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }}"
                                               value="{{ old("companyemail",$company->email) }}"
                                               placeholder="range to.."
                                        >
                                        @if ($errors->has('companyemail'))
                                            <span class="invalid-feedback">
                                                    <strong>{{ $errors->first('companyemail') }}</strong>
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