@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $loan->id }} - {{ $loan->loanname }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="loan-info">
                        <p><b>loan Description :: </b>{{ $loan->loandesc }}</p>
                      
                        <p>
                        @if ($loan->status === 'Open')
                            Status: <span class="label label-success">{{ $loan->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $loan->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $loan->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection