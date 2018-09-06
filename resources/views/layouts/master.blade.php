<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Begin SEO tag -->
    <title>{{ config('app.name', 'HomeVerge') }}</title>

    <!-- FAVICONS -->
    <link rel="apple-touch-icon-precomposed"
          sizes="144x144"
          href="{{ asset("themes/looper/assets/apple-touch-icon.png") }}"
    >
    <link rel="shortcut icon" href="assets/favicon.ico">
    <meta name="theme-color" content="#3063A0">

    <script src="{{ asset("themes/looper/assets/vendor/pace/pace.min.js") }}"></script>

    <!-- BEGIN BASE STYLES -->
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/pace/pace.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/bootstrap/css/bootstrap.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/open-iconic/css/open-iconic-bootstrap.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/font-awesome/css/fontawesome-all.min.css") }}">

    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/stylesheets/main.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/stylesheets/custom.css") }}">
</head>
<body>
<!-- .app -->
<div id="app">
    <!-- .app-header -->
    @include('layouts.app_header')

    <!-- .app-aside -->
    @include('layouts.app_aside')

    <!-- .app-main -->
    <main class="app-main">
        @yield("content")
    </main>
    
</div>

<!-- BEGIN BASE JS -->
<script src="{{ asset("themes/looper/assets/vendor/jquery/jquery.min.js") }}"></script>
<script src="{{ asset("themes/looper/assets/vendor/bootstrap/js/popper.min.js") }}"></script>
<script src="{{ asset("themes/looper/assets/vendor/bootstrap/js/bootstrap.min.js") }}"></script>

<!-- BEGIN PLUGINS JS -->
<script src="{{ asset("themes/looper/assets/vendor/stacked-menu/stacked-menu.min.js") }}"></script>
<script src="{{ asset("themes/looper/assets/vendor/perfect-scrollbar/perfect-scrollbar.min.js") }}"></script>
<script src="{{ asset("themes/looper/assets/vendor/flatpickr/flatpickr.min.js") }}"></script>
<script src="{{ asset("themes/looper/assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js") }}"></script>
<script src="{{ asset("themes/looper/assets/vendor/chart.js/Chart.min.js") }}"></script>

<!-- VUE.JS -->
<script src="{{ asset("js/app.js") }}"></script>

<!-- BEGIN THEME JS -->
<script src="{{ asset("themes/looper/assets/javascript/main.min.js") }}"></script>

<!-- BEGIN PAGE LEVEL JS -->
<script src="{{ asset("themes/looper/assets/javascript/pages/easypiechart-demo.js") }}"></script>
<script src="{{ asset("themes/looper/assets/javascript/pages/dashboard-demo.js") }}"></script>



<script>
    $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip();
    })
</script>
</body>
</html>