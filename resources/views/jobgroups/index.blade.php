@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-jobgroup"> <a href="{{url('createjobgroup')}}">Add New jobgroup  Group</a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($jobgroups->isEmpty())
                        <p>There are currently no jobgroups.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                   
                                    <th>jobgroup Name</th>
                                    <th>jobgroup Desc</th>
                                    <th>Priority</th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($jobgroups as $jobgroup)
                                <tr>
                                  
                                    <td>
                                        <a href="{{ url('jobgroup/'. $jobgroup->id) }}">
                                            #{{ $jobgroup->id }} - {{ $jobgroup->jobgroupname }}
                                        </a>
                                    </td>
                                    <td>
                                 
                                  {{ $jobgroup->jobgroupdesc }}
                                    </td>
                                    <td>{{$jobgroup->level}}</td>
                                     <td>
                                        <a href="{{ url('showjobgroup/'.$jobgroup->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editjobgroup/'.$jobgroup->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deletejobgroup/'.$jobgroup->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                        {{ $jobgroups->render() }}
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection