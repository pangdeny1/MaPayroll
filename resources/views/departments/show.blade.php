@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $department->id }} - {{ $department->departmentname }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="department-info">
                        <p><b>department location :: </b>{{ $department->departmentlocation }}</p>
                      
                        <p>
                        @if ($department->status === 'Open')
                            Status: <span class="label label-success">{{ $department->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $department->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $department->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection