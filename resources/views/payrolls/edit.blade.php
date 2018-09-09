@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/updatepayroll/'.$payroll->id) }}">
                        {!! csrf_field() !!}

                        
                        <div class="form-group{{ $errors->has('PayrollID') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Payroll id</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="PayrollID" value="{{ $payroll->payrollid }}">

                                @if ($errors->has('PayrollID'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('PayrollID') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('PayrollDesc') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Payroll Desc</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="PayrollDesc" value="{{ $payroll->payrolldesc }}">

                                @if ($errors->has('PayrollDesc'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('PayrollDesc') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('StartDate') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Start Date </label>

                            <div class="col-md-6">
                                <input type="text" name="StartDate" class="form-control datepicker" value="{{$payroll->startdate}}">

                                @if ($errors->has('StartDate'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('StartDate') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('EndDate') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">End Date </label>

                            <div class="col-md-6">
                                <input type="text" name="EndDate" class="form-control datepicker" value="{{$payroll->enddate}}">

                                @if ($errors->has('EndDate'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('EndDate') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('payperiod') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Pay Periods</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="payperiod">
                                                        <option  value='' selected="selected">Select </option>

                                                        @foreach($payperiods as $payperiod)

                                                         @if($payperiod->payperiodid ==$payroll->payperiodid)
                                                        <option  value='{{$payroll->payperiodid}}' selected="selected">{{$payperiod->payperioddesc }}</option>
                                                            @else
                                                          <option value="{{ $payperiod->payperiodid }}">{{ $payperiod->payperioddesc }}</option>
                                                           @endif 
                                                        @endforeach
                                                                                                             
                                                    </select>
                                             @if ($errors->has('payperiod'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('payperiod') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                         
                           <div class="form-group{{ $errors->has('FSMonth') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Month</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="FSMonth">

                                                        @foreach($months as $month)
                                                        @if($month->id==$payroll->fsmonth)
                                                        <option  value="{{$payroll->fsmonth}}" selected="selected">{{$month->month}}</option>
                                                        @else
                                                        <option value="{{$month->id}}">{{$month->month}}</option>
                                                          @endif  
                                                        @endforeach                                                                                                               
                                                    </select>
                                             @if ($errors->has('FSMonth'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('FSMonth') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
  <div class="form-group{{ $errors->has('FSYear') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">FSYear</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="FSYear">
                                                        @foreach($years  as $FSYear)
                                                       
                                                        @if($FSYear->id==$payroll->fsyear)
                                                        <option  value="{{$payroll->fsyear}}" selected="selected">{{$FSYear->year}}</option>
                                                        @else
                                                        <option value="{{$FSYear->id}}">{{$FSYear->year}}</option>
                                                          @endif  
                                                        
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                             @if ($errors->has('FSYear'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('FSYear') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        
                        
                       
                        <div class="form-group{{ $errors->has('DeductSSS') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Deduct Pension</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="DeductSSS">
                                                       @foreach($yesornos as $ss)
                                                        @if($ss->id==$payroll->deductsss)
                                                        <option  value="{{$payroll->deductsss}}" selected="selected">{{$ss->name}}</option>
                                                        @else
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                          @endif  
                                                        @endforeach                                                                                               
                                                    </select>
                                             @if ($errors->has('DeductSSS'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DeductSSS') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                        

                        
                        <div class="form-group{{ $errors->has('DeductHealth') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Deduct Health</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="DeductHealth">
                                                       @foreach($yesornos as $ss)
                                                        @if($ss->id==$payroll->deductphilhealth)
                                                        <option  value="{{$payroll->deductphilhealth}}" selected="selected">{{$ss->name}}</option>
                                                        @else
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                          @endif  
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                             @if ($errors->has('DeductHealth'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DeductHealth') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
      
                        <div class="form-group{{ $errors->has('DeductHdmf') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Deduct HDMF</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="DeductHdmf">
                                                        @foreach($yesornos as $ss)
                                                        @if($ss->id==$payroll->deducthdmf)
                                                        <option  value="{{$payroll->deducthdmf}}" selected="selected">{{$ss->name}}</option>
                                                        @else
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                          @endif  
                                                        @endforeach                                                                                              
                                                    </select>
                                             @if ($errors->has('DeductHdmf'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DeductHdmf') }}</strong>
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