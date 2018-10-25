<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <!-- Begin SEO tag -->
    <title>{{ config('app.name', 'Mapayroll') }}</title>

    <!-- FAVICONS -->
    <link rel="apple-touch-icon-precomposed"
          sizes="144x144"
          href="{{ asset("themes/looper/assets/apple-touch-icon.png") }}"
    >
    <link rel="shortcut icon" href="assets/favicon.ico">
    <meta name="theme-color" content="#3063A0">


    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/font-awesome/css/fontawesome-all.min.css") }}">

    <!-- BEGIN THEME STYLES -->
    
    
     <script src="{{ asset("themes/looper/assets/vendor/pace/pace.min.js") }}"></script>
    <!-- BEGIN BASE STYLES -->
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/pace/pace.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/bootstrap/css/bootstrap.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/open-iconic/css/open-iconic-bootstrap.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/fontawesome/css/fontawesome.all.css") }}">
    <!-- END BASE STYLES -->
    <!-- BEGIN PLUGINS STYLES -->
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/flatpickr/flatpickr.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/vendor/nouislider/nouislider.min.css") }}">
    <!-- END PLUGINS STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/stylesheets/main.min.css") }}">
    <link rel="stylesheet" href="{{ asset("themes/looper/assets/stylesheets/custom.css") }}">
    <!-- END THEME STYLES -->
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



<script src="{{ asset("themes/looper/assets/vendor/jquery/jquery.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/bootstrap/js/popper.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/bootstrap/js/bootstrap.min.js") }}"></script>
    <!-- END BASE JS -->
    <!-- BEGIN PLUGINS JS -->
    <script src="{{ asset("themes/looper/assets/vendor/stacked-menu/stacked-menu.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/perfect-scrollbar/perfect-scrollbar.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/masonry-layout/masonry.pkgd.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/flatpickr/flatpickr.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/nouislider/wNumb.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/nouislider/nouislider.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-file-upload/js/vendor/jquery.ui.widget.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-load-image/load-image.all.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-canvas-to-blob/canvas-to-blob.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-file-upload/js/jquery.iframe-transport.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-file-upload/js/jquery.fileupload.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-file-upload/js/jquery.fileupload-process.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-file-upload/js/jquery.fileupload-image.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-file-upload/js/jquery.fileupload-audio.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-file-upload/js/jquery.fileupload-video.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/blueimp-file-upload/js/jquery.fileupload-validate.min.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js") }}"></script>
    <!-- END PLUGINS JS -->
    <!-- BEGIN THEME JS -->
    <script src="{{ asset("themes/looper/assets/javascript/main.min.js") }}"></script>
    <!-- END THEME JS -->
    <!-- BEGIN PAGE LEVEL JS -->
    <script src="{{ asset("themes/looper/assets/javascript/pages/flatpickr-demo.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/javascript/pages/colorpicker-demo.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/javascript/pages/uploader-demo.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/javascript/pages/slider-demo.js") }}"></script>
    <script src="{{ asset("themes/looper/assets/javascript/pages/spinner-demo.js") }}"></script>
    <!-- END PAGE LEVEL JS -->
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-116692175-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag()
      {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      gtag('config', 'UA-116692175-1');
    </script>
</body>
</html>