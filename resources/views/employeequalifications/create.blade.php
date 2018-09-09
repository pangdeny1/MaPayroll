@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/addemployeequalification') }}">
                        {!! csrf_field() !!}


                        <div class="form-group{{ $errors->has('employee') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">employees</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="employee">

                                                       <option value=""> Select Employee </option>
                                                          @foreach($employees as $employee)

                                                         
                                                         <option value="{{ $employee->employeeid }}">{{ $employee->firstname }} {{ $employee->lastname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('employee'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('employee') }}</strong>
                                    </span>
                                @endif
                            </div>  

                            <div class="form-group{{ $errors->has('qualification') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">Qualification</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="qualification">

                                                       <option value=""> Select qualification </option>
                                                          @foreach($qualifications as $qualification)

                                                         
                                                         <option value="{{ $qualification->id }}">{{ $qualification->qualificationname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('qualification'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('qualification') }}</strong>
                                    </span>
                                @endif
                            </div> 
                             
                             <div class="form-group{{ $errors->has('institution') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">Institution </label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="institution">

                                                       <option value=""> Select institution </option>
                                                          @foreach($institutions as $institution)

                                                         
                                                         <option value="{{ $institution->id }}">{{ $institution->institutename}}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('institution'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('institution') }}</strong>
                                    </span>
                                @endif
                            </div>
                             
                             <div class="form-group{{ $errors->has('level') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">Level  </label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="level">

                                                       <option value=""> Select level </option>
                                                          @foreach($levels as $level)

                                                         
                                                         <option value="{{ $level->id }}">{{ $level->qlevelname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('level'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('level') }}</strong>
                                    </span>
                                @endif
                            </div>
                            <div class="form-group{{ $errors->has('DateFrom') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">From Date</label>

                            <div class="col-md-6">
                                <input type="text" name="DateFrom" class="form-control datepicker" value="{{old('DateFrom')}}">

                                @if ($errors->has('DateFrom'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DateFrom') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
 
                            <div class="form-group{{ $errors->has('DateTo') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">To Date</label>

                            <div class="col-md-6">
                                <input type="text" name="DateTo" class="form-control datepicker" value="{{old('DateTo')}}">

                                @if ($errors->has('DateTo'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DateTo') }}</strong>
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