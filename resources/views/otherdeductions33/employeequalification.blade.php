<div class="panel-heading">
                    <i class="fa fa-employeequalification"> <a href="{{url('createemployeequalification')}}">Add New employee Qualification </a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($employeequalifications->isEmpty())
                        <p>There are currently no employeequalifications.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Employee</th>
                                    <th>Qualification</th>
                                    <th>Level</th>
                                    <th>Institute</th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($employeequalifications as $employeequalification)
                                <tr>
                                   
                                    <td>
                                      @foreach ($employees as $employee)
                                        @if ($employee->employeeid == $employeequalification->employeeid)
                                            {{ $employee->firstname }} {{$employee->lastname}}
                                        @endif
                                    @endforeach
                                    </td>
                                    <td>
                                       @foreach ($qualifications as $qualification)
                                        @if ($qualification->id == $employeequalification->qualificationid)
                                            {{ $qualification->qualificationname }}
                                        @endif
                                    @endforeach
                                    </td>
                                    <td>
                                  @foreach ($levels as $level)
                                        @if ($level->id == $employeequalification->levelid)
                                            {{ $level->qlevelname }}
                                        @endif
                                    @endforeach
                                  
                                    </td>
                                    <td>@foreach ($institutions as $institution)
                                        @if ($institution->id == $employeequalification->institutionid)
                                            {{ $institution->institutename }}
                                        @endif
                                    @endforeach</td>
                                    <td>{{ $employeequalification->datefrom }}</td>
                                    <td>{{ $employeequalification->dateto }}</td>
                                     <td>
                                        <a href="{{ url('showemployeequalification/'.$employeequalification->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editemployeequalification/'.$employeequalification->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deleteemployeequalification/'.$employeequalification->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                       
                    @endif
                </div>