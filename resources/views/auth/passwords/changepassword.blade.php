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
                    <h1 class="page-title">Change Password</h1>
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
                                <form action="{{ route("changepassword.update",$user) }}" method="post">
                                    @csrf
                                    <div class="card border-0">
                                        <header class="card-header border-bottom-0">
                                            Change password
                                             @if(session('success'))
        <!-- If password successfully show message -->
        <div class="row">
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        </div>
        @endif

                                            
                                        </header>
                                        <div class="card-body">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <label for="current_password">Current password</label>
                                                    <input type="password"
                                                           name="current_password"
                                                           id="current_password"
                                                           class="form-control  {{ $errors->has('current_password') ? "is-invalid" : "" }}"
                                                           
                                                           placeholder="current password"
                                                    >
                                                    @if ($errors->has('current_password'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('current_password') }}</strong>
                                                        </span>
                                                    @endif
                                                   @if(session('danger'))
                                                        <div class="alert alert-danger">
                                                            <strong>{{ session('danger') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>

                                                </div>

                                            </div>
                                           
                                             <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <label for="new_password">new_password</label>
                                                    <input type="password"
                                                           name="new_password"
                                                           id="new_password"
                                                           class="form-control  {{ $errors->has('new_password') ? "is-invalid" : "" }}"
                                                           
                                                           placeholder="new password"
                                                    >
                                                    @if ($errors->has('new_password'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('new_password') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>
                                            </div>

                                                 <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <label for="confirm_password">confirm_password</label>
                                                    <input type="password"
                                                           name="confirm_password"
                                                           id="confirm_password"
                                                           class="form-control  {{ $errors->has('confirm_password') ? "is-invalid" : "" }}"
                                                           
                                                           placeholder="Confirm password"
                                                    >
                                                    @if ($errors->has('confirm_password'))
                                                        <span class="invalid-feedback">
                                                            <strong>{{ $errors->first('confirm_password') }}</strong>
                                                        </span>
                                                    @endif
                                                </div>

                                            </div>

                                            </div>
                                            <button type="submit" class="btn btn-primary btn-lg btn-block">
                                                Change Password
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