<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="zxx">
<base href="${pageContext.servletContext.contextPath}/">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PetShop - Login | Register</title>
    <meta name="robots" content="index, follow" />
    <meta name="description" content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value = 'resources/assets/images/logo.jpg'/>" />

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

            <div class="login-register-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 pt-5 pt-lg-0">
                             <form:form action="user/register.htm" modelAttribute="khachhang">
                                <div class="login-form">
                                    <h4 class="login-title">Đăng ký tài khoản</h4>
                                    <div><span style="color: red">${message}</span> </div>	
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label>Họ tên</label>
                                             <form:input path="tenKH" type="text" placeholder="Họ tên"></form:input>
                                             <span style="color: red">${LoiDinhDangTen}</span> 
                                        </div>
                                        <div class="col-md-6">
                                            <label>Số điện thoại</label>
                                             <form:input path="sdt" type="text" placeholder="số điện thoại"></form:input>
                                             <span style="color: red">${LoiDinhDangSDT}</span> 
                                        </div>
                                        <div class="col-md-6">
                                            <label>Địa chỉ</label>
                                             <form:input path="diaChi" type="text" placeholder="Địa chỉ"></form:input>
                                             <span style="color: red">${LoiDinhDangDiaChi}</span> 
                                        </div>
                                        <div class="col-md-6">
                                            <label>Email</label>
                                            <form:input path="email" type="text" placeholder="Email"></form:input> 
                                            <span style="color: red">${LoiDinhDangEmail}</span> 
                                        </div>
                                        <div class="col-md-6">
                                            <label>Tên đăng nhập</label>
                                             <form:input path="taiKhoan2.tenDangNhap" type="text" placeholder="Tên đăng nhập"></form:input>
                                             <span style="color: red">${LoiDinhDangTenDangNhap}</span>  
                                        </div>
                                        <div class="col-md-6">
                                            <label>Mật khẩu</label>
                                             <form:input path="taiKhoan2.matKhau" type="password" placeholder="Mật khẩu"></form:input>
                                             <span style="color: red">${LoiDinhDangMatKhau}</span>   
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-custom-size lg-size btn-pronia-primary">Đăng ký</button>
                                        </div>
                                    </div>
                                </div>
                            </form:form> 
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