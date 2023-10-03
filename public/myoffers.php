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
        <div class="container">
            <div class="prfile-sec">

                <div class="row">
                    <div class="col-md-3 sidebar">
                        <div class="content">
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
                                    <a href="">
                                        <span>Log out</span>
                                        <img src="assets/img/icon/logout.svg" alt="">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-9 rightbar">
                        <div class="main-title">
                            <h3>Billing Details</h3>
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
                            <div class="addreses">
                                <div class="row">
                                    <div class="item col-md-4">
                                        <div class="content">
                                            <div class="top">
                                                <div class="dropdown">
                                                    <button class="btn btn-secondary dropdown-toggle" type="button"
                                                        data-bs-toggle="dropdown" aria-expanded="false">
                                                        <i class="fa-solid fa-ellipsis-vertical"></i>
                                                    </button>
                                                    <ul class="dropdown-menu">
                                                        <li><a class="dropdown-item" href="#">Action</a></li>
                                                        <li><a class="dropdown-item" href="#">Another action</a></li>
                                                        <li><a class="dropdown-item" href="#">Something else here</a>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="center">
                                                <ul>
                                                    <li>
                                                        <span>Address Definition</span>
                                                        <em>House</em>
                                                    </li>
                                                    <li>
                                                        <span>Address</span>
                                                        <em>2320 N Career Ave Sioux Falls SD 57107-1301 USA</em>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="bottom">
                                                <a href="">Detail</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="addres-type">
                                <ul class="nav nav-tabs" id="myTab" role="tablist">
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#tab1" type="button" role="tab" aria-controls="tab1" aria-selected="true">Bireysel</button>
                                    </li>
                                    <li class="nav-item" role="presentation">
                                        <button class="nav-link " data-bs-toggle="tab" data-bs-target="#tab2" type="button" role="tab" aria-controls="tab2" aria-selected="true">Kurumsal</button>
                                    </li>
                                </ul>
                                <div class="tab-content" id="myTabContent">
                                    <div class="tab-pane fade show active" id="tab1" role="tabpanel" tabindex="0">
                                        <div class="row">
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">Billing Title</label>
                                                <input type="email" class="form-control" required="" placeholder="Home/Work/Other">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">Name</label>
                                                <input type="email" class="form-control" required="" placeholder="Name">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">Last Name</label>
                                                <input type="email" class="form-control" required="" placeholder="Last Name">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">Country</label>
                                                <input type="email" class="form-control" required="" placeholder="Country">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">City</label>
                                                <input type="email" class="form-control" required="" placeholder="City">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">District</label>
                                                <input type="email" class="form-control" required="" placeholder="District">
                                            </div>
                                            <div class="col-md-8 mb-2 item">
                                                <label class="form-label">Address</label>
                                                <textarea class="form-control" name="" id="" cols="30" rows="4" placeholder="Your Adress"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="tab2" role="tabpanel" tabindex="0">
                                    <div class="row">
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">Billing Title 02</label>
                                                <input type="email" class="form-control" required="" placeholder="Home/Work/Other">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">Name</label>
                                                <input type="email" class="form-control" required="" placeholder="Name">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">Last Name</label>
                                                <input type="email" class="form-control" required="" placeholder="Last Name">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">Country</label>
                                                <input type="email" class="form-control" required="" placeholder="Country">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">City</label>
                                                <input type="email" class="form-control" required="" placeholder="City">
                                            </div>
                                            <div class="col-md-4 mb-2 item">
                                                <label class="form-label">District</label>
                                                <input type="email" class="form-control" required="" placeholder="District">
                                            </div>
                                            <div class="col-md-8 mb-2 item">
                                                <label class="form-label">Address</label>
                                                <textarea class="form-control" name="" id="" cols="30" rows="4" placeholder="Your Adress"></textarea>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="action-sec">
                                <a href="" class="btn btn-secondary icon-btn">Send <div class="icon"><i class="fa-solid fa-arrow-right"></i></div></a>
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
    <script src="assets/lib/select2-4.1.0-rc.0/dist/js/select2.min.js"></script>
    <script src="assets/lib/jquery-nice-select-1.1.0/js/jquery.nice-select.min.js"></script>
    <script src="assets/js/script.js"></script>
    <script src="assets/lib/aos-master/dist/aos.js"></script>

</body>

</html>