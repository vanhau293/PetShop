<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<html lang="zxx">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Pronia - Cart</title>
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
                                <h2 class="breadcrumb-heading">Cart Page</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>Cart Page</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="cart-area section-space-y-axis-100">
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
                                                <th class="product-quantity">Quantity</th>
                                                <th class="product-subtotal">Total</th>
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
                                                        <img src="<c:url value = 'resources/assets/images/product/small-size/1-1-112x124.png'/>" alt="Cart Thumbnail">
                                                    </a>
                                                </td>
                                                <td class="product-name"><a href="#">American Marigold</a></td>
                                                <td class="product-price"><span class="amount">$23.45</span></td>
                                                <td class="quantity">
                                                    <div class="cart-plus-minus">
                                                        <input class="cart-plus-minus-box" value="1" type="text">
                                                        <div class="dec qtybutton">
                                                            <i class="fa fa-minus"></i>
                                                        </div>
                                                        <div class="inc qtybutton">
                                                            <i class="fa fa-plus"></i>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="product-subtotal"><span class="amount">$23.45</span></td>
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
                                                        <img src="<c:url value = 'resources/assets/images/product/small-size/1-2-112x124.png'/>" alt="Cart Thumbnail">
                                                    </a>
                                                </td>
                                                <td class="product-name"><a href="#">Black Eyed Susan</a></td>
                                                <td class="product-price"><span class="amount">$25.45</span></td>
                                                <td class="quantity">
                                                    <div class="cart-plus-minus">
                                                        <input class="cart-plus-minus-box" value="1" type="text">
                                                        <div class="dec qtybutton">
                                                            <i class="fa fa-minus"></i>
                                                        </div>
                                                        <div class="inc qtybutton">
                                                            <i class="fa fa-plus"></i>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="product-subtotal"><span class="amount">$25.45</span></td>
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
                                                        <img src="<c:url value = 'resources/assets/images/product/small-size/1-3-112x124.png'/>" alt="Cart Thumbnail">
                                                    </a>
                                                </td>
                                                <td class="product-name"><a href="#">Bleeding Heart</a></td>
                                                <td class="product-price"><span class="amount">$30.45</span></td>
                                                <td class="quantity">
                                                    <div class="cart-plus-minus">
                                                        <input class="cart-plus-minus-box" value="1" type="text">
                                                        <div class="dec qtybutton">
                                                            <i class="fa fa-minus"></i>
                                                        </div>
                                                        <div class="inc qtybutton">
                                                            <i class="fa fa-plus"></i>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="product-subtotal"><span class="amount">$30.45</span></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="row">
                                    <div class="col-12">
                                        <div class="coupon-all">
                                            <div class="coupon">
                                                <input id="coupon_code" class="input-text" name="coupon_code" value="" placeholder="Coupon code" type="text">
                                                <input class="button mt-xxs-30" name="apply_coupon" value="Apply coupon" type="submit">
                                            </div>
                                            <div class="coupon2">
                                                <input class="button" name="update_cart" value="Update cart" type="submit">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5 ml-auto">
                                        <div class="cart-page-total">
                                            <h2>Cart totals</h2>
                                            <ul>
                                                <li>Subtotal <span>$79.35</span></li>
                                                <li>Total <span>$79.35</span></li>
                                            </ul>
                                            <a href="#">Proceed to checkout</a>
                                        </div>
                                    </div>
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