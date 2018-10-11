@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/updateotherdeduction/'.$otherdeduction->id) }}">
                        {!! csrf_field() !!}


                        <div class="form-group{{ $errors->has('employee') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">employees</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="employee">

                                                       <option value=""> Select Employee </option>
                                                          @foreach($employees as $employee)
                                                          @if($employee->id==$otherdeduction->employee_id)
                                                        
                                                         <option selected value="{{ $otherdeduction->employee_id }}">{{ $employee->first_name }} {{ $employee->last_name }}</option>
                                                        @else
                                                         <option value="{{ $employee->id }}">{{ $employee->first_name }} {{ $employee->last_name }}</option>
                                                          @endif  
                                                       
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('employee'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('employee') }}</strong>
                                    </span>
                                @endif
                            </div>  
                           
                           <div class="form-group{{ $errors->has('otherdedtype') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">otherdedtype  </label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="otherdedtype">

                                                       <option value=""> Select otherdedtype </option>
                                                          @foreach($otherdedtypes as $otherdedtype)
                                                           @if($otherdeduction->othded_id==$otherdedtype->id)
                                                           <option selected value="{{$otherdeduction->othded_id }}">{{ $otherdedtype->othincdesc}}</option>
                                                           @else
                                                         
                                                         <option value="{{ $otherdedtype->id }}">{{ $otherdedtype->othincdesc}}</option>
                                                         @endif
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('otherdedtype'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('otherdedtype') }}</strong>
                                    </span>
                                @endif
                            </div>

                            <div class="form-group{{ $errors->has('Term') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Term</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="Term">
                                                      
                                                       @if($otherdeduction->amount_term=="Amount")

                                                       <option selected value="Amount">Amount</option>
                                                       <option value="Percent">Percent</option>
                                                       @else
                                                      <option selected value="Percent">Percent</option>
                                                      <option  value="Amount">Amount</option>
                                                      @endif
                                                    </select>
                                             @if ($errors->has('Term'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Term') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Amount') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Amount</label>

                            <div class="col-md-6">
                                <input type="text" name="Amount" class="form-control" value="{{$otherdeduction->othincamount}}">
             
                                @if ($errors->has('Amount'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Amount') }}</strong>
                                    </span>
                                @endif
                                
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Transaction') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Transaction</label>

                            <div class="col-md-6">
                                
                                <select class="form-control select" name="Transaction">
                                                      
                 

                                                       @if($otherdeduction->transaction_type=="Basic")

                                                       <option selected value="Basic">Basic</option>
                                                       <option value="Gross">Gross</option>
                                                       @else
                                                      <option selected value="Gross">Gross</option>
                                                      <option  value="Basic">Basic</option>
                                                      @endif

                                                                                        
             </select> 
                                             @if ($errors->has('Transaction'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Transaction') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Percentage') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Percentage</label>

                            <div class="col-md-6">
                                <input type="text" name="Percentage" class="form-control" value="{{$otherdeduction->percent}}">

                                @if ($errors->has('Percentage'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Percentage') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                       <div class="form-group{{ $errors->has('Period') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">Period  </label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="Period">
                                                       
                                                         <option value="{{$otherdeduction->payroll_id}}">{{$period->payrolldesc}}</option>
                                                         
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('Period'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Period') }}</strong>
                                    </span>
                                @endif
                            </div> 

                            
                           
                            <div class="form-group{{ $errors->has('DateFrom') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">From Date</label>

                            <div class="col-md-6">
                                <input type="date" name="DateFrom" class="form-control datepicker" value="{{$otherdeduction->othdate}}">

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
                                <input type="date" name="DateTo" class="form-control datepicker" value="{{$otherdeduction->stopdate}}">

                                @if ($errors->has('DateTo'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DateTo') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Recurent') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Recurent?</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="Recurent">
                                                        @foreach($yesornos  as $ss)
                                                        @if($ss->id==$otherdeduction->recurrent)
                                                        <option  value="{{$otherdeduction->recurrent}}" selected="selected">{{$ss->name}}</option>
                                                        @else
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                          @endif  
                                                        
                                                        
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                             @if ($errors->has('Recurent'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Recurent') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Active') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Active?</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="Status">
                                                        @foreach($yesornos  as $ss)
                                                       
                                                         @if($ss->id==$otherdeduction->status)
                                                        <option  value="{{$otherdeduction->status}}" selected="selected">{{$ss->name}}</option>
                                                        @else
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                          @endif  
                                                        
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                             @if ($errors->has('Active'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Active') }}</strong>
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