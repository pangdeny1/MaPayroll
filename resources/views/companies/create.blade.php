@extends("layouts.master")

@section("content")
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">{{$pagetitle}}</div>

                <div class="panel-body">
                    @include('includes.flash');

                    <form class="form-horizontal" role="form" method="POST" action="{{ url('/addcompany') }}">
                        {!! csrf_field() !!}


                        <div class="form-group{{ $errors->has('companycode') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Companycode</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="companycode" value="{{ old('companycode') }}">

                                @if ($errors->has('companycode'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('companycode') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('companyname') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Company Name</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="companyname" value="{{ old('companyname') }}">

                                @if ($errors->has('companyname'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('companyname') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                         <div class="form-group{{ $errors->has('companynumber') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Company number</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="companynumber" value="{{ old('companynumber') }}">

                                @if ($errors->has('companynumber'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('companynumber') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('companytaxnumber') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Company TIN</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="companytaxnumber" value="{{ old('companytaxnumber') }}">

                                @if ($errors->has('companytaxnumber'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('companytaxnumber') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>


                        <div class="form-group{{ $errors->has('companyaddress') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Office Address </label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="companyaddress" value="{{ old('companyaddress') }}">

                                @if ($errors->has('companyaddress'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('companyaddress') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                       <div class="form-group{{ $errors->has('companytelephone') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label"> Company Telephone</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="companytelephone" value="{{ old('companytelephone') }}">

                                @if ($errors->has('companytelephone'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('companytelephone') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('companyfax') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Company Fax</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="companyfax" value="{{ old('companyfax') }}">

                                @if ($errors->has('companyfax'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('companyfax') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="form-group{{ $errors->has('companyemail') ? ' has-error' : '' }}">
                            <label for="title" class="col-md-4 control-label">Company Email</label>

                            <div class="col-md-6">
                                <input id="title" type="text" class="form-control" name="companyemail" value="{{ old('companyemail') }}">

                                @if ($errors->has('companyemail'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('companyemail') }}</strong>
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