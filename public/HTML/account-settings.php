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
    <link rel="stylesheet" href="assets/lib/DatePicker/bootstrap-datepicker.min.css">
    <link rel="stylesheet" href="assets/lib/DatePicker/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="assets/lib/fancybox/dist/jquery.fancybox.min.css">
    <link href="assets/lib/aos-master/dist/aos.css" rel="stylesheet">
    <link href="assets/lib/select2-4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/lib/jquery-nice-select-1.1.0/css/nice-select.css">
    <link rel="stylesheet" href="assets/lib/intl-tel-input-master/build/css/intlTelInput.min.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>

<body class="">
    <!-- logout ==---------------------------- -->

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered logout-modal">
            <div class="modal-content"> 
                <div class="modal-body">
                   <div class="text">
                   <h3>Are you about logout</h3>
                    <p>Turkey is an attractive option for international buyers with</p>
                   </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                    <a href="" class="btn btn-primary">Yes</a>
                </div>
            </div>
        </div>
    </div>
    <!-- logout ==---------------------------- -->



    <!-- header ==---------------------------- -->
    <div class="inner-page">
        <?php include('_header-inner.php') ?>

    </div>
    <!-- header ==---------------------------- -->

    <!-- page content  ==---------------------------- -->
    <div class="page-content gray-bg">
        <div class="container">
            <div class="prfile-sec">

                <div class="row">
                    <div class="col-md-12 col-lg-3 sidebar" data-aos="fade-up" data-aos-duration="1000">
                        <div class="content desktop">
                            <div class="details">

                                <div class="links-tree">
                                    <ul>
                                        <li>
                                            <a href=""><i class="fa-solid fa-house"></i></a>
                                        </li>
                                        <li><a href="">Your Profile</a></li>
                                    </ul>
                                </div>
                                <div class="links">
                                    <ul>
                                        <li><a href="">Account Settings</a></li>
                                        <li><a href="">Billing Details</a></li>
                                        <li><a href="">My Offers</a></li>
                                        <li><a href="">My Applications</a></li>
                                    </ul>
                                </div>
                                <div class="bottom">
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal">
                                        <span>Log out</span>
                                        <img src="assets/img/icon/logout.svg" alt="">
                                    </button>

                                </div>
                            </div>
                        </div>
                        <div class="content mobile">
                            <div class="details">

                                <div class="links-tree">
                                    <ul>
                                        <li>
                                            <a href=""><i class="fa-solid fa-house"></i></a>
                                        </li>
                                        <li><a href="">Your Profile</a></li>
                                    </ul>
                                    <div class="bottom">
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal">
                                        <span>Log out</span>
                                        <img src="assets/img/icon/logout.svg" alt="">
                                    </button>

                                </div>
                                </div>
                                <div class="links">
                                    <ul>
                                        <li class="active"><a href="">Account Settings</a></li>
                                        <li class=""><a href="">Billing Details</a></li>
                                        <li class=""><a href="">My Offers</a></li>
                                        <li class=""><a href="">My Applications</a></li>
                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-md-12 col-lg-9 rightbar" data-aos="fade-up" data-aos-duration="1500" data-aos-delay="200">
                        <div class="main-title">
                            <h3>Account Settings <a href="">Edit</a></h3>
                            <div class="add-addres">
                                <a href="">
                                    <span>Yeni Adres Ekle</span>
                                    <div class="icon">
                                        <i class="fa-solid fa-plus"></i>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="sec-content">
                            <div class="from-sec border-bottom">
                                <div class="row">
                                    <div class="col-md-6 col-lg-4 mb-2 item">
                                        <label class="form-label">Name</label>
                                        <input type="email" class="form-control" required="Name"
                                            placeholder="Home/Work/Other">
                                    </div>
                                    <div class="col-md-6 col-lg-4 mb-2 item">
                                        <label class="form-label">Last Name</label>
                                        <input type="email" class="form-control" required="" placeholder="Last Name">
                                    </div>
                                    <div class="col-md-6 col-lg-4 mb-2 item">
                                        <label class="form-label">E-mail</label>
                                        <input type="email" class="form-control" required="" placeholder="E-mail">
                                    </div>
                                    <div class="col-md-6 col-lg-4 mb-2 item">
                                        <label class="form-label">Phone</label>
                                        <input class="form-control phone-code" list="datalistOptions" type="text"
                                            placeholder="">
                                    </div>
                                    <div class="col-md-6 col-lg-4 mb-2 item">
                                        <label class="form-label">Birth</label>
                                        <div class="input-group date" id="datepicker">
                                            <input type="text" class="form-control" value=".. /.. /....">
                                            <span class="input-group-append">
                                                <span class="input-group-text bg-white color-primary">
                                                    <img src="assets/img/icon/calender.svg" alt="">
                                                </span>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 mb-2 item">
                                        <label class="form-label">Country</label>
                                        <input type="email" class="form-control" required="" placeholder="Country">
                                    </div>
                                    <div class="col-md-8 mb-2 item mt-3">
                                        <a href="" class="btn btn-secondary icon-btn">Submit <div class="icon"><i
                                                    class="fa-solid fa-arrow-right"></i></div></a>
                                    </div>
                                </div>
                            </div>

                            <div class="from-sec mt-5">
                                <div class="title mb-3">
                                    <h3>Password</h3>
                                </div>
                                <div class="row">

                                    <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                                        <label class="form-label">Current Password </label>
                                        <div class="inp-box">
                                            <div class="icon">
                                                <img src="assets/img/icon/lock.svg" alt="">

                                            </div>
                                            <input type="password" class="form-control" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                                        <label class="form-label">New Password </label>
                                        <div class="inp-box">
                                            <div class="icon">
                                                <img src="assets/img/icon/lock.svg" alt="">

                                            </div>
                                            <input type="password" class="form-control" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-6 col-lg-4 mb-2 item inputicon">
                                        <label class="form-label">New Password Again </label>
                                        <div class="inp-box">
                                            <div class="icon">
                                                <img src="assets/img/icon/lock.svg" alt="">

                                            </div>
                                            <input type="password" class="form-control" required="">
                                        </div>
                                    </div>
                                    <div class="col-md-12 mb-2 item inputicon mt-3">
                                        <p>I Don't Remember My Current Password <a href="" class="link">(send to my
                                                email!)</a></p>
                                        <a href="" class="btn btn-secondary icon-btn">Submit <div class="icon"><i
                                                    class="fa-solid fa-arrow-right"></i></div></a>
                                    </div>
                                </div>
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
    <script src="assets/lib/DatePicker/bootstrap-datepicker.min.js"></script>
    <script src="assets/lib/DatePicker/bootstrap-datetimepicker.min.js"></script>
    <script src="assets/lib/select2-4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="assets/lib/jquery-nice-select-1.1.0/js/jquery.nice-select.min.js"></script>
    <script src="assets/lib/intl-tel-input-master/build/js/intlTelInput-jquery.min.js"></script>
    <script src="assets/lib/intl-tel-input-master/build/js/intlTelInput.min.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/js/cookies.js"></script>
    <script src="assets/lib/aos-master/dist/aos.js"></script>

    <script>
    $(document).ready(function() {
        // $('#details').modal('show');
        $(".phone-code").intlTelInput({
            autoHideDialCode: false,
            nationalMode: false,
        });
    });
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