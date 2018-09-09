 @extends('layouts.pagelayout')

@section('template_title')
  Create New User
@endsection

@section('template_fastload_css')
@endsection

@section('content')
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $branch->id }} - {{ $branch->branchname }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="branch-info">
                        <p><b>branch Location :: </b>{{ $branch->location }}</p>
                      
                        <p>
                        @if ($branch->status === 'Open')
                            Status: <span class="label label-success">{{ $branch->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $branch->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $branch->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection