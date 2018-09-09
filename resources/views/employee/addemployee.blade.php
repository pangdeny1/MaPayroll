 @extends('layouts.pagelayout')
@section('content')<!-- START BREADCRUMB -->
              
                <!-- END BREADCRUMB -->
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                
                    <div class="row">
                        <div class="col-md-12">
@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
  
@endif
                   <form class="form-horizontal" action="employeestore" method='post' role='form'>

 
{!! csrf_field() !!}

                                <div class="panel panel-default tabs">                            
                                    <ul class="nav nav-tabs" role="tablist">
                                        <li class="active"><a href="#tab-first" role="tab" data-toggle="tab">Personal</a></li>
                                        <li><a href="#tab-second" role="tab" data-toggle="tab">Salary</a></li>
                                        <li><a href="#tab-tenth" role="tab" data-toggle="tab">Dates</a></li>
                                        <li><a href="#tab-third" role="tab" data-toggle="tab">Contacts</a></li>
                                        <li><a href="#tab-fourth" role="tab" data-toggle="tab">Education</a></li>
                                        <li><a href="#tab-fifth" role="tab" data-toggle="tab">Work experience</a></li>
                                        <li><a href="#tab-sixth" role="tab" data-toggle="tab">Dependants</a></li>
                                        <li><a href="#tab-seventh" role="tab" data-toggle="tab">Attachements</a></li>
                                        <li><a href="#tab-eight" role="tab" data-toggle="tab">Membership</a></li>
                                        <li><a href="#tab-ninth" role="tab" data-toggle="tab">Picture</a></li>
                                        

                                    
                                    </ul>
                                    <div class="panel-body tab-content">
                                        <div class="tab-pane active" id="tab-first">
                                              <p>Fill all Mandatory Fields</p>

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">First Name</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="firstname" value="{{ old('firstname') }}" />                                                    
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Last Name</label>
                                                <div class="col-md-6 col-xs-12">                                          
                                                    <input type="text" name="lastname" class="form-control" value="{{ old('lastname') }}" />
                                                </div>
                                            </div>

                                             <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Other Name </label>
                                                <div class="col-md-6 col-xs-12">                                            
                                                    <input type="text" name="othername" class="form-control"  {{ old('othername') }}/>
                                                </div>
                                            </div>


                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Gender</label>
                                                <div class="col-md-6 col-xs-12">  
                                                    <select class="form-control select" name="gender">
                                                        <option value='M'>Male</option>
                                                        <option value='F'>Female</option>
                                                        <option  value='NA' selected="selected">Select Gender</option>
                                                                                                             
                                                    </select>
                                                </div>                                            
                                            </div>

                                               <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Job Title  </label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="jobid">
                                                        
                                                        <option  value='' selected="selected">Select </option>
                                                               @foreach ($jobs as $job)
                                                          <option value="{{ $job->id }}">{{ $job->jobname }}</option>
                                                               @endforeach
                                                                                                             
                                                    </select>
                                                </div>                                          
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Employee Status</label>
                                                <div class="col-md-2">
                                                    <select class="form-control select" name="active">
                                                        <option value=0 selected="selected">Active</option>
                                                        <option value=1>In-Active</option>                                                                                                             
                                                    </select>
                                                </div>                                            
                                            </div>

                                           
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Any particular condition that the Administrator may require to know</label>
                                                <div class="col-md-6 col-xs-12">                                            
                                                    <textarea class="form-control" rows="5" name="aboutme">Any particular condition that the Administrator may require to know</textarea>
                                                    <span class="help-block">Somethink about your life</span>
                                                </div>
                                            </div>                                           

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">E-mail</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                        
                                                    <label class="check"><input type="checkbox" class="icheckbox" checked="checked"/> I want to get emails</label>
                                                    
                                                </div>
                                            </div>
                                            
                                        </div>
                                        <div class="tab-pane" id="tab-second">
                                          <p>Fill all Mandatory Fields</p>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Pay type</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="paytype">
                                                        <option  value='' selected="selected">Select </option>

                                                        @foreach($paytypes as $paytype)

                                                        
                                                         <option value="{{ $paytype->id }}">{{ $paytype->name }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div>                                          
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Pay pariods</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="payperiod">
                                                        <option  value='' selected="selected">Select </option>

                                                        @foreach($payperiods as $payperiod)

                                                        
                                                         <option value="{{ $payperiod->id }}">{{ $payperiod->name }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div>                                          
                                            </div>

                                                                                        
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Basic Salary</label>
                                                <div class="col-md-3 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="periodrate" value="{{ old('perioddate') }}"/>                                                    
                                                </div>
                                            </div>

                                             <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Hourly Rate</label>
                                                <div class="col-md-3 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="hourlyrate" value="{{ old('hourlyrate') }}"/>                                                    
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label"></label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                        
                                                    
                                                </div>
                                            </div>
                                            
                                        </div>                                        
                                        <div class="tab-pane" id="tab-third">
                                           <p>Fill all Mandatory Fields</p>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">E-mail</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="email" class="form-control" value="{{ old('email') }}"/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Phone</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="phone" class="form-control" value="{{ old('phone') }}"/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Address</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="address" value="{{ old('address') }}"/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Country</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="country">
                                                        <option value=1 selected="selected">Tanzania</option>
                                                        <option  value=2>Others</option>
                                                        
                                                                                                             
                                                    </select>
                                                </div>                                            
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">City/Region</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="region">
                                                        <option value=1>Dar es Salaam</option>
                                                        <option  value=2>Others</option>
                                                        <option  value='' selected="selected">Select </option>
                                                                                                             
                                                    </select>
                                                </div>                                            
                                            </div>
<div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">District</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="district">
                                                        <option value=1>Kinondoni</option>
                                                        <option  value=2>Ilala</option>
                                                        <option  value=3>Temeke</option>
                                                        <option  value='' selected="selected">Select</option>
                                                                                                             
                                                    </select>
                                                </div>                                            
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Zip Code</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="zip" class="form-control" value="{{ old('zip') }}"/>
                                                </div>
                                            </div>
                                            
                                        </div>

                                        <div class="tab-pane active" id="tab-fourth">
                                         Fourth

                                        </div>

                                         <div class="tab-pane active" id="tab-fifth">
                                         Fifth

                                        </div>

                                         <div class="tab-pane active" id="tab-sixth">
                                        Sixth

                                        </div>

                                         <div class="tab-pane active" id="tab-seventh">
                                         
                                         Seventh

                                        </div>

                                         <div class="tab-pane active" id="tab-eight">
                                        
                                        Eight

                                        </div>

                                         <div class="tab-pane active" id="tab-ninth">
                                        
                                       Ninith
                                        </div>


                                            <div class="tab-pane active" id="tab-tenth">
                                   
                                                      
                                         <div class="form-group">
                                            <label class="col-md-3 control-label">Date of Birth</label>
                                            <div class="col-md-5">
                                                <input type="text" name="birthdate" class="form-control datepicker" value="{{ old('birthdate') }}">
                                            </div>
                                        </div>

                                         
                                         
                                         <div class="form-group">
                                            <label class="col-md-3 control-label">Hired Date</label>
                                            <div class="col-md-5">
                                                <input type="text" name="hiredate" class="form-control datepicker" value="{{ old('hiredate') }}">
                                            </div>
                                        </div>
                                    
                                         
                                         <div class="form-group">
                                            <label class="col-md-3 control-label">Probation End Date</label>
                                            <div class="col-md-5">
                                                <input type="text" name="probdate" class="form-control datepicker" value="{{ old('probdate') }}">
                                            </div>
                                        </div>
                                   
                                       
                                         
                                         <div class="form-group">
                                            <label class="col-md-3 control-label">End of Contract</label>
                                            <div class="col-md-5">
                                                <input type="text" name="terminatedate" class="form-control datepicker" value="{{ old('terminatedate') }}">
                                            </div>
                                        </div>
                               
                                        
                                         <div class="form-group">               
                                                <label class="col-md-3 col-xs-12 control-label">End Of Contract Reason</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="terminatereason">
                                                        <option value='1'>End of Contract</option>
                                                        <option  value='2'>Displinary</option>
                                                        <option  value="" selected="selected"></option>
                                                                                                             
                                                    </select>
                                                </div>                                            
                                            </div> 
                                   
                                        </div>
                                      
                                        </div>


                                    <div class="panel-footer">                                                                        
                                        <button class="btn btn-primary pull-right">Save Changes <span class="fa fa-floppy-o fa-right"></span></button>
                                    </div>
                                </div>                                
                            
                            </form>
                            
                        </div>
                    </div>                    
                    
                </div>
                <!-- END PAGE CONTENT WRAPPER -->   
                @endsection