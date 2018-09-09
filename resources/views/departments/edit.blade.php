@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/updatedepartment/'.$department->id) }}">
                        {!! csrf_field() !!}

                        <div class="form-group{{ $errors->has('departmentname') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">department</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="departmentname" value="{{ $department->departmentname }}">

                                @if ($errors->has('departmentname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('departmentname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('departmentlocation') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">department Location</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="departmentlocation" value="{{ $department->departmentlocation}}">

                                @if ($errors->has('departmentlocation'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('departmentlocation') }}</strong>
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