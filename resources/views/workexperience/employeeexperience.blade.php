 <div class="panel-heading">
                    <i class="fa fa-workexperience"> <a href="{{url('createworkexperience')}}">Add New workexperience </a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($workexperiences->isEmpty())
                        <p>There are currently no workexperiences.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Company</th>
                                    <th>Employee</th>
                                    <th>Job Title </th>
                                    <th>Start Date</th>
                                    <th>End Date</th>
                                    
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($workexperiences as $workexperience)
                                <tr>
                                   
                                   
                                    <td>
                                  {{ $workexperience->id}}
                                   
                                    </td>
                                   
                                    <td>{{ $workexperience->companyname }}</td>
                                    <td>
                                     @foreach ($employees as $employee)
                                        @if ($employee->employeeid == $workexperience->employeeid)
                                            {{ $employee->firstname }} {{$employee->lastname}}
                                        @endif
                                    @endforeach</td>

                                     <td>
                                       {{$workexperience->jobtitle}} 
                                    </td>
                                   
                                    <td>
                                       {{$workexperience->startdate}} 
                                    </td>
                                    <td>
                                        {{$workexperience->enddate }}
                                    </td>
                                     <td>
                                        <a href="{{ url('showworkexperience/'.$workexperience->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editworkexperience/'.$workexperience->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deleteworkexperience/'.$workexperience->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                       
                    @endif
                </div>