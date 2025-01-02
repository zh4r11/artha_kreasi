<?php
include 'config.php';
session_start();
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta http-equiv="X-UA-Compatible" content="ie=edge" />
        <title>Artha Kreasi</title>
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon/favicon.png" />

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800&display=swap" rel="stylesheet" />
        <!-- All CSS Flies   -->
        <!--===== Vendor CSS (Bootstrap & Icon Font) =====-->
        <link rel="stylesheet" href="assets/css/plugins/bootstrap.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/font-awesome.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/ionicons.min.css" />
        <!--===== Plugins CSS (All Plugins Files) =====-->
        <link rel="stylesheet" href="assets/css/plugins/jquery-ui.min.css" />
        <link rel="stylesheet" href="assets/css/plugins/meanmenu.css" />
        <link rel="stylesheet" href="assets/css/plugins/nice-select.css" />
        <link rel="stylesheet" href="assets/css/plugins/owl-carousel.css" />
        <link rel="stylesheet" href="assets/css/plugins/slick.css" />
        <!--===== Main Css Files =====-->
        <link rel="stylesheet" href="assets/css/style.css" />
        <!-- ===== Responsive Css Files ===== -->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->

        <!-- <link rel="stylesheet" href="assets/css/vendor/plugins.min.css">
        <link rel="stylesheet" href="assets/css/style.min.css">
        <link rel="stylesheet" href="assets/css/responsive.min.css"> -->
    </head>

    <body>
        <!-- main layout start from here -->
        <!--====== PRELOADER PART START ======-->

        <!-- <div id="preloader">
        <div class="preloader">
            <span></span>
            <span></span>
        </div>
    </div> -->

        <!--====== PRELOADER PART ENDS ======-->
        <div id="main">
            <!-- Header Start -->
            <header class="main-header">
                <!-- Header Top Start -->
                <div class="header-top-nav" style="background-color: #4fb68d;">
                    <div class="container-fluid">
                        <div class="row">
                            <!--Left Start-->
                            <div class="col-lg-4 col-md-4">
                                <div class="left-text">
                                    <?php if (isset($_SESSION['id'])) { echo 'Welcome ' . $_SESSION['name'] . ' to Artha Kreasi store!'; } else { echo 'Welcome you to Artha Kreasi store!'; } ?>
                                </div>
                            </div>
                            <!--Left End-->
                            <!--Right Start-->
                            <div class="col-lg-8 col-md-8 text-right">
                                <div class="header-right-nav">
                                    <div class="dropdown-navs">
                                        <ul>
                                            <!-- Settings Start -->
                                            <li class="dropdown xs-after-n">
                                                <a class="angle-icon" href="#">Settings</a>
                                                <ul class="dropdown-nav">
                                                    <?php if (isset($_SESSION['id'])) { ?>
                                                        <li><a href="logout.php">Logout</a></li>
                                                    <?php } else { ?>
                                                        <li><a href="#" data-toggle="modal" data-target="#authModal">Login</a></li>
                                                    <?php } ?>
                                                </ul>
                                            </li>
                                            <!-- Settings End -->
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!--Right End-->
                        </div>
                    </div>
                </div>
                <!-- Header Top End -->
                <!-- Header Buttom Start -->
                <div class="header-navigation sticky-nav">
                    <div class="container-fluid">
                        <div class="row">
                            <!-- Logo Start -->
                            <div class="col-md-2 col-sm-2">
                                <div class="logo">
                                    <a href="index.html"><img src="assets/images/logo/logo.jpg" alt="logo.jpg" /></a>
                                </div>
                            </div>
                            <!-- Logo End -->
                            <!-- Navigation Start -->
                            <div class="col-md-10 col-sm-10">
                                <!--Main Navigation Start -->
                                <div class="main-navigation d-none d-lg-block">
                                    <ul>
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="contact.html">Contact Us</a></li>
                                    </ul>
                                </div>
                                <!--Main Navigation End -->
                                <!--Header Bottom Account Start -->
                                <div class="header_account_area">
                                    <!--Cart info Start -->
                                    <div class="cart-info d-flex">
                                        <div class="mini-cart-warp">
                                            <a href="#" class="count-cart"><span>Rp 0</span></a>
                                            <div class="mini-cart-content">
                                                <ul>
                                                    <li class="single-shopping-cart">
                                                        <div class="shopping-cart-img">
                                                            <a href="single-product.html"><img alt="" src="assets/images/product-image/mini-cart/2.jpg" /></a>
                                                            <span class="product-quantity">1x</span>
                                                        </div>
                                                        <div class="shopping-cart-title">
                                                            <h4><a href="single-product.html">Water and Wind...</a></h4>
                                                            <span>$11.00</span>
                                                            <div class="shopping-cart-delete">
                                                                <a href="#"><i class="ion-android-cancel"></i></a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                                <div class="shopping-cart-total">
                                                    <h4>Subtotal : <span>$20.00</span></h4>
                                                    <h4>Shipping : <span>$7.00</span></h4>
                                                    <h4>Taxes : <span>$0.00</span></h4>
                                                    <h4 class="shop-total">Total : <span>$27.00</span></h4>
                                                </div>
                                                <div class="shopping-cart-btn text-center">
                                                    <a class="default-btn" href="checkout.html">checkout</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Cart info End -->
                                </div>
                            </div>
                        </div>
                        <!-- mobile menu -->
                        <div class="mobile-menu-area">
                            <div class="mobile-menu">
                                <nav id="mobile-menu-active">
                                    <ul class="menu-overflow">
                                        <li><a href="index.html">Home</a></li>
                                        <li><a href="contact.html">Contact Us</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <!-- mobile menu end-->
                    </div>
                </div>
                <!--Header Bottom Account End -->
            </header>
            <!-- Header End -->
            <!-- Slider Arae Start -->
            <div class="slider-area">
                <div class="slider-active-3 owl-carousel slider-hm8 owl-dot-style">
                    <!-- Slider Single Item Start -->
                    <div class="slider-height-6 d-flex align-items-start justify-content-start bg-img" style="background-image: url(assets/images/slider-image/sample-1.jpg);">
                        <div class="container">
                            <div class="slider-content-1 slider-animated-1 text-left">
                                <span class="animated">NOT FRIED NOT BAKED</span>
                                <h1 class="animated">
                                    Freeze Dried Fruits <br />
                                    Pineapple Coconut
                                </h1>
                                <p class="animated">Free Shipping On Qualified Orders Over $35</p>
                            </div>
                        </div>
                    </div>
                    <!-- Slider Single Item End -->
                    <!-- Slider Single Item Start -->
                    <div class="slider-height-6 d-flex align-items-start justify-content-start bg-img" style="background-image: url(assets/images/slider-image/sample-2.jpg);">
                        <div class="container">
                            <div class="slider-content-1 slider-animated-1 text-left">
                                <span class="animated">100% NATURAL</span>
                                <h1 class="animated">
                                    Organic Fruits <br />
                                    Summer Drinks
                                </h1>
                                <p class="animated">fresh New pack Brusting Fruits</p>
                            </div>
                        </div>
                    </div>
                    <!-- Slider Single Item End -->
                </div>
            </div>
            <!-- Slider Arae End -->
            <!-- Static Area Start -->
            <section class="static-area mtb-60px">
                <div class="container">
                    <div class="static-area-wrap">
                        <div class="row">
                            <!-- Static Single Item Start -->
                            <div class="col-lg-3 col-xs-12 col-md-6 col-sm-6">
                                <div class="single-static pb-res-md-0 pb-res-sm-0 pb-res-xs-0">
                                    <img src="assets/images/icons/static-icons-1.png" alt="" class="img-responsive" />
                                    <div class="single-static-meta">
                                        <h4>Free Shipping</h4>
                                        <p>On all orders over $75.00</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Static Single Item End -->
                            <!-- Static Single Item Start -->
                            <div class="col-lg-3 col-xs-12 col-md-6 col-sm-6">
                                <div class="single-static pb-res-md-0 pb-res-sm-0 pb-res-xs-0 pt-res-xs-20">
                                    <img src="assets/images/icons/static-icons-2.png" alt="" class="img-responsive" />
                                    <div class="single-static-meta">
                                        <h4>Free Returns</h4>
                                        <p>Returns are free within 9 days</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Static Single Item End -->
                            <!-- Static Single Item Start -->
                            <div class="col-lg-3 col-xs-12 col-md-6 col-sm-6">
                                <div class="single-static pt-res-md-30 pb-res-sm-30 pb-res-xs-0 pt-res-xs-20">
                                    <img src="assets/images/icons/static-icons-3.png" alt="" class="img-responsive" />
                                    <div class="single-static-meta">
                                        <h4>100% Payment Secure</h4>
                                        <p>Your payment are safe with us.</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Static Single Item End -->
                            <!-- Static Single Item Start -->
                            <div class="col-lg-3 col-xs-12 col-md-6 col-sm-6">
                                <div class="single-static pt-res-md-30 pb-res-sm-30 pt-res-xs-20">
                                    <img src="assets/images/icons/static-icons-4.png" alt="" class="img-responsive" />
                                    <div class="single-static-meta">
                                        <h4>Support 24/7</h4>
                                        <p>Contact us 24 hours a day</p>
                                    </div>
                                </div>
                            </div>
                            <!-- Static Single Item End -->
                        </div>
                    </div>
                </div>
            </section>
            <!-- Static Area End -->
            <!-- Best Sells Area Start -->
            <section class="best-sells-area mb-30px">
                <div class="container">
                    <!-- Section Title Start -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="section-title">
                                <h2>Best Sellers</h2>
                                <p>Add bestselling products to weekly line up</p>
                            </div>
                        </div>
                    </div>
                    <!-- Section Title End -->
                    <!-- Best Sell Slider Carousel Start -->
                    <div class="best-sell-slider owl-carousel owl-nav-style">
                        <!-- Single Item -->
                         <?php
                            $sql = "SELECT * FROM produk WHERE best_seller = 1 ORDER BY id";
                            $result = $conn->query($sql);

                            if ($result->num_rows > 0) {
                                while($row = $result->fetch_assoc()) {
                                    echo '<article class="list-product">
                                        <div class="img-block">
                                            <a href="single-product.html" class="thumbnail">
                                                <img class="first-img" src="assets/images/product-image/organic/product-'.$row["id"].'.jpg" alt="" />
                                                <img class="second-img" src="assets/images/product-image/organic/product-'.$row["id"].'.jpg" alt="" />
                                            </a>
                                            <div class="quick-view">
                                                <a class="quick_view" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal" data-id="'.$row["id"].'">
                                                    <i class="ion-ios-search-strong"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <ul class="product-flag">
                                            <li class="new">New</li>
                                        </ul>
                                        <div class="product-decs">
                                            <h2><a href="single-product.html" class="product-link">'.$row["nama_produk"].'</a></h2>
                                            <div class="pricing-meta">
                                                <ul>
                                                    <li class="old-price not-cut">Rp '.number_format($row["harga_produk"], 0, ',', '.').'</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="add-to-link">
                                            <ul>
                                                <li class="cart"><a class="cart-btn" href="#">ADD TO CART </a></li>
                                            </ul>
                                        </div>
                                    </article>';
                                }
                            }
                            ?>
                        <!-- Single Item -->
                    </div>
                    <!-- Best Sells Carousel End -->
                </div>
            </section>
            <!-- Best Sells Slider End -->

            <!-- Banner Area Start -->
            <div class="banner-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-12">
                            <div class="banner-wrapper">
                                <a href="shop-4-column.html"><img src="assets/images/banner-image/1.jpg" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-md-6 col-xs-12 mt-res-sx-30px">
                            <div class="banner-wrapper">
                                <a href="shop-4-column.html"><img src="assets/images/banner-image/2.jpg" alt="" /></a>
                            </div>
                        </div>
                        <div class="col-md-3 col-xs-12 mt-res-sx-30px">
                            <div class="banner-wrapper">
                                <a href="shop-4-column.html"><img src="assets/images/banner-image/3.jpg" alt="" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Banner Area End -->
            <!-- Feature Area Start -->
            <section class="feature-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <!-- Section Title -->
                            <div class="section-title">
                                <h2>Products</h2>
                                <p>Add products to weekly line up</p>
                            </div>
                            <!-- Section Title -->
                        </div>
                    </div>
                    <!-- Feature Slider Start -->
                    <div class="feature-slider owl-carousel owl-nav-style">
                        <!-- Single Item -->
                         <?php
                            $query = "SELECT * FROM produk";
                            $result = mysqli_query($conn, $query);
                            $head=true;
                            $y=0;
                            while($row = mysqli_fetch_assoc($result)){
                                if($head){
                                    echo '<div class="feature-slider-item">';
                                    $head = false;
                                }

                                if($y < 3){
                                    echo '<article class="list-product">
                                            <div class="img-block">
                                                <a href="single-product.html" class="thumbnail">
                                                    <img class="first-img" src="assets/images/product-image/organic/product-'.$row["id"].'.jpg" alt="" />
                                                    <img class="second-img" src="assets/images/product-image/organic/product-'.$row["id"].'.jpg" alt="" />
                                                </a>
                                                <div class="quick-view">
                                                    <a class="quick_view" href="#" data-link-action="quickview" title="Quick view" data-toggle="modal" data-target="#exampleModal" data-id="'.$row["id"].'">
                                                        <i class="ion-ios-search-strong"></i>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="product-decs">
                                                <h2><a href="single-product.html" class="product-link">'.$row["nama_produk"].'</a></h2>
                                                <div class="pricing-meta">
                                                    <ul>
                                                        <li class="old-price not-cut">Rp '.number_format($row["harga_produk"], 0, ',', '.').'</li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </article>';

                                        $y++;
                                } else {
                                    echo '</div>';
                                    $head = true;
                                    $y = 0;
                                }

                            }
                        ?>
                        <!-- Single Item -->
                    </div>
                    <!-- Feature Slider End -->
                </div>
            </section>
            <!-- Feature Area End -->
            <!-- Banner Area 2 Start -->
            <div class="banner-area-2">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="banner-inner">
                                <a href="shop-4-column.html"><img src="assets/images/banner-image/4.jpg" alt="" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Banner Area 2 End -->

            <!-- Brand area start -->
            <div class="brand-area">
                <div class="container">
                    <div class="brand-slider owl-carousel owl-nav-style owl-nav-style-2">
                        <div class="brand-slider-item">
                            <a href="#"><img src="assets/images/brand-logo/1.jpg" alt="" /></a>
                        </div>
                        <div class="brand-slider-item">
                            <a href="#"><img src="assets/images/brand-logo/2.jpg" alt="" /></a>
                        </div>
                        <div class="brand-slider-item">
                            <a href="#"><img src="assets/images/brand-logo/3.jpg" alt="" /></a>
                        </div>
                        <div class="brand-slider-item">
                            <a href="#"><img src="assets/images/brand-logo/4.jpg" alt="" /></a>
                        </div>
                        <div class="brand-slider-item">
                            <a href="#"><img src="assets/images/brand-logo/5.jpg" alt="" /></a>
                        </div>
                        <div class="brand-slider-item">
                            <a href="#"><img src="assets/images/brand-logo/1.jpg" alt="" /></a>
                        </div>
                        <div class="brand-slider-item">
                            <a href="#"><img src="assets/images/brand-logo/2.jpg" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Brand area end -->
            <!-- Footer Area start -->
            <footer class="footer-area">
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <!-- footer single wedget -->
                            <div class="col-md-6 col-lg-4">
                                <!-- footer logo -->
                                <div class="footer-logo">
                                    <a href="index.html"><img src="assets/images/logo/footer-logo.png" alt="" /></a>
                                </div>
                                <!-- footer logo -->
                                <div class="about-footer">
                                    <p class="text-info">We are a team of designers and developers that create high quality HTML template</p>
                                    <div class="need-help">
                                        <p class="phone-info">
                                            NEED HELP?
                                            <span>
                                                (+62) xxxxxxxxxx <br />
                                                (+62) xxxxxxxxxx
                                            </span>
                                        </p>
                                    </div>

                                </div>
                            </div>
                            <!-- footer single wedget -->
                            <div class="col-md-6 col-lg-2 mt-res-sx-30px mt-res-md-30px">
                                <div class="single-wedge">
                                    <h4 class="footer-herading">Information</h4>
                                    <div class="footer-links">
                                        <ul>
                                            <li><a href="contact.html">Contact Us</a></li>
                                            <li><a href="login.html">Login</a></li>
                                            <li><a href="my-account.html">My Account</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </footer>
            <!--  Footer Area End -->
        </div>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 col-sm-12 col-xs-12">
                                <div class="tab-content quickview-big-img">
                                    <div id="pro-1" class="tab-pane fade show active">
                                        <img src="assets/images/product-image/organic/product-1.jpg" alt="" />
                                    </div>
                                    <div id="pro-2" class="tab-pane fade">
                                        <img src="assets/images/product-image/organic/product-9.jpg" alt="" />
                                    </div>
                                    <div id="pro-3" class="tab-pane fade">
                                        <img src="assets/images/product-image/organic/product-20.jpg" alt="" />
                                    </div>
                                    <div id="pro-4" class="tab-pane fade">
                                        <img src="assets/images/product-image/organic/product-19.jpg" alt="" />
                                    </div>
                                </div>
                                <!-- Thumbnail Large Image End -->
                                <!-- Thumbnail Image End -->
                                <div class="quickview-wrap mt-15">
                                    <div class="quickview-slide-active owl-carousel nav owl-nav-style owl-nav-style-2" role="tablist">
                                        <a class="active" data-toggle="tab" href="#pro-1"><img src="assets/images/product-image/organic/product-1.jpg" alt="" /></a>
                                        <a data-toggle="tab" href="#pro-2"><img src="assets/images/product-image/organic/product-1.jpg" alt="" /></a>
                                        <a data-toggle="tab" href="#pro-3"><img src="assets/images/product-image/organic/product-1.jpg" alt="" /></a>
                                        <a data-toggle="tab" href="#pro-4"><img src="assets/images/product-image/organic/product-1.jpg" alt="" /></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-sm-12 col-xs-12">
                                <div class="product-details-content quickview-content">
                                    <h2>Originals Kaval Windbr</h2>

                                    <div class="pricing-meta">
                                        <ul>
                                            <li class="old-price not-cut">Rp angka</li>
                                        </ul>
                                    </div>
                                    <p>Ini sepatu, liat kan. Ukurannya 36-45</p>
                                    <div class="pro-details-quality">
                                        <div class="cart-plus-minus">
                                            <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1" />
                                        </div>
                                        <div class="pro-details-cart btn-hover">
                                            <a href="#"> + Add To Cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal end -->

        <style>
            .custom-modal .modal-dialog {
                max-width: 400px; /* Adjust the width as needed */
            }

            .nav-tabs {
                justify-content: center; /* Center the tabs */
            }
        </style>

        <!-- Modal login -->
        <div class="modal fade custom-modal" id="authModal" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-sm" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">x</span></button>
                    </div>
                    <div class="modal-body">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="login-tab" data-toggle="tab" href="#login" role="tab" aria-controls="login" aria-selected="true">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="register-tab" data-toggle="tab" href="#register" role="tab" aria-controls="register" aria-selected="false">Register</a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <!-- Login Tab -->
                            <div class="tab-pane fade show active" id="login" role="tabpanel" aria-labelledby="login-tab">
                                <form id="loginForm" action="login.php" method="POST">
                                    <div class="form-group">
                                        <label for="InputEmail1">Email address</label>
                                        <input type="email" class="form-control" id="InputEmail" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                                    </div>
                                    <div class="form-group">
                                        <label for="InputPassword1">Password</label>
                                        <input type="password" class="form-control" id="InputPassword" name="password" placeholder="Password">
                                    </div>
                                    <button type="submit" class="btn btn-primary">Login</button>
                                </form>
                            </div>

                            <!-- Register Tab -->
                            <div class="tab-pane fade" id="register" role="tabpanel" aria-labelledby="register-tab">
                                <form id="registerForm" action="register.php" method="POST">
                                    <div class="form-group">
                                        <label for="RegisterEmail">Email address</label>
                                        <input type="email" class="form-control" id="RegisterEmail" name="email" aria-describedby="emailHelp" placeholder="Enter email">
                                    </div>
                                    <div class="form-group">
                                        <label for="RegisterPassword">Password</label>
                                        <input type="password" class="form-control" id="RegisterPassword" name="password" placeholder="Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="ConfirmPassword">Confirm Password</label>
                                        <input type="password" class="form-control" id="ConfirmPassword" name="confirm_password" placeholder="Confirm Password">
                                    </div>
                                    <div class="form-group">
                                        <label for="RegisterName">Name</label>
                                        <input type="name" class="form-control" id="RegisterName" name="name" aria-describedby="nameHelp" placeholder="Enter name">
                                    </div>
                                    <div class="form-group">
                                        <label for="RegisterPhone">Phone Number</label>
                                        <input type="tel" class="form-control" id="InputPhoneNumber" name="phoneNumber" placeholder="Enter phone number">
                                    </div>
                                    <div class="form-group">
                                        <label for="RegisterAddress">Address</label>
                                        <textarea type="text" class="form-control" id="RegisterAddress" name="address" aria-describedby="addressHelp" placeholder="Enter address"></textarea>
                                    </div>
                                    <button type="submit" class="btn btn-primary">Register</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal end -->

        <!-- Scripts to be loaded  -->
        <!-- JS
============================================ -->
        
        <!--====== Vendors js ======-->
        <script src="assets/js/vendor/jquery-3.5.1.min.js"></script>
        <script src="assets/js/vendor/modernizr-3.7.1.min.js"></script>

        <!--====== Plugins js ======-->
        <script src="assets/js/plugins/bootstrap.min.js"></script>
        <script src="assets/js/plugins/popper.min.js"></script>
        <script src="assets/js/plugins/meanmenu.js"></script>
        <script src="assets/js/plugins/owl-carousel.js"></script>
        <script src="assets/js/plugins/jquery.nice-select.js"></script>
        <script src="assets/js/plugins/countdown.js"></script>
        <script src="assets/js/plugins/elevateZoom.js"></script>
        <script src="assets/js/plugins/jquery-ui.min.js"></script>
        <script src="assets/js/plugins/slick.js"></script>
        <script src="assets/js/plugins/scrollup.js"></script>
        <script src="assets/js/plugins/range-script.js"></script>

        <!--====== Use the minified version files listed below for better performance and remove the files listed above ======-->

        <!-- <script src="assets/js/plugins.min.js"></script> -->

        <!-- Main Activation JS -->
        <script src="assets/js/main.js"></script>

        <script>
            $(document).ready(function() {
                $('.quick_view').on('click', function(e) {
                e.preventDefault();
                
                // Get the product ID from the data-id attribute
                var productId = $(this).data('id');
                
                // AJAX request to fetch product data
                $.ajax({
                    url: 'getProductData.php', // Replace with your server-side script
                    type: 'GET',
                    data: { id: productId },
                    success: function(response) {
                        // Parse the JSON response
                        var product = JSON.parse(response);
                        
                        // Populate the modal with the fetched data
                        $('#exampleModal .modal-body h2').text(product.name);
                        $('#exampleModal .modal-body .old-price').text('Rp ' + product.price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, "."));
                        $('#exampleModal .modal-body p').text(product.description);
                        
                        // Update product images
                        // $('#pro-1 img').attr('src', product.image1);
                        // $('#pro-2 img').attr('src', product.image2);
                        // $('#pro-3 img').attr('src', product.image3);
                        // $('#pro-4 img').attr('src', product.image4);
                        
                        // Update thumbnail images
                        // $('#exampleModal .quickview-slide-active a').each(function(index) {
                        //     $(this).find('img').attr('src', product['image' + (index + 1)]);
                        // });
                        
                        // Show the modal
                        $('#exampleModal').modal('show');
                    },
                    error: function(xhr, status, error) {
                        console.error('Error fetching product data:', error);
                    }
                });
            });
        });
        </script>
    </body>
</html>