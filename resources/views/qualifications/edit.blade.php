@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/updatequalification/'.$qualification->id) }}">
                        {!! csrf_field() !!}


                       

 
                            <div class="form-group{{ $errors->has('QualificationName') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Qualification Name</label>

                            <div class="col-md-6">
                                <input type="text" name="QualificationName" class="form-control" value="{{$qualification->qualificationname}}">

                                @if ($errors->has('QualificationName'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('QualificationName') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-6 col-md-offset-4">
                                <button type="submit" class="btn btn-primary">
                                    <i class="fa fa-btn fa-ticket"></i> Save
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            @endsection