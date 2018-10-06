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
                        <i class="breadcrumb-icon fa fa-angle-left mr-2"></i>Add loan</a>
                    </li>
                </ol>
                </nav>
                <h1 class="page-title"> Add loan </h1>
            </header>
            <div class="page-section">
                <div class="row">
                    <div class="col-md-12">

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/addloan') }}">
                        {!! csrf_field() !!}
                       
                       <div class="form-group{{ $errors->has('LoanDesc') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Loan Description</label>

                            <div class="col-md-6">
                                <input type="text" name="LoanDesc" class="form-control" value="{{old('LoanDesc')}}">
             
                                @if ($errors->has('LoanDesc'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('LoanDesc') }}</strong>
                                    </span>
                                @endif
                                
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('employee') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">Employee</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="employee">

                                                       <option value=""> Select Employee </option>
                                                          @foreach($employees as $employee)

                                                         
                                                         <option value="{{ $employee->id}}">{{ $employee->first_name }} {{ $employee->last_name }}</option>
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

                                                         
                                                         <option value="{{ $loantype->id }}">{{ $loantype->loantypedesc}}</option>
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
                                                    <select onchange='showDiv(this)' class="form-control select" name="Term">
                                                       <option value="">Select</option>
                                                       <option value="Amount">Amount</option>
                                                      <option value="Percent">Percent</option>
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
                                <input type="text" name="Amount" class="form-control" value="{{old('Amount')}}">
             
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
                                <input type="text" name="LoanBalance" class="form-control" value="{{old('LoanBalance')}}">
             
                                @if ($errors->has('LoanBalance'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('LoanBalance') }}</strong>
                                    </span>
                                @endif
                                
                            </div>
                        </div>

                        <div id='hidden_div3' style='display:none;' class="form-group{{ $errors->has('Amortization') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Amortization(deduction Amount)</label>

                            <div class="col-md-6">
                                <input type="text" name="Amortization" class="form-control" value="{{old('Amortization')}}">
             
                                @if ($errors->has('Amortization'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Amortization') }}</strong>
                                    </span>
                                @endif
                                
                            </div>
                        </div>

                        <div  id='hidden_div2' style='display:none;'class="form-group{{ $errors->has('Transaction') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Transaction</label>

                            <div class="col-md-6">
                                
                                <select class="form-control select" name="Transaction">
                                                      
                  <option value=''> Select Transaction </option>

                  <option value='Basic'> Basic</option>

                  <option value='Gross'> Gross </option>
                                                                                        
             </select> 
                                             @if ($errors->has('Transaction'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Transaction') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div id='hidden_div' style='display:none;' class="form-group{{ $errors->has('Percentage') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Percentage</label>

                            <div class="col-md-6">
                                <input type="text" name="Percentage" class="form-control" value="{{old('Percentage')}}">

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
                                                       
                                                         <option value="{{$period->id}}">{{$period->payrolldesc}}</option>
                                                         
                                                                                                             
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
                                <input type="date" name="LoanDate" class="form-control datepicker" value="{{old('LoanDate')}}">

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
                                <input type="date" name="StartDeduction" class="form-control datepicker" value="{{old('StartDeduction')}}">

                                @if ($errors->has('StartDeduction'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('StartDeduction') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('Active') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Active?</label>

                            <div class="col-md-6">
                                                    <select class="form-control select" name="Status">
                                                        @foreach($yesornos  as $ss)
                                                       
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                        
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
                <h3 class="section-title">Loan menu</h3> 

                
                
<ul>
    <li><a href=""> Browse loans</a></li>
    <li><a href=""> Create loans</a></li>
    <li><a href=""> Browse loan types</a></li>
    <li><a href=""> Create loan type</a></li>
</ul>
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

  
} 
</script>
