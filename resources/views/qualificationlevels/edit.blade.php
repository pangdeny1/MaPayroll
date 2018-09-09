@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/updatequalificationlevel/'.$qualificationlevels->id) }}">
                        {!! csrf_field() !!}


                       

 
                            <div class="form-group{{ $errors->has('QlevelName') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Qualification Level Name</label>

                            <div class="col-md-6">
                                <input type="text" name="QlevelName" class="form-control" value="{{$qualificationlevels->qlevelname}}">

                                @if ($errors->has('QlevelName'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('QlevelName') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('QlevelDesc') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Description</label>

                            <div class="col-md-6">
                                <input type="text" name="QlevelDesc" class="form-control" value="{{$qualificationlevels->qleveldesc}}">

                                @if ($errors->has('QlevelDesc'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('QlevelDesc') }}</strong>
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