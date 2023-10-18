<!DOCTYPE html>
<html @if(app()->getLocale() == 'ar')dir="rtl"@endif lang="{{app()->getLocale()}}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <title>Buyitfromturkey</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content=" ">
    <link rel="shortcut icon" type="image/icon" href="{{ asset('img/fave.ico') }}" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="{{asset('lib/fontawesome-free-6.2.0-web/css/all.min.css')}}">
    <link rel="stylesheet" href="{{asset('lib/bootstrap-5.2.0/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('lib/animate.css-main/animate.min.css')}}">
    <link href="{{asset('lib/aos-master/dist/aos.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('css/style.css')}}">
    <link rel="stylesheet" href="{{asset('css/responsive.css')}}">
</head>

<body class=""> 
    <!-- page content  ==---------------------------- -->
    <div class="page-content p-0">

    <div class="error-section">
        <div class="container">
            <div class="main-content"> 
            <div class="logo" >
                <img src="{{asset('img/logo-main.svg')}}" alt="">
            </div>
            <div class="bottom" data-aos="fade-up" data-aos-duration="1000">
                <div class="row">
                    <div class="col-md-6 image">
                        <img src="{{asset('img/illustrations/404.svg')}}" alt="">
                    </div>
                    <div class="col-md-4 text">
                        <h3>{{ text('404title') }}</h3>
                        <p>{!! text('404content') !!}</p>
                        <a href="{{localeRoute('homepage')}}" class="btn btn-primary icon-btn">{{ text('404backToHomepage') }} <div class="icon"><i class="fa-solid fa-arrow-right"></i></div></a>
                    </div>
                </div>
            </div>
            </div>

        </div>
    </div>
    </div>

    <!-- page content ==---------------------------------------- -->

    <script src="{{asset('lib/jquery/jquery-3.6.0.min.js')}}"></script>
    <script src="{{asset('lib/bootstrap-5.2.0/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('lib/aos-master/dist/aos.js')}}"></script>
    <script>
      AOS.init();
    </script>
</body>

</html>