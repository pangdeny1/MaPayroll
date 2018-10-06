@extends("layouts.master")

@section("content")
<div class="wrapper">
    <div class="page has-sidebar">
        <div class="page-inner">
            <header class="page-title-bar">
                <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item active">
                    <a href="#">
                        <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Edit loan</a>
                    </li>
                </ol>
                </nav>
                <h1 class="page-title"> Edit loan </h1>
            </header>
            <div class="page-section">
                <div class="row">
                    <div class="col-md-12">
   @include('includes.flash')

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/updateloan/'.$loan->id) }}">
                        {!! csrf_field() !!}

<div class="form-group{{ $errors->has('LoanDesc') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Loan Description</label>

                            <div class="col-md-6">
                                <input type="text" name="LoanDesc" class="form-control" value="{{$loan->loanfiledesc}}">
             
                                @if ($errors->has('LoanDesc'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('LoanDesc') }}</strong>
                                    </span>
                                @endif
                                
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('employee') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">employees</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="employee">

                                                       <option value=""> Select Employee </option>
                                                          @foreach($employees as $employee)
                                                          @if($employee->id==$loan->employee_id)
                                                        
                                                         <option selected value="{{ $loan->employee_id }}">{{ $employee->first_name }} {{ $employee->last_name }}</option>
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
                           
                           <div class="form-group{{ $errors->has('loantype') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">loantype  </label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="loantype">

                                                       <option value=""> Select loantype </option>
                                                          @foreach($loantypes as $loantype)

                                                         @if($loan->loantype_id==$loantype->id)
                                                           <option selected value="{{ $loan->loantype_id}}">{{ $loantype->loantypedesc}}</option>
                                                           @else
                                                         
                                                         <option value="{{ $loantype->id }}">{{ $loantype->loantypedesc}}</option>
                                                         @endif
                                                         
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('loantype'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('loantype') }}</strong>
                                    </span>
                                @endif
                            </div>

                            <div class="form-group{{ $errors->has('Term') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Term</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="Term">
                                                      
                                                       @if($loan->amount_term=="Amount")

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
                            <label for="title" class="col-md-4 control-label">Loan Amount</label>

                            <div class="col-md-6">
                                <input type="text" name="Amount" class="form-control" value="{{$loan->loanamount}}">
             
                                @if ($errors->has('Amount'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Amount') }}</strong>
                                    </span>
                                @endif
                                
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('LoanBalance') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Loan Balance</label>

                            <div class="col-md-6">
                                <input type="text" name="LoanBalance" class="form-control" value="{{$loan->loanbalance}}">
             
                                @if ($errors->has('LoanBalance'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('LoanBalance') }}</strong>
                                    </span>
                                @endif
                                
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Amortization') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Amortization(deduction Amount)</label>

                            <div class="col-md-6">
                                <input type="text" name="Amortization" class="form-control" value="{{$loan->amortization}}">
             
                                @if ($errors->has('Amortization'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Amortization') }}</strong>
                                    </span>
                                @endif
                                
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Transaction') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Transaction</label>

                            <div class="col-md-6">
                                
                                 <select class="form-control select" name="Transaction">
                                      @if($loan->transaction_type=="Basic")

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
                                <input type="text" name="Percentage" class="form-control" value="{{$loan->percent}}">

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
                                                       
                                                         <option value="{{$loan->payrollid}}">{{$period->payrolldesc}}</option>
                                                         
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('Period'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Period') }}</strong>
                                    </span>
                                @endif
                            </div>
                           
                            <div class="form-group{{ $errors->has('LoanDate') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Loan Date</label>

                            <div class="col-md-6">
                                <input type="date" name="LoanDate" class="form-control datepicker" value="{{$loan->loandate}}">

                                @if ($errors->has('LoanDate'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('LoanDate') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
 
                            <div class="form-group{{ $errors->has('StartDeduction') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Start Deduction</label>

                            <div class="col-md-6">
                                <input type="date" name="StartDeduction" class="form-control datepicker" value="{{$loan->startdeduction}}">

                                @if ($errors->has('StartDeduction'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('StartDeduction') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group col-md-12">
                            <label for="title" class="col-md-4 control-label">Active?</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="Status">
                                                        @foreach($yesornos  as $ss)
                                                       
                                                         @if($ss->id==$loan->status)
                                                        <option  value="{{$loan->status}}" selected="selected">{{$ss->name}}</option>
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
                                    <i class="fa fa-btn fa-ticket"></i> Update Loan
                                </button>
                            </div>
                        </div>
                    </form>
            
                    </div>
                </div>
            </div>
        </div>

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
                {{-- <h3 class="section-title"> I'm a sidebar </h3> --}}
            </div>
        </div>
    </div>
</div>
@endsection

             <script type="text/javascript">
function showDiv(select){
   if(select.value=="Percent"){
    document.getElementById('hidden_div').style.display = "block";
     document.getElementById('hidden_div2').style.display = "block";
     document.getElementById('hidden_div3').style.display = "none";
     document.getElementById('hidden_div4').style.display = "none";
   } 

   else {
    document.getElementById('hidden_div2').style.display = "none";
     document.getElementById('hidden_div').style.display = "none";

     document.getElementById('hidden_div3').style.display = "block";
     document.getElementById('hidden_div4').style.display = "block";
   } 