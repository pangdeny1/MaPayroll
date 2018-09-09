@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $qualification->id }} - {{ $qualification->qualificationname }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="qualification-info">
                        <p><b>qualification Description :: </b>{{ $qualification->qualificationdesc }}</p>
                      
                        <p>
                        @if ($qualification->status === 'Open')
                            Status: <span class="label label-success">{{ $qualification->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $qualification->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $qualification->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection