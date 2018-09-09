@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">
                    #{{ $institute->id }} - {{ $institute->institutename }}
                </div>

                <div class="panel-body">
                    @include('includes.flash')

                    <div class="institute-info">
                        <p><b>institute Description :: </b>{{ $institute->institutedesc }}</p>
                      
                        <p>
                        @if ($institute->status === 'Open')
                            Status: <span class="label label-success">{{ $institute->status }}</span>
                        @else
                            Status: <span class="label label-danger">{{ $institute->status }}</span>
                        @endif
                        </p>
                        <p>Created on: {{ $institute->created_at->diffForHumans() }}</p>
                    </div>

                    <hr>


            </div>
        </div>
    </div>
@endsection