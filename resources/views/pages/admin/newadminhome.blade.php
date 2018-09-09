@extends('layouts.pagelayout')

@section('template_title')
    Welcome {{ Auth::user()->name }}
@endsection

@section('head')
@endsection

@section('content')
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1">

                @include('panels.welcome-admin')


            </div>
        </div>
    </div>

@endsection