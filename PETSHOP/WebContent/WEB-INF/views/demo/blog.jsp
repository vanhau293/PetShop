<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<html lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - Blog</title>
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
                                    <li>Blog Grid View</li>
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
                            <div class="blog-item-wrap row g-y-30">
                                <div class="col-md-6">
                                    <div class="blog-item">
                                        <div class="blog-content">
                                            <div class="blog-meta">
                                                <ul>
                                                    <li class="author">
                                                        <a href="#">By: Admin</a>
                                                    </li>
                                                    <li class="date">24 April 2021</li>
                                                </ul>
                                            </div>
                                            <h2 class="title">
                                                <a href="blog-detail.html">There Many Variations</a>
                                            </h2>
                                            <p class="short-desc mb-7">Lorem ipsum dolor sit amet, consecteturl adipisl elit,
                                                sed do eiusmod tempor incidio ut labore et dolore magna aliqua.</p>
                                        </div>
                                        <div class="blog-img img-hover-effect">
                                            <a href="blog-detail.html">
                                                <img class="img-full" src="<c:url value = 'resources/assets/images/blog/medium-size/1-1-310x220.jpg'/>" alt="Blog Image">
                                            </a>
                                            <div class="inner-btn-wrap">
                                                <a class="inner-btn" href="blog-detail.html">
                                                    <i class="pe-7s-link"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="swiper-container single-blog-slider">
                                        <div class="swiper-wrapper">
                                            <div class="swiper-slide">
                                                <div class="blog-item">
                                                    <div class="blog-content">
                                                        <div class="blog-meta">
                                                            <ul>
                                                                <li class="author">
                                                                    <a href="#">By: Admin</a>
                                                                </li>
                                                                <li class="date">24 April 2021</li>
                                                            </ul>
                                                        </div>
                                                        <h2 class="title">
                                                            <a href="blog-detail.html">Blog Gallery Post</a>
                                                        </h2>
                                                        <p class="short-desc mb-7">Lorem ipsum dolor sit amet, consecteturl
                                                            adipisl elit,
                                                            sed do eiusmod tempor incidio ut labore et dolore magna aliqua.</p>
                                                    </div>
                                                    <div class="blog-img img-hover-effect">
                                                        <a href="blog-detail.html">
                                                            <img class="img-full" src="<c:url value = 'resources/assets/images/blog/medium-size/1-3-310x220.jpg'/>" alt="Blog Image">
                                                        </a>
                                                        <div class="inner-btn-wrap">
                                                            <a class="inner-btn" href="blog-detail.html">
                                                                <i class="pe-7s-link"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide">
                                                <div class="blog-item">
                                                    <div class="blog-content">
                                                        <div class="blog-meta">
                                                            <ul>
                                                                <li class="author">
                                                                    <a href="#">By: Admin</a>
                                                                </li>
                                                                <li class="date">24 April 2021</li>
                                                            </ul>
                                                        </div>
                                                        <h2 class="title">
                                                            <a href="blog-detail.html">Blog Second Gallery Post</a>
                                                        </h2>
                                                        <p class="short-desc mb-7">Lorem ipsum dolor sit amet, consecteturl
                                                            adipisl elit,
                                                            sed do eiusmod tempor incidio ut labore et dolore magna aliqua.</p>
                                                    </div>
                                                    <div class="blog-img img-hover-effect">
                                                        <a href="blog-detail.html">
                                                            <img class="img-full" src="<c:url value = 'resources/assets/images/blog/medium-size/1-2-310x220.jpg'/>" alt="Blog Image">
                                                        </a>
                                                        <div class="inner-btn-wrap">
                                                            <a class="inner-btn" href="blog-detail.html">
                                                                <i class="pe-7s-link"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="swiper-slide">
                                                <div class="blog-item">
                                                    <div class="blog-content">
                                                        <div class="blog-meta">
                                                            <ul>
                                                                <li class="author">
                                                                    <a href="#">By: Admin</a>
                                                                </li>
                                                                <li class="date">24 April 2021</li>
                                                            </ul>
                                                        </div>
                                                        <h2 class="title">
                                                            <a href="blog-detail.html">Blog Third Gallery Post</a>
                                                        </h2>
                                                        <p class="short-desc mb-7">Lorem ipsum dolor sit amet, consecteturl
                                                            adipisl elit,
                                                            sed do eiusmod tempor incidio ut labore et dolore magna aliqua.</p>
                                                    </div>
                                                    <div class="blog-img img-hover-effect">
                                                        <a href="blog-detail.html">
                                                            <img class="img-full" src="<c:url value = 'resources/assets/images/blog/medium-size/1-1-310x220.jpg'/>" alt="Blog Image">
                                                        </a>
                                                        <div class="inner-btn-wrap">
                                                            <a class="inner-btn" href="blog-detail.html">
                                                                <i class="pe-7s-link"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="blog-item">
                                        <div class="blog-content">
                                            <div class="blog-meta">
                                                <ul>
                                                    <li class="author">
                                                        <a href="#">By: Admin</a>
                                                    </li>
                                                    <li class="date">24 April 2021</li>
                                                </ul>
                                            </div>
                                            <h2 class="title">
                                                <a href="blog-detail.html">Blog Audio Post</a>
                                            </h2>
                                            <p class="short-desc mb-7">Lorem ipsum dolor sit amet, consecteturl adipisl elit,
                                                sed do eiusmod tempor incidio ut labore et dolore magna aliqua.</p>
                                        </div>
                                        <div class="ratio ratio-16x9">
                                            <iframe allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/users/182537870&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true&amp;visual=true"></iframe>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="blog-item">
                                        <div class="blog-content">
                                            <div class="blog-meta">
                                                <ul>
                                                    <li class="author">
                                                        <a href="#">By: Admin</a>
                                                    </li>
                                                    <li class="date">24 April 2021</li>
                                                </ul>
                                            </div>
                                            <h2 class="title">
                                                <a href="blog-detail.html">Blog Video Post</a>
                                            </h2>
                                            <p class="short-desc mb-7">Lorem ipsum dolor sit amet, consecteturl adipisl elit,
                                                sed do eiusmod tempor incidio ut labore et dolore magna aliqua.</p>
                                        </div>
                                        <div class="ratio ratio-16x9">
                                            <iframe src="https://www.youtube.com/embed/fkoEj95puX0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
                                            </iframe>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="blog-item">
                                        <div class="blog-content">
                                            <div class="blog-meta">
                                                <ul>
                                                    <li class="author">
                                                        <a href="#">By: Admin</a>
                                                    </li>
                                                    <li class="date">24 April 2021</li>
                                                </ul>
                                            </div>
                                            <h2 class="title">
                                                <a href="blog-detail.html">There Many Variations</a>
                                            </h2>
                                            <p class="short-desc mb-7">Lorem ipsum dolor sit amet, consecteturl adipisl elit,
                                                sed do eiusmod tempor incidio ut labore et dolore magna aliqua.</p>
                                        </div>
                                        <div class="blog-img img-hover-effect">
                                            <a href="blog-detail.html">
                                                <img class="img-full" src="<c:url value = 'resources/assets/images/blog/medium-size/1-2-310x220.jpg'/>" alt="Blog Image">
                                            </a>
                                            <div class="inner-btn-wrap">
                                                <a class="inner-btn" href="blog-detail.html">
                                                    <i class="pe-7s-link"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="blog-item">
                                        <div class="blog-content">
                                            <div class="blog-meta">
                                                <ul>
                                                    <li class="author">
                                                        <a href="#">By: Admin</a>
                                                    </li>
                                                    <li class="date">24 April 2021</li>
                                                </ul>
                                            </div>
                                            <h2 class="title">
                                                <a href="blog-detail.html">There Many Variations</a>
                                            </h2>
                                            <p class="short-desc mb-7">Lorem ipsum dolor sit amet, consecteturl adipisl elit,
                                                sed do eiusmod tempor incidio ut labore et dolore magna aliqua.</p>
                                        </div>
                                        <div class="blog-img img-hover-effect">
                                            <a href="blog-detail.html">
                                                <img class="img-full" src="<c:url value = 'resources/assets/images/blog/medium-size/1-3-310x220.jpg'/>" alt="Blog Image">
                                            </a>
                                            <div class="inner-btn-wrap">
                                                <a class="inner-btn" href="blog-detail.html">
                                                    <i class="pe-7s-link"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="pagination-area">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#" aria-label="Next">&raquo;</a>
                                        </li>
                                    </ul>
                                </nav>
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