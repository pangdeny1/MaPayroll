<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- End Required meta tags -->
    <title>{{ config('app.name', 'Laravel') }}</title>

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
<main class="auth">
    <form method="POST" action="{{ route('password.email') }}" class="auth-form auth-form-reflow">
        @csrf
        <div class="text-center mb-4">
            <div class="mb-4">
                <img class="rounded" src="{{ asset("themes/looper/assets/apple-touch-icon.png") }}" alt="" height="72">
            </div>
            <h1 class="h3"> Reset Your Password </h1>
        </div>
        @if (session('status'))
            <div class="alert alert-success">
                {{ session('status') }}
            </div>
        @endif
        <p class="mb-4">
            Tempora iusto officia magnam fugiat sequi aliquam cum consectetur aperiam beatae, rerum obcaecati ea.
        </p>
        <!-- .form-group -->
        <div class="form-group mb-4">
            <label class="d-block text-left" for="email">
                {{ __('Email Address') }}
            </label>
            <input type="email"
                   name="email"
                   id="email"
                   class="form-control {{ $errors->has('email') ? 'is-invalid' : '' }} form-control-lg"
                   value="{{ old('email') }}"
                   required=""
                   autofocus=""
            >
            @if ($errors->has('email'))
                <span class="invalid-feedback">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
            @endif
            <p class="text-muted">
                <small>We'll send password reset link to your email.</small>
            </p>
        </div>
        <!-- actions -->
        <div class="d-block d-md-inline-block mb-2">
            <button class="btn btn-lg btn-block btn-primary" type="submit">
                {{ __('Reset password') }}
            </button>
        </div>
        <div class="d-block d-md-inline-block">
            <a href="{{ route("login") }}" class="btn btn-lg btn-block btn-light">
                Return to signin
            </a>
        </div>
    </form>

    <footer class="auth-footer mt-5">
        &copy; {{ date("Y") }} All Rights Reserved. Loper is Responsive Admin Theme build on top of latest Bootstrap 4.
        <a href="#">Privacy</a> and
        <a href="#">Terms</a>
    </footer>
</main>

<!-- BEGIN BASE JS -->
<script src="{{ asset("themes/looper/assets/vendor/jquery/jquery.min.js") }}"></script>
<script src="{{ asset("themes/looper/assets/vendor/bootstrap/js/popper.min.js") }}"></script>
<script src="{{ asset("themes/looper/assets/vendor/bootstrap/js/bootstrap.min.js") }}"></script>

<!-- BEGIN THEME JS -->
<script src="{{ asset("themes/looper/assets/javascript/main.min.js") }}"></script>
</body>
</html>
