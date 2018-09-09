 @extends('layouts.pagelayout')

@section('template_title')
  Create New User
@endsection

@section('template_fastload_css')
@endsection

@section('content')
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/updateemployee/'.$employee->id) }}">
                        {!! csrf_field() !!}

                         <div class="form-group{{ $errors->has('FullName') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Full Name</label>

                            <div class="col-md-6">
                                <input type="text" name="FullName" class="form-control" value="{{$employee->firstname.' '.$employee->lastname}}">

                                @if ($errors->has('FullName'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('FullName') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        

                            
                             
                            <div class="form-group{{ $errors->has('DOB') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Date of Birth</label>

                            <div class="col-md-6">
                                <input type="text" name="DOB" class="form-control datepicker" value="{{$employee->dob}}">

                                @if ($errors->has('DOB'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DOB') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('Phone') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Phone</label>

                            <div class="col-md-6">
                                <input type="text" name="Phone" class="form-control" value="{{$employee->phone}}">

                                @if ($errors->has('Phone'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Phone') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Email') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Email</label>

                            <div class="col-md-6">
                                <input type="text" name="Email" class="form-control"  value="{{$employee->phone}}">

                                @if ($errors->has('Email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('NextOfKin') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Is Next of Kin ?</label>

                            <div class="col-md-6">
                               
 <label class="check"><input type="checkbox" class="icheckbox" name="NextOfKin" value=1 @if($employee->nextofkeen==1) {{"checked='checked'"}} @endif /> Tick if is Next of Kin</label>
                                @if ($errors->has('NextOfKin'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('NextOfKin') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
 

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-ticket"></i> Save
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            @endsection