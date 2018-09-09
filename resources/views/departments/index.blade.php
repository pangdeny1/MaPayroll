@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-department"> <a href="{{url('createdepartment')}}">Add New department Title</a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($departments->isEmpty())
                        <p>There are currently no departments.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    
                                    <th>department Name</th>
                                    <th>Location</th>
                                    <th>Last Updated</th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($departments as $department)
                                <tr>
                                
                                    <td>
                                        <a href="{{ url('department/'. $department->id) }}">
                                            #{{ $department->id }} - {{ $department->departmentname }}
                                        </a>
                                    </td>
                                   <td>{{ $department->departmentlocation }}</td>
                                    <td>{{ $department->updated_at }}</td>
                                     <td>
                                        <a href="{{ url('showdepartment/'.$department->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editdepartment/'.$department->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deletedepartment/'.$department->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                        {{ $departments->render() }}
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection