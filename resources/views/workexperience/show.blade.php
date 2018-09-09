@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $dependant->id }} - {{ $dependant->fullname }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="dependant-info">
                        <p><b>dependant Description :: </b>{{ $dependant->dependantdesc }}</p>
                      
                        <p>
                        @if ($dependant->status === 'Open')
                            Status: <span class="label label-success">{{ $dependant->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $dependant->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $dependant->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection