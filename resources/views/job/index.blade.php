@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-job"> <a href="{{url('addjob')}}">Add New Job Title</a></i>
                </div>

                <div class="panel-body">
                     @include('includes.flash');
                    @if ($jobs->isEmpty())
                        <p>There are currently no jobs.</p>
                    @else
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Job Group</th>
                                    <th>Job Name</th>
                                    <th>Status</th>
                                    <th>Last Updated</th>
                                    <th style="text-align:center" colspan="2">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                            @foreach ($jobs as $job)
                                <tr>
                                    <td>

                                        @foreach ($jobgroups as $jobgroup)
                                        @if ($jobgroup->id == $job->jobgroup)
                                            {{ $jobgroup->jobgroupname }}
                                        @endif
                                    @endforeach
                                    
                                    </td>
                                    <td>
                                        <a href="{{ url('job/'. $job->id) }}">
                                            #{{ $job->id }} - {{ $job->jobname }}
                                        </a>
                                    </td>
                                    <td>
                                 
                                  
                                    </td>
                                    <td>{{ $job->updated_at }}</td>
                                     <td>
                                        <a href="{{ url('showjob/'.$job->id) }}" class="btn btn-primary">View</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('editjob/'.$job->id) }}" class="btn btn-primary">Edit</a>
                                    </td>
                                    <td>
                                        <a href="{{ url('deletejob/'.$job->id) }}" class="btn btn-danger" onclick="return confirm('Are you sure you want to Delete this record')" >Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>

                        {{ $jobs->render() }}
                    @endif
                </div>
            </div>
        </div>
    </div>
@endsection