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
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/addbranch') }}">
                        {!! csrf_field() !!}

                        <div class="form-group{{ $errors->has('branchname') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Branch</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="branchname" value="{{ old('branchname') }}">

                                @if ($errors->has('branchname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('branchname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('branclocation') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Branch Location</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="branclocation" value="{{ old('branclocation')}}">

                                @if ($errors->has('branclocation'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('branclocation') }}</strong>
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