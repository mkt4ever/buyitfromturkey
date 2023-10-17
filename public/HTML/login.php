<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <title>Buyitfromturkey</title>
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content=" ">
    <link rel="shortcut icon" type="image/icon" href="assets/img/fave.ico" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="assets/lib/fontawesome-free-6.2.0-web/css/all.min.css">
    <link rel="stylesheet" href="assets/lib/bootstrap-5.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/lib/OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/humberger.css">
    <link rel="stylesheet" href="assets/lib/animate.css-main/animate.min.css">
    <link rel="stylesheet" href="assets/lib/fancybox/dist/jquery.fancybox.min.css">
    <link href="assets/lib/aos-master/dist/aos.css" rel="stylesheet">
    <link href="assets/lib/select2-4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/lib/jquery-nice-select-1.1.0/css/nice-select.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>

<body class="">
    <!-- header ==---------------------------- -->
    <div class="inner-page">
        <?php include('_header-inner.php') ?>

    </div>
    <!-- header ==---------------------------- -->

    <!-- page content  ==---------------------------- -->
    <div class="page-content gray-bg">
        <div class="login-page">
            <div class="container">
                <div class="login-signup" data-aos="fade-up" data-aos-duration="1000">
                    <div class="content">
                        <div class="title">
                            <h3>
                                LOGIN
                                <span>WELCOME! </span>
                            </h3>
                            <p>If you have an account or registered via google or facebook, log in.</p>
                        </div>
                        <div class="box">
                            <div class="form-sec">
                                <form action="" class="needs-validation" novalidate="">
                                    <div class="mb-3 item inputicon">
                                        <label class="form-label">Enter your email</label>
                                        <div class="inp-box">
                                            <div class="icon">
                                                <img src="assets/img/icon/loginat.svg" alt="">
                                            </div>
                                            <input type="email" class="form-control" required="">
                                        </div>
                                    </div>
                                    <div class="mb-3 item inputicon">
                                        <label class="form-label">Password </label> 
                                        <div class="inp-box">
                                            <div class="icon">
                                            <img src="assets/img/icon/lock.svg" alt="">
                                                
                                            </div>
                                            <input type="password" class="form-control" required="">
                                            <div class="pass-reset">
                                            <a href="password.php">Forget Password</a>
                                        </div>
                                        </div>
                                    </div>
                                    <div class="mb-3 item action"> 
                                        <a href="" class="btn btn-secondary icon-btn">Enter <div class="icon"><i class="fa-solid fa-arrow-right"></i></div></a>
                                    </div>
                                </form>
                            </div>
                            <div class="other">
                                <div class="or"><span>or</span></div>
                                <ul>
                                <li class="google">
                                        <a href="">
                                            <div class="icon">
                                            <img src="assets/img/icon/google.svg" alt="">
                                            </div>
                                            Continue with Google
                                        </a>
                                    </li>
                                    <li class="facebook">
                                        <a href="">
                                            <div class="icon">
                                        <img src="assets/img/icon/lfacebook.svg" alt="">

                                            </div>

                                        Continue with Facebook
                                        </a>
                                    </li>
                                   
                                </ul>
                            </div>
                        </div>
                        <div class="orsignup">
                            <div class="account">
                            <p>If you don't have an account, <a href="">register.</a></p>

                            </div>
                            <div class="privacy">
                            <p>By proceeding, you are agreeing to <a href="">Copy.ai's Terms of Service</a> and <a href="">Privacy Notice</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- page content  ==---------------------------- -->















    <!-- footer ==---------------------------- -->
    <?php include('_footer.php') ?>
    <!-- footer ==---------------------------- -->

    <!-- page content ==---------------------------------------- -->

    <script src="assets/lib/jquery/jquery-3.6.0.min.js"></script>
    <script src="assets/lib/OwlCarousel2-2.3.4/dist/owl.carousel.min.js"></script>
    <script src="assets/lib/bootstrap-5.2.0/js/bootstrap.bundle.min.js"></script>
    <script src="assets/lib/fancybox/dist/jquery.fancybox.min.js"></script>
    <script src="assets/lib/select2-4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="assets/lib/jquery-nice-select-1.1.0/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/cookies.js"></script>
    <script src="assets/lib/aos-master/dist/aos.js"></script>
    <script>
        AOS.init();
    $('.footer').owlCarousel({
            dots: false,
            loop: true,
            margin: 10,
            autoplay: true,
            autoplayTimeout: 6000,
            nav: false, // Show next and prev buttons
            slideSpeed: 500,
            autoplayHoverPause: true,
            smartSpeed: 1000,
            responsiveClass: true,
            navText: [
                "<i class='fa-solid fa-chevron-left'></i>",
                "<i class='fa-solid fa-chevron-right'></i>"
            ],
            responsive: {
                0: {
                    items: 1,
                },
                400: {
                    items: 1,
                },
                600: {
                    items: 1,
                },
                768: {
                    items: 2,
                },
                1000: {
                    items: 2,
                },
                1200: {
                    items: 3,
                }
            }
        });
    </script>
</body>

</html>