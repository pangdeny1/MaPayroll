@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/addsalary') }}">
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


                            <div class="form-group{{ $errors->has('ChangedBy') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">Changed By</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="ChangedBy">

                                                       <option value=''> Select -- </option>
                                                        <option value="Parcentage"> Parcentage</option>
                                                        <option value="Amount"> Amount</option>
                                                          
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('ChangedBy'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('ChangedBy') }}</strong>
                                    </span>
                                @endif
                            </div>          

                        <div class="form-group{{ $errors->has('SalaryFrom') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label"> Current Salary</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="SalaryFrom" value="{{ old('SalaryFrom') }}">

                                @if ($errors->has('SalaryFrom'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('SalaryFrom') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('AmountChanged') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Amount Changed</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="AmountChanged" value="{{ old('AmountChanged') }}">

                                @if ($errors->has('AmountChanged'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('AmountChanged') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                          <div class="form-group{{ $errors->has('SalaryTo') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">New Salary Amount</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="SalaryTo" value="{{ old('SalaryTo') }}">

                                @if ($errors->has('SalaryTo'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('SalaryTo') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        
                         <div class="form-group{{ $errors->has('ParcentageChanged') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Parcentage changed</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="ParcentageChanged" value="{{ old('ParcentageChanged') }}">

                                @if ($errors->has('ParcentageChanged'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('ParcentageChanged') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('payroll') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">Payroll Period</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="payroll">

                                                       <option> Select payroll </option>
                                                          @foreach($payrolls as $payroll)

                                                         
                                                         <option value="{{ $payroll->id }}">{{ $payroll->payrollid }} {{ $payroll->lastname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('payroll'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('payroll') }}</strong>
                                    </span>
                                @endif
                            </div> 

                        <div class="form-group{{ $errors->has('DateChanged') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Date</label>

                            <div class="col-md-6">
                                <input type="text" name="DateChanged" class="form-control datepicker" value="{{old('DateChanged')}}">

                                @if ($errors->has('ParcentageChanged'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DateChanged') }}</strong>
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