<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<html lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - Blog Detail</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value = 'resources/assets/images/favicon.ico'/>" />

    <!-- CSS
    ============================================ -->

    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/bootstrap.min.css'/>" />
    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/font-awesome.min.css'/>" />
    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/Pe-icon-7-stroke.css'/>" />
    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/animate.min.css'/>">
    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/swiper-bundle.min.css'/>">
    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/nice-select.css'/>">
    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/magnific-popup.min.css'/>" />
    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/ion.rangeSlider.min.css'/>" />

    <!-- Style CSS -->
    <link rel="stylesheet" href="<c:url value = 'resources/assets/css/style.css'/>">

</head>

<body>
    <div class="preloader-activate preloader-active open_tm_preloader">
        <div class="preloader-area-wrap">
            <div class="spinner d-flex justify-content-center align-items-center h-100">
                <div class="bounce1"></div>
                <div class="bounce2"></div>
                <div class="bounce3"></div>
            </div>
        </div>
    </div>
    <div class="main-wrapper">

        <!-- Begin Main Header Area -->
        <%@ include file = "/WEB-INF/views/demo/header.jsp" %>
        <!-- Main Header Area End Here -->

        <!-- Begin Main Content Area -->
        <main class="main-content">
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="<c:url value = 'resources/assets/images/breadcrumb/bg/1-1-1919x388.jpg'/>">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">Blog</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>Blog Detail</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="blog-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-3 col-lg-4 order-2 pt-5 pt-lg-0">
                            <div class="sidebar-area">
                                <div class="widgets-searchbox">
                                    <form id="widgets-searchbox">
                                        <input class="input-field" type="text" placeholder="Search">
                                        <button class="widgets-searchbox-btn" type="submit">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </form>
                                </div>
                                <div class="widgets-area">
                                    <div class="widgets-item pt-0">
                                        <h2 class="widgets-title mb-4">Categories</h2>
                                        <ul class="widgets-category">
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-chevron-right"></i>
                                                    All <span>(65)</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-chevron-right"></i>
                                                    Bansai <span>(12)</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-chevron-right"></i>
                                                    House Plants <span>(22)</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-chevron-right"></i>
                                                    Indoor Living <span>(19)</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-chevron-right"></i>
                                                    Perennnials <span>(17)</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-chevron-right"></i>
                                                    Plant For Gift <span>(01)</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <i class="fa fa-chevron-right"></i>
                                                    Garden Tools <span>(12)</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="widgets-item">
                                        <h2 class="widgets-title mb-4">Recent Post</h2>
                                        <div class="swiper-container widgets-list-slider">
                                            <div class="swiper-wrapper">
                                                <div class="swiper-slide">
                                                    <div class="widgets-list-item">
                                                        <div class="widgets-list-img">
                                                            <a href="#">
                                                                <img class="img-full" src="<c:url value = 'resources/assets/images/blog/small-size/1-1-70x70.png'/>" alt="Blog Images">
                                                            </a>
                                                        </div>
                                                        <div class="widgets-list-content">
                                                            <div class="widgets-meta">
                                                                <ul>
                                                                    <li class="date">
                                                                        24 April 2021
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <h2 class="title mb-0">
                                                                <a href="#">Lorem ipsum dolo
                                                                    conse tetur.</a>
                                                            </h2>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="widgets-list-item">
                                                        <div class="widgets-list-img">
                                                            <a href="#">
                                                                <img class="img-full" src="<c:url value = 'resources/assets/images/blog/small-size/1-2-70x70.png'/>" alt="Blog Images">
                                                            </a>
                                                        </div>
                                                        <div class="widgets-list-content">
                                                            <div class="widgets-meta">
                                                                <ul>
                                                                    <li class="date">
                                                                        24 April 2021
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <h2 class="title mb-0">
                                                                <a href="#">Lorem ipsum dolo
                                                                    conse tetur.</a>
                                                            </h2>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide">
                                                    <div class="widgets-list-item">
                                                        <div class="widgets-list-img">
                                                            <a href="#">
                                                                <img class="img-full" src="<c:url value = 'resources/assets/images/blog/small-size/1-3-70x70.png'/>" alt="Blog Images">
                                                            </a>
                                                        </div>
                                                        <div class="widgets-list-content">
                                                            <div class="widgets-meta">
                                                                <ul>
                                                                    <li class="date">
                                                                        24 April 2021
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <h2 class="title mb-0">
                                                                <a href="#">Lorem ipsum dolo
                                                                    conse tetur.</a>
                                                            </h2>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="swiper-slide without-border">
                                                    <div class="widgets-list-item">
                                                        <div class="widgets-list-img">
                                                            <a href="#">
                                                                <img class="img-full" src="<c:url value = 'resources/assets/images/blog/small-size/1-1-70x70.png'/>" alt="Blog Images">
                                                            </a>
                                                        </div>
                                                        <div class="widgets-list-content">
                                                            <div class="widgets-meta">
                                                                <ul>
                                                                    <li class="date">
                                                                        24 April 2021
                                                                    </li>
                                                                </ul>
                                                            </div>
                                                            <h2 class="title mb-0">
                                                                <a href="#">Lorem ipsum dolo
                                                                    conse tetur.</a>
                                                            </h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="widgets-item">
                                        <h2 class="widgets-title mb-4">Populer Tags</h2>
                                        <ul class="widgets-tag">
                                            <li>
                                                <a href="#">Fashion</a>
                                            </li>
                                            <li>
                                                <a href="#">Organic</a>
                                            </li>
                                            <li>
                                                <a href="#">Old Fashion</a>
                                            </li>
                                            <li>
                                                <a href="#">Men</a>
                                            </li>
                                            <li>
                                                <a href="#">Fashion</a>
                                            </li>
                                            <li>
                                                <a href="#">Dress</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="banner-item widgets-banner img-hover-effect">
                                    <div class="banner-img">
                                        <img src="<c:url value = 'resources/assets/images/sidebar/banner/1-270x300.jpg'/>" alt="Banner Image">
                                    </div>
                                    <div class="banner-content text-position-center">
                                        <span class="collection">New Collection</span>
                                        <h3 class="title">Plant Port</h3>
                                        <div class="button-wrap">
                                            <a class="btn btn-custom-size sm-size btn-pronia-primary" href="shop.html">Shop
                                                Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-9 col-lg-8 order-1">
                            <div class="blog-detail-item">
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <ul>
                                            <li class="author">
                                                <a href="#">By: Admin</a>
                                            </li>
                                            <li class="date">24 April 2021</li>
                                        </ul>
                                    </div>
                                    <h2 class="title">There Many Variations</h2>
                                    <p class="short-desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                        eiusmod tempor incididunt ut labore etl dolore magna aliqua. Ut enim ad minim veniam,
                                        quis nostrud exercitation ullamco laboris nisi ut aliquiex ea commodo consequat. Duis
                                        aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eukip fugiat
                                        nulla pariatur. Excepteur sint occaecat cupidatat non
                                        proident, sunt in culpa qui officia deseruntk mollit anim id est laborum. Sed ut
                                        perspiciatis unde omnis iste natus error sit voluptatem accusantiumy doloremque
                                        laudantium, totam rem aperiam,
                                    </p>
                                </div>
                                <div class="blog-img img-hover-effect">
                                    <img class="img-full" src="<c:url value = 'resources/assets/images/blog/large-size/1-1-768x546.jpg'/>" alt="Blog Image">
                                </div>
                                <p class="short-desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore etl dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
                                    exercitation ullamco laboris nisi ut aliquiex ea commodo consequat. Duis aute irure dolor in
                                    reprehenderit in voluptate velit esse cillum dolore eukip fugiat nulla pariatur. Excepteur
                                    sint occaecat.</p>
                                <blockquote>
                                    <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod
                                        tempor incididunt
                                    </p>
                                </blockquote>
                                <p class="short-desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                    tempor incididunt ut labore etl dolore magna
                                    aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquiex
                                    ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                    dolore eukip fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                                    culpa qui officia deseruntk mollit anim id est laborum. Sed ut perspiciatis unde omnis iste
                                    natus error sit voluptatem accusantiumy doloremque laudantium, totam rem aperiam,
                                </p>
                                <div class="blog-banner row">
                                    <div class="single-img img-hover-effect col-sm-6">
                                        <img class="img-full" src="<c:url value = 'resources/assets/images/blog/medium-size/2-1-370x270.jpg'/>" alt="Blog Banner">
                                    </div>
                                    <div class="single-img img-hover-effect col-sm-6 pt-5 pt-sm-0">
                                        <img class="img-full" src="<c:url value = 'resources/assets/images/blog/medium-size/2-2-370x270.jpg'/>" alt="Blog Banner">
                                    </div>
                                </div>
                                <p class="short-desc mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
                                    eiusmod tempor incididunt ut labore etl dolore magna aliqua. Ut enim ad minim veniam, quis
                                    nostrud exercitation ullamco laboris nisi ut aliquiex ea commodo consequat. Duis aute irure
                                    dolor in reprehenderit in voluptate velit esse cillum dolore eukip fugiat nulla pariatur.
                                    Excepteur sint occaecat
                                </p>
                            </div>
                            <div class="social-with-tags">
                                <div class="tags">
                                    <span class="title">Tags: </span>
                                    <ul>
                                        <li>
                                            <a href="#">Plant,</a>
                                        </li>
                                        <li>
                                            <a href="#">Tree Plant</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="social-link">
                                    <ul>
                                        <li>
                                            <a href="#" data-tippy="Facebook" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-facebook"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-tippy="Dribbble" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-dribbble"></i>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-tippy="Pinterest" data-tippy-inertia="true" data-tippy-animation="shift-away" data-tippy-delay="50" data-tippy-arrow="true" data-tippy-theme="sharpborder">
                                                <i class="fa fa-pinterest-p"></i>
                                            </a>
                                        </li>
                                        <li class="comment">
                                            <a href="#">
                                                <span>2</span>
                                                <i class="fa fa-comments"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog-comment">
                                <h4 class="heading">Comments (03)</h4>
                                <div class="blog-comment-item">
                                    <div class="blog-comment-img">
                                        <img src="<c:url value = 'resources/assets/images/blog/avatar/1-1-120x120.png'/>" alt="User Image">
                                    </div>
                                    <div class="blog-comment-content">
                                        <div class="user-meta">
                                            <h2 class="user-name">Donald Chavez</h2>
                                            <span class="date">21 July 2021</span>
                                        </div>
                                        <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi elit, sed
                                            do eiusmod tempor incidid ut labore etl dolore magna aliqua. Ut enim ad minim
                                            veniam, quis nostrud exercitati ullamco laboris nisi ut aliquiex ea commodo
                                            consequat.
                                        </p>
                                        <a class="btn btn-custom-size comment-btn" href="#">Reply</a>
                                    </div>
                                </div>
                                <div class="blog-comment-item relpy-item">
                                    <div class="blog-comment-img">
                                        <img src="<c:url value = 'resources/aassets/images/blog/avatar/1-2-120x120.png'/>" alt="User Image">
                                    </div>
                                    <div class="blog-comment-content">
                                        <div class="user-meta">
                                            <h2 class="user-name">Marissa Swan</h2>
                                            <span class="date">21 July 2021</span>
                                        </div>
                                        <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi elit, sed do
                                            eiusmod tempr incidid ut labore etl dolore magna aliqua. Ut enim ad minim veniam,
                                            quisnos exercitati ullamco laboris nisi ut aliquiex.
                                        </p>
                                        <a class="btn btn-custom-size comment-btn style-2" href="#">Reply</a>
                                    </div>
                                </div>
                                <div class="blog-comment-item">
                                    <div class="blog-comment-img">
                                        <img src="<c:url value = 'resources/assets/images/blog/avatar/1-3-120x120.png'/>" alt="User Image">
                                    </div>
                                    <div class="blog-comment-content">
                                        <div class="user-meta">
                                            <h2 class="user-name">Donald Chavez</h2>
                                            <span class="date">21 July 2021</span>
                                        </div>
                                        <p class="user-comment">Lorem ipsum dolor sit amet, consectetur adipisi elit, sed
                                            do eiusmod tempor incidid ut labore etl dolore magna aliqua. Ut enim ad minim
                                            veniam, quis nostrud exercitati ullamco laboris nisi ut aliquiex ea commodo
                                            consequat.
                                        </p>
                                        <a class="btn btn-custom-size comment-btn" href="#">Reply</a>
                                    </div>
                                </div>
                            </div>
                            <div class="feedback-area">
                                <h2 class="heading">Leave a comment</h2>
                                <form class="feedback-form" action="#">
                                    <div class="group-input">
                                        <div class="form-field me-md-30 mb-30 mb-md-0">
                                            <input type="text" name="name" placeholder="Your Name*" class="input-field">
                                        </div>
                                        <div class="form-field">
                                            <input type="text" name="email" placeholder="Your Email*" class="input-field">
                                        </div>
                                    </div>
                                    <div class="form-field mt-30">
                                        <input type="text" name="subject" placeholder="Subject (Optinal)" class="input-field">
                                    </div>
                                    <div class="form-field mt-30">
                                        <textarea name="message" placeholder="Message" class="textarea-field"></textarea>
                                    </div>
                                    <div class="button-wrap pt-5">
                                        <button type="submit" value="submit" class="btn btn-custom-size xl-size btn-pronia-primary" name="submit">Post
                                            Comment</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Main Content Area End Here -->

        <!-- Begin Footer Area -->
        <%@ include file = "/WEB-INF/views/demo/footer.jsp" %>
        <!-- Footer Area End Here -->

        <!-- Begin Scroll To Top -->
        <a class="scroll-to-top" href="">
            <i class="fa fa-angle-double-up"></i>
        </a>
        <!-- Scroll To Top End Here -->

    </div>

    <!-- Global Vendor, plugins JS -->

    <!-- JS Files
    ============================================ -->

    <script src="<c:url value = 'resources/assets/js/vendor/bootstrap.bundle.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/vendor/jquery-3.6.0.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/vendor/jquery-migrate-3.3.2.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/vendor/jquery.waypoints.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/vendor/modernizr-3.11.2.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/wow.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/swiper-bundle.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/jquery.nice-select.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/parallax.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/jquery.magnific-popup.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/tippy.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/ion.rangeSlider.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/mailchimp-ajax.js'/>"></script>
    <script src="<c:url value = 'resources/assets/js/plugins/jquery.counterup.js'/>"></script>

    <!--Main JS (Common Activation Codes)-->
    <script src="<c:url value = 'resources/assets/js/main.js'/>"></script>

</body>

</html>