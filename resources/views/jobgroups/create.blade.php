@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/addjobgroup') }}">
                        {!! csrf_field() !!}

                        <div class="form-group{{ $errors->has('jobgroupname') ? ' has-error' : '' }}">
                            <label for="jobgroupname" class="col-md-4 control-label">Job jobgroupname</label>

                            <div class="col-md-6">
                                <input id="jobgroupname" type="text" class="form-control" name="jobgroupname" value="{{ old('jobgroupname') }}">

                                @if ($errors->has('jobgroupname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('jobgroupname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        

                      

                        <div class="form-group{{ $errors->has('jobgroupdesc') ? ' has-error' : '' }}">
                            <label for="jobgroupdesc" class="col-md-4 control-label">Job Description</label>

                            <div class="col-md-6">
                                <textarea rows="10" id="jobgroupdesc" class="form-control" name="jobgroupdesc">{{ old('jobgroupdesc') }}</textarea>

                                @if ($errors->has('jobgroupdesc'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('jobgroupdesc') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>
                       <div class="form-group{{ $errors->has('level') ? ' has-error' : '' }}">
                            <label for="level" class="col-md-4 control-label">Priority</label>

                            <div class="col-md-6">
                                <input id="level" type="number" class="form-control" name="level" value="{{ old('level') }}">

                                @if ($errors->has('level'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('level') }}</strong>
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