@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/addsss') }}">
                        {!! csrf_field() !!}


                        <div class="form-group{{ $errors->has('PensionCode') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Pension Code</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="PensionCode" value="{{ old('PensionCode') }}">

                                @if ($errors->has('PensionCode'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('PensionCode') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('PensionName') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Pension Name</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="PensionName" value="{{ old('PensionName') }}">

                                @if ($errors->has('PensionName'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('PensionName') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('RangeFrom') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Range From</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="RangeFrom" value="{{ old('RangeFrom') }}">

                                @if ($errors->has('RangeFrom'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('RangeFrom') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('RangeTo') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Range To</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="RangeTo" value="{{ old('RangeTo') }}">

                                @if ($errors->has('RangeTo'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('RangeTo') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('EmployeeContr') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Employee Contribution % </label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="EmployeeContr" value="{{ old('EmployeeContr') }}">

                                @if ($errors->has('EmployeeContr'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('EmployeeContr') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                       <div class="form-group{{ $errors->has('EmployerContr') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label"> Employer Controbution %</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="EmployerContr" value="{{ old('EmployerContr') }}">

                                @if ($errors->has('EmployerContr'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('EmployerContr') }}</strong>
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