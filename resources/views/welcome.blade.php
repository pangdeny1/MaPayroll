<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- End Required meta tags -->
    <title>{{ config('app.name', 'Homeveg') }}</title>

    <!-- Favicons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/apple-touch-icon.png">
    <link rel="shortcut icon" href="assets/favicon.ico">
    <meta name="theme-color" content="#3063A0">

    <!-- BEGIN BASE STYLES -->
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/bootstrap/css/bootstrap.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/font-awesome/css/fontawesome-all.min.css") }}">

    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/stylesheets/main.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/stylesheets/custom.css") }}">
</head>
<body>
<!-- .auth -->
<main class="auth auth-floated">
    <!-- form -->
    <form class="auth-form" method="POST" action="{{ route('login') }}">
        @csrf
        <div class="mb-4">
            <div class="mb-3">
                <img class="rounded" src="{{ asset("themes/looper/assets/homev_logo.jpg") }}" alt="" height="72">
            </div>
            <h1 class="h3"> Sign In </h1>
        </div>
        

        <div class="form-group mb-4">
            <label for="email" class="d-block text-left">Email address</label>
            <input id="email"
                   type="email"
                   class="form-control form-control-lg {{ $errors->has('email') ? 'is-invalid' : '' }}"
                   name="email"
                   value="{{ old('email') }}"
                   required
                   autofocus
            >
            @if ($errors->has('email'))
                <span class="invalid-feedback">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
        </div>

        <div class="form-group mb-4">
            <label for="password" class="d-block text-left">
                Password
                <a href="{{ route('password.request') }}" class="float-right small">I forgot password</a>
            </label>
            <input type="password"
                   name="password"
                   id="password"
                   class="form-control form-control-lg {{ $errors->has('password') ? 'is-invalid' : '' }}"
                   required
            >
            @if ($errors->has('password'))
                <span class="invalid-feedback">
                    <strong>{{ $errors->first('password') }}</strong>
                </span>
            @endif
        </div>

        <div class="form-group mb-4">
            <button class="btn btn-lg btn-primary btn-block" type="submit">Sign In</button>
        </div>

        <div class="form-group text-left">
            <div class="custom-control custom-control-inline custom-checkbox">
                <input type="checkbox"
                       class="custom-control-input"
                       name="remember"
                       id="remember"
                      {{ old('remember') ? 'checked' : '' }}
                >
                <label class="custom-control-label" for="remember">
                    Keep me sign in
                </label>
            </div>
        </div>

        <!-- /recovery links -->
        <p class="py-3">
            <a href="#" class="link">Forgot Username?</a>
            <span class="mx-2">·</span>
            <a href="{{ route('password.request') }}" class="link">
                {{ __('Forgot Your Password?') }}
            </a>
        </p>
        
        <!-- copyright -->
        <p class="px-3 text-muted text-center">
             &copy; 2018-<?php echo date("Y"); ?> Ardoa Tanzania ,All Rights Reserved.
            <a href="#">Privacy</a> and <a href="#">Terms</a>
        </p>
    </form>

    <!-- .auth-announcement -->
    <section id="announcement" class="auth-announcement" style="background-image: url({{ asset("themes/looper/assets/images/illustration/img-1.png") }});">
        <div class="announcement-body">
            <h2 class="announcement-title"> How to Prepare for an Automated Future </h2>
            <a href="#" class="btn btn-warning">
                <i class="fa fa-fw fa-angle-right"></i> Check Out Now
            </a>
        </div>
    </section>
</main>
<!-- /.auth -->
<!-- BEGIN PLUGINS JS -->
<script src="{{ asset("themes/looper/assets/vendor/particles.js/particles.min.js") }}"></script>
<script>
    /* particlesJS.load(@dom-id, @path-json, @callback (optional)); */
    particlesJS.load('announcement', 'themes/looper/assets/javascript/particles.json');
</script>
<!-- END PLUGINS JS -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-116692175-1"></script>
<script>
    window.dataLayer = window.dataLayer || [];

    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'UA-116692175-1');
</script>
</body>
</html>


