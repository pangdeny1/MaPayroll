@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/updatedependant/'.$dependant->id) }}">
                        {!! csrf_field() !!}

                         <div class="form-group{{ $errors->has('FullName') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Full Name</label>

                            <div class="col-md-6">
                                <input type="text" name="FullName" class="form-control" value="{{$dependant->fullname}}">

                                @if ($errors->has('FullName'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('FullName') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('employee') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">employees</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="employee">

                                                       <option value=""> Select employee </option>
                                                          @foreach($employees as $employee)

                                                           @if($employee->employeeid==$dependant->employeeid)
                                                        
                                                         <option selected value="{{ $dependant->employeeid }}">{{ $employee->firstname }} {{ $employee->lastname }}</option>
                                                        @else
                                                         <option value="{{ $employee->employeeid }}">{{ $employee->firstname }} {{ $employee->lastname }}</option>
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


                             <div class="form-group{{ $errors->has('DependantType') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">dependanttype  </label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="DependantType">

                                                       <option value=""> Select  </option>
                                                          @foreach($dependanttypes as $dependanttype)
                                                            
                                                            @if($dependanttype->id==$dependant->deptypeid)
                                                        
                                                         <option selected value="{{ $dependant->deptypeid }}">{{$dependanttype->dependanttype}}</option>
                                                        @else
                                                         <option value="{{ $dependanttype->id }}">{{ $dependanttype->dependanttype}}</option>
                                                          @endif 
                                                         
                                                         
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('DependantType'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DependantType') }}</strong>
                                    </span>
                                @endif
                            </div> 

                            <div class="form-group{{ $errors->has('Gender') ? ' has-error' : '' }}">                                      
                                                <label for="title" class="col-md-4 control-label">Gender</label>
                                                <div class="col-md-6">
                                                    <select class="form-control select" name="Gender">

                                                       <option value=""> Select gender </option>
                                                          @foreach($genders as $gender)

                                                          @if($gender->id==$dependant->sex)
                                                        
                                                         <option selected value="{{ $dependant->sex }}">{{$gender->name}}</option>
                                                        @else
                                                        <option value="{{ $gender->id }}">{{ $gender->name }}</option>
                                                          @endif 
                                                          @endforeach
                                                                                                             
                                                    </select>
                                                </div> 
                                                @if ($errors->has('Gender'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Gender') }}</strong>
                                    </span>
                                @endif
                            </div> 
                             
                            
                             
                            <div class="form-group{{ $errors->has('DOB') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Date of Birth</label>

                            <div class="col-md-6">
                                <input type="text" name="DOB" class="form-control datepicker" value="{{$dependant->dob}}">

                                @if ($errors->has('DOB'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('DOB') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('Phone') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Phone</label>

                            <div class="col-md-6">
                                <input type="text" name="Phone" class="form-control" value="{{$dependant->phone}}">

                                @if ($errors->has('Phone'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Phone') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('Email') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Email</label>

                            <div class="col-md-6">
                                <input type="text" name="Email" class="form-control"  value="{{$dependant->phone}}">

                                @if ($errors->has('Email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('Email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('NextOfKin') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Is Next of Kin ?</label>

                            <div class="col-md-6">
                               
 <label class="check"><input type="checkbox" class="icheckbox" name="NextOfKin" value=1 @if($dependant->nextofkeen==1) {{"checked='checked'"}} @endif /> Tick if is Next of Kin</label>
                                @if ($errors->has('NextOfKin'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('NextOfKin') }}</strong>
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