<div class="panel-heading">
                    <i class="fa fa-dependant"> <a href="{{url('createdependant/'.$employee->employeeid)}}">Add New dependant </a></i>
                </div>
                <div class="panel-body">
                     @include('includes.flash');
                    @if ($dependants->isEmpty())
                        <p>There are currently no dependants.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Dependant</th>
                                    <th>Employee</th>
                                    <th>Relationship</th>
                                    <th>Is Next of Kin</th>
                                    <th> Date of Birth </th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($dependants as $dependant)
                                <tr>
                                   
                                   
                                    <td>
                                  {{ $dependant->id}}
                                   
                                    </td>
                                   
                                    <td>{{ $dependant->fullname }}</td>
                                    <td>
                                     @foreach ($employees as $employee)
                                        @if ($employee->employeeid == $dependant->employeeid)
                                            {{ $employee->firstname }} {{$employee->lastname}}
                                        @endif
                                    @endforeach</td>
                                    <td>

                                    @foreach ($dependanttypes as $dependanttype)
                                        @if ($dependanttype->id == $dependant->deptypeid )
                                            {{ $dependanttype->dependanttype }} 
                                        @endif
                                    @endforeach
                                </td>
                                    <td>@if($dependant->nextofkeen==1)
                                                           {{'Yes'}}
                                                  @else
                                                         {{'No'}} 
                                                  @endif
                                    </td>
                                    <td>
                                        {{ $dependant->dob }}
                                    </td>
                                     <td>
                                        <a href="{{ url('showdependant/'.$dependant->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editdependant/'.$dependant->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deletedependant/'.$dependant->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                       
                    @endif
                </div>