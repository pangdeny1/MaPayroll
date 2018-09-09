@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $job->id }} - {{ $job->jobname }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="job-info">
                        <p><b>Job Description :: </b>{{ $job->jobdesc }}</p>
                      
                        <p>
                        @if ($job->status === 'Open')
                            Status: <span class="label label-success">{{ $job->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $job->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $job->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection