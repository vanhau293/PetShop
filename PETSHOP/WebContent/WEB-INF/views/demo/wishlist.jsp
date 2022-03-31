<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<html lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - Wishlist</title>
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
                                <h2 class="breadcrumb-heading">Wishlist Page</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>Wishlist</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="wishlist-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <form action="javascript:void(0)">
                                <div class="table-content table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th class="product_remove">remove</th>
                                                <th class="product-thumbnail">images</th>
                                                <th class="cart-product-name">Product</th>
                                                <th class="product-price">Unit Price</th>
                                                <th class="product-stock-status">Stock Status</th>
                                                <th class="cart_btn">add to cart</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="product_remove">
                                                    <a href="#">
                                                        <i class="pe-7s-close" data-tippy="Remove" data-tippy-inertia="true"
                                                    data-tippy-animation="shift-away" data-tippy-delay="50"
                                                    data-tippy-arrow="true" data-tippy-theme="sharpborder"></i>
                                                    </a>
                                                </td>
                                                <td class="product-thumbnail">
                                                    <a href="#">
                                                        <img src="<c:url value = 'resources/assets/images/product/small-size/1-1-112x124.png'/>" alt="Wishlist Thumbnail">
                                                    </a>
                                                </td>
                                                <td class="product-name"><a href="#">American Marigold</a></td>
                                                <td class="product-price"><span class="amount">$23.45</span></td>
                                                <td class="product-stock-status"><span class="in-stock">in stock</span></td>
                                                <td class="cart_btn"><a href="#">add to cart</a></td>
                                            </tr>
                                            <tr>
                                                <td class="product_remove">
                                                    <a href="#">
                                                        <i class="pe-7s-close" data-tippy="Remove" data-tippy-inertia="true"
                                                    data-tippy-animation="shift-away" data-tippy-delay="50"
                                                    data-tippy-arrow="true" data-tippy-theme="sharpborder"></i>
                                                    </a>
                                                </td>
                                                <td class="product-thumbnail">
                                                    <a href="#">
                                                        <img src="<c:url value = 'resources/assets/images/product/small-size/1-2-112x124.png'/>" alt="Wishlist Thumbnail">
                                                    </a>
                                                </td>
                                                <td class="product-name"><a href="#">Black Eyed Susan</a></td>
                                                <td class="product-price"><span class="amount">$25.45</span></td>
                                                <td class="product-stock-status"><span class="in-stock text-danger">out
                                                stock</span></td>
                                                <td class="cart_btn"><a href="#">add to cart</a></td>
                                            </tr>
                                            <tr>
                                                <td class="product_remove">
                                                    <a href="#">
                                                        <i class="pe-7s-close" data-tippy="Remove" data-tippy-inertia="true"
                                                    data-tippy-animation="shift-away" data-tippy-delay="50"
                                                    data-tippy-arrow="true" data-tippy-theme="sharpborder"></i>
                                                    </a>
                                                </td>
                                                <td class="product-thumbnail">
                                                    <a href="#">
                                                        <img src="<c:url value = 'resources/assets/images/product/small-size/1-3-112x124.png'/>" alt="Wishlist Thumbnail">
                                                    </a>
                                                </td>
                                                <td class="product-name"><a href="#">Bleeding Heart</a></td>
                                                <td class="product-price"><span class="amount">$30.45</span></td>
                                                <td class="product-stock-status"><span class="in-stock">in stock</span></td>
                                                <td class="cart_btn"><a href="#">add to cart</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </form>
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