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
                    <form class="form-horizontal" action="employeestore" method='post' role='form' enctype="multipart/form-data">
 
{!! csrf_field() !!}

                                <div class="panel panel-default tabs">                            
                                    <ul class="nav nav-tabs" role="tablist">
                                       <li class="active"><a href="#tab-first" role="tab" data-toggle="tab">Personal</a></li>
                                        <li><a href="#tab-tenth" role="tab" data-toggle="tab">Dates</a></li>
                                        <li><a href="#tab-second" role="tab" data-toggle="tab">Salary</a></li>
                                        <li><a href="#tab-eleventh" role="tab" data-toggle="tab">Bank Info</a></li>
                                        <li><a href="#tab-eight" role="tab" data-toggle="tab">Membership</a></li>
                                        
                                        <li><a href="#tab-third" role="tab" data-toggle="tab">Contacts</a></li>
                                        <li><a href="#tab-seventh" role="tab" data-toggle="tab">Emergence Cont</a></li>
                                       <!-- <li><a href="#tab-fourth" role="tab" data-toggle="tab">Education</a></li>
                                        <li><a href="#tab-fifth" role="tab" data-toggle="tab">Work experience</a></li>
                                        <li><a href="#tab-sixth" role="tab" data-toggle="tab">Dependants</a></li>
                                        
                                          <li><a href="#tab-ninth" role="tab" data-toggle="tab">Picture</a></li> -->
                                    
                                    </ul>
                                    <div class="panel-body tab-content">
                                        <div class="tab-pane active" id="tab-first">
                                              <p>Fill all Mandatory Fields</p>
                                              <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Code</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="EmployeeCode" value="{{old('EmployeeCode')}}"/>                                                    
                                                </div>
                                            </div>

                                            <div class="form-group">
                                           <label class="col-md-3 col-xs-12 control-label">Title</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <select class="form-control select" name="Title">
                                                       <option  value='' selected="selected">Select --</option>
                                                        @foreach($titles as $title)

                                                        
                                                           
                                                         <option value="{{ $title->id }}">{{ $title->titlename }}</option>
                                                          @endforeach

                                                        </option>
                                                                                                             
                                                    </select>                                                   
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">First Name</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="firstname" value="{{ old('firstname') }}"/>                                                    
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Last Name</label>
                                                <div class="col-md-6 col-xs-12">                                          
                                                    <input type="text" name="lastname" class="form-control" value="{{ old('lastname')}}"/>
                                                </div>
                                            </div>

                                             <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Other Name </label>
                                                <div class="col-md-6 col-xs-12">                                            
                                                    <input type="text" name="othername" class="form-control" value="{{ old('othername') }}"/>
                                                </div>
                                            </div>


                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Gender</label>
                                                <div class="col-md-6 col-xs-12">  
                                                    <select class="form-control select" name="gender">
                                                        
                                                      <option value="" >Select </option>

                                                            @foreach($genders as $gender)

                                                         
                                                         <option value="{{ $gender->id }}">{{ $gender->name }}</option>
                                                          @endforeach




                                                        </option>
                                                                                                             
                                                    </select>
                                                </div>                                            
                                            </div>


                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Marital Status</label>
                                                <div class="col-md-2">
                                                    <select class="form-control select" name="marital">
                                                        
                                                            @foreach($maritalstatutes as $mstatus)
 
                                                         <option value="{{ $mstatus->id }}">{{ $mstatus->name }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                                                                             
                                                   
                                                </div>                                            
                                            </div>


                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Company</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="company">
                                                        <option value="">Select </option>
                                                       
                                                          @foreach($companies as $company)

                                                         
                                                         <option value="{{ $company->id }}">{{ $company->coyname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div>                                          
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Branch</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="branch">
                                                       
                                                          @foreach($branches as $branch)

                                                         
                                                         <option value="{{ $branch->id }}">{{ $branch->branchname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>

                                                    <a href="{{url('createbranch')}}"  >Add Branch</a>
                                                     
                        </div>

                        
                                        
                                            </div>


                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Departments</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="department">
                                                       
                                                          @foreach($departments as $department)

                                                         
                                                         <option value="{{ $department->id }}">{{ $department->departmentname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div>                                          
                                            </div>


                                             <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Job Group</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="jobgroup">
                                                       
                                                          @foreach($jobgroups as $jobgroup)

                                                        
                                                         <option value="{{ $jobgroup->id }}">{{ $jobgroup->jobgroupname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div>                                          
                                            </div>


                                               <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Job Title</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="jobid">
                                                       
                                                          @foreach($jobs as $job)

                                                        
                                                         <option value="{{ $job->id }}">{{ $job->jobname }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div>                                          
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Employee Status</label>
                                                <div class="col-md-2">
                                                    <select class="form-control select" name="active">
                                                        
                                                            @foreach($employeestatuses as $estatus)
 
                                                         <option value="{{ $estatus->id }}">{{ $estatus->name }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                                                                             
                                                   
                                                </div>                                            
                                            </div>


                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Employement Status</label>
                                                <div class="col-md-2">
                                                    <select class="form-control select" name="employementstatus">

                                                        <option value="">Select</option>
                                                        
                                                            @foreach($prlemployeestatuses as $estatus)
 
                                                         <option value="{{ $estatus->id }}">{{ $estatus->employementdesc }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                                                                             
                                                   
                                                </div>                                            
                                            </div>


                                           
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">About employee</label>
                                                <div class="col-md-6 col-xs-12">                                            
                                                    <textarea class="form-control" rows="5" name="aboutme">{{old('aboutme')}}</textarea>
                                                    <span class="help-block">Any particular condition that the Administrator may require to know</span>
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

                                                        
                                                         <option value="{{ $payperiod->payperiodid }}">{{ $payperiod->payperioddesc }}</option>
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div>                                          
                                            </div>

                                                                                        
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Basic Salary</label>
                                                <div class="col-md-3 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="periodrate" value="{{old('periodrate')}}"/>                                                    
                                                </div>
                                            </div>

                                             <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Hourly Rate</label>
                                                <div class="col-md-3 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="hourlyrate" value="{{old('hourlyrate')}}"/>                                                    
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label"></label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                        
                                                    
                                                </div>
                                            </div>
                                            
                                        </div>                                        
                                        <div class="tab-pane" id="tab-third">
                                           <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Government ID</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="GovernmentID" value="{{ old('GovernmentID')}}"/>                                                    
                                                </div>
                                            </div>
 
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Work E-mail</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="email" class="form-control" value="{{old('email')}}"/>
                                                </div>
                                            </div>
                                            
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">personal E-mail</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="email2" class="form-control" value="{{old('email2')}}"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Phone</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="phone" class="form-control" value="{{old('phone')}}"/>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Cell Phone</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="phone2" class="form-control" value="{{old('phone2')}}"/>
                                                </div>
                                            </div>
                                            

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Address</label>
                                                <div class="col-md-6 col-xs-12">                                            
                                                    <textarea class="form-control" rows="5" name="address">{{old('address')}}</textarea>
                                                    
                                                </div>
                                            </div> 
                                            
                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Country</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="country">

                                                        <option value="">select</option>
                                                       
                                                         @foreach($countries as $country)

                                                      
                                                   <option value="{{ $country->id }}">{{ $country->countryname }}</option>
                                                   
                                                          @endforeach

                                               
                                                    </select>
                                                </div>                                            
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">City/Region</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="region">
                                                      <option value="">select</option>
                                                      @foreach($regions as $region)
                                                        <option value="{{$region->id}}">{{$region->regionname}}</option>
                                                        @endforeach
                                                        
                                                       
                                                                                                             
                                                    </select>
                                                </div>                                            
                                            </div>
                                          <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">District</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="district">
                                                        <option value="">select</option>
                                                        @foreach($districts as $district)
                                                       
                                                        <option value="{{$district->id}}">{{$district->districtname}}</option>
                                                         
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                                </div>                                            
                                            </div>


                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Zip Code</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="zip" class="form-control" value="{{old('zip')}}"/>
                                                </div>
                                            </div>
                                            
                                        </div>

                                        <div class="tab-pane" id="tab-fourth">
                                         Fourth



                                        </div>

                                         <div class="tab-pane" id="tab-fifth">
                                         Fifth

                                        </div>

                                         <div class="tab-pane" id="tab-sixth">
                                        Sixth

                                        </div>

                                         <div class="tab-pane" id="tab-seventh">
                                         
                                          <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Spouse Name</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="SpouseName" value="{{ old('SpouseName')}}"/>                                                    
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Spouse Phone</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="SpousePhone" value="{{ old('SpousePhone')}}"/>                                                    
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Spouse Email</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="SpouseEmail" value="{{ old('SpouseEmail')}}"/>                                                    
                                                </div>
                                            </div>

                                          <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Spouse Address</label>
                                                <div class="col-md-6 col-xs-12">                                            
                                                    <textarea class="form-control" rows="5" name="SpouseAddress">{{ old('SpouseAddress')}}</textarea>
                                                    
                                                </div>
                                            </div> 

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Next of Kin Name</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="NextOfKinName" value="{{ old('NextOfKinName')}}"/>                                                    
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Next of Kin Phone</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="NextOfKinPhone" value="{{ old('NextOfKinPhone')}}"/>                                                    
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Next of Kin Email</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" class="form-control" name="NextOfKinEmail" value="{{ old('NextOfKinEmail')}}"/>                                                    
                                                </div>
                                            </div>

                                          <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Next of Kin Address</label>
                                                <div class="col-md-6 col-xs-12">                                            
                                                    <textarea class="form-control" rows="5" name="NextOfKinAdress">{{ old('NextOfKinAdress')}}</textarea>
                                                    
                                                </div>
                                            </div>     


                                        </div>

                                         <div class="tab-pane" id="tab-eight">
                                        
                                       Membership

                                          <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Social Security Scheme</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="sss">
                                                        @foreach($sss as $ss)
                                                      
                                                        <option value="{{$ss->id}}">{{$ss->penname}}</option>
                                                         
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                                </div>                                            
                                            </div>

                                       


                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Social Security Number</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="ssnumber" class="form-control" value="{{old('ssnumber')}}"/>
                                                </div>
                                            </div>

                                             <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Health Insuarance</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="health">
                                                        @foreach($healths as $health)
                                                       
                                                        <option value="{{$health->id}}">{{$health->name}}</option>
                                                         
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                                </div>                                            
                                            </div>

                                      


                                              <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Health Insuarance Number</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="phnumber" class="form-control" value="{{old('phnumber')}}"/>
                                                </div>
                                            </div>


                                             <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Servings Number</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="hdmfnumber" class="form-control" value="{{old('hdmfnumber')}}"/>
                                                </div>
                                            </div>



                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Deduct Social Security Scheme?</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="isPension">
                                                        @foreach($yesornos as $ss)
                                                       
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                         
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                                </div>                                            
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Deduct Tax?</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="isTaxed">
                                                        @foreach($yesornos  as $ss)
                                                       
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                        
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                                </div>                                            
                                            </div>

                                            <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Deduct Workers Union?</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="isHdmf">
                                                        @foreach($yesornos as $ss)
                                                       
                                                        <option value="{{$ss->id}}">{{$ss->name}}</option>
                                                        
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                                </div>                                            
                                            </div>

                                        </div>


                                         <div class="tab-pane" id="tab-eleventh">
                                        
                                        Bank Info 

                                          <div class="form-group">                                        
                                                <label class="col-md-3 col-xs-12 control-label">Bank</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="bank">
                                                        @foreach($banks as $bank)
                                                     
                                                        <option value="{{$bank->id}}">{{$bank->bankname}}</option>
                                                        
                                                        @endforeach
                                                                                                                                                                   
                                                    </select>
                                                </div>                                            
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Account Name</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="AccountName" class="form-control" value="{{old('AccountName')}}"/>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Bank Account Number</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="text" name="atmnumber" class="form-control" value="{{old('atmnumber')}}"/>
                                                </div>
                                            </div>



                                        </div>

                                         <div class="tab-pane" id="tab-ninth">
                                        
                                       <div class="form-group">
                                                <label class="col-md-3 col-xs-12 control-label">Picture</label>
                                                <div class="col-md-6 col-xs-12">                                                                                                                                                        
                                                    <input type="file" class="form-control" name="picture" value="{{ old('firstname') }}"/>                                                    
                                                </div>
                                            </div>
                                        </div>


                                            <div class="tab-pane" id="tab-tenth">
                                   
                                                      
                                         <div class="form-group">
                                            <label class="col-md-3 control-label">Date of Birth</label>
                                            <div class="col-md-5">
                                                <input type="text" name="birthdate" class="form-control datepicker" value="{{old('birthdate')}}">
                                            </div>
                                        </div>

                                         
                                         
                                         <div class="form-group">
                                            <label class="col-md-3 control-label">Hired Date</label>
                                            <div class="col-md-5">
                                                <input type="text" name="hiredate" class="form-control datepicker" value="{{old('hiredate')}}">
                                            </div>
                                        </div>
                                    
                                         
                                         <div class="form-group">
                                            <label class="col-md-3 control-label">Probation End Date</label>
                                            <div class="col-md-5">
                                                <input type="text" name="probdate" class="form-control datepicker" value="{{old('probdate')}}">
                                            </div>
                                        </div>
                                   
                                       
                                         
                                         <div class="form-group">
                                            <label class="col-md-3 control-label">End of Contract</label>
                                            <div class="col-md-5">
                                                <input type="text" name="terminatedate" class="form-control datepicker" value="{{old('terminatedate')}}">
                                            </div>
                                        </div>

                                         <div class="form-group">
                                            <label class="col-md-3 control-label">Retired Date</label>
                                            <div class="col-md-5">
                                                <input type="text" name="retireddate" class="form-control datepicker" value="{{old('retireddate')}}">
                                            </div>
                                        </div>
                               
                               
                                        
                                         <div class="form-group">               
                                                <label class="col-md-3 col-xs-12 control-label">End Of Contract Reason</label>
                                                <div class="col-md-5">
                                                    <select class="form-control select" name="terminatereason">
                                                              <option selected  value=''>Select</option>                                                

                                                       @foreach($endofcontractreasons as $ereason)

                                                         <option value="{{ $ereason->id }}">{{ $ereason->name }}</option>
                                                          @endforeach

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