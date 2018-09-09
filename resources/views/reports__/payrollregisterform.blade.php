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

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/payrollregister') }}">
                        {!! csrf_field() !!}

                       <!--   
                        <div class="form-group{{ $errors->has('employee') ? ' has-error' : '' }}">
                            <label for="employee" class="col-md-4 control-label">Employee</label>

                            <div class="col-md-6">
                                <select id="category" type="employee" class="form-control" name="employee">
                                    <option value="">Select Employee</option>
                                   
                               @foreach ($employees as $employee)
                        <option value="{{ $employee->employeeid }}">{{ $employee->firstname }}  {{ $employee->lastname }}</option>
                                    @endforeach
                                </select>

                                @if ($errors->has('employee'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('employee') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div> -->

                        <div class="form-group{{ $errors->has('period') ? ' has-error' : '' }}">
                            <label for="period" class="col-md-4 control-label">Payroll Period</label>

                            <div class="col-md-6">
                                <select id="category" type="period" class="form-control" name="period">
                                    <option value="">Select period</option>
                                   
                               @foreach ($periods as $period)
                        <option value="{{ $period->id }}">{{ $period->payrolldesc }}  </option>
                                    @endforeach
                                </select>

                                @if ($errors->has('period'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('period') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" name="Report" value="Preview" class="btn btn-primary">
                                    <i class="fa fa-btn fa-ticket"></i> Preview
                                </button>

                                 <button type="submit" name="Report" value="Excell" class="btn btn-primary">
                                    <i class="fa fa-btn fa-ticket"></i> Excell Report
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            @endsection