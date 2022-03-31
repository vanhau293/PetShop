<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<html lang="zxx">
<base href="${pageContext.servletContext.contextPath}/">
<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PetShop - Contact</title>
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
            <div class="breadcrumb-area breadcrumb-height" data-bg-image="<c:url value = 'resources/assets/images/breadcrumb/bg/hinhbia.jpg'/>">
                <div class="container h-100">
                    <div class="row h-100">
                        <div class="col-lg-12">
                            <div class="breadcrumb-item">
                                <h2 class="breadcrumb-heading">Contact</h2>
                                <ul>
                                    <li>
                                        <a href="index.html">Home</a>
                                    </li>
                                    <li>Contact Us</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contact-form-area section-space-y-axis-100">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="contact-wrap">
                                <div class="contact-info text-white" data-bg-image="<c:url value = 'resources/assets/images/contact/1-1-370x500.jpg'/>">
                                    <h2 class="contact-title">Thông tin liên hệ:</h2>
                                    <p class="contact-desc">       
                                    </p>
                                    <ul class="contact-list">
                                        <li>
                                            <i class="pe-7s-call"></i>
                                            <a href="tel://123-456-789">123 456 789</a>
                                        </li>
                                        <li>
                                            <i class="pe-7s-mail"></i>
                                            <a href="mailto://vunganyen2000@gmail.com">vunganyen2000@gmail.com</a>
                                        </li>
                                        <li>
                                            <i class="pe-7s-map-marker"></i>
                                            <span>97 Man Thiện, phường Hiệp Phú, TP. Thủ Đức, TP.HCM</span>
                                        </li>
                                    </ul>
                                </div>
                                <form id="contact-form" class="contact-form" action="https://whizthemes.com/mail-php/mamunur/pronia/pronia.php">
                                <div><strong>
                                PetShop – Siêu thị cho Thú Cưng</strong></div>
                                <div>
                                Được thành lập từ tháng 10 năm 2018, siêu thị thú cưng PetShop ra đời nhằm cung cấp các sản phẩm thiết yếu cho pet. Đồng thời tạo ra một không gian mua sắm tiện nghi, hỗ trợ người  nuôi tối đa trong việc chăm sóc thú cưng hằng ngày.
                                Đến với PetShop, bạn có thể tìm thấy:</div>                           
                                <div> - Sản phẩm chính hãng, được nhập từ công ty và các nhà phân phối uy tín</div>
                                <div> - Không gian mua sắm tiện nghi, rộng rãi</div>
                                <div> - Đội ngũ nhân viên tư vấn, bán hàng thân thiện, nhiệt tình</div>
                                <div> - Nhiều ưu đãi khi mua sắm với chính sách tích điểm hấp dẫn</div>
                                <div> - Sứ mệnh: Đem đến những sản phẩm tốt nhất cho thú cưng, cung cấp dịch vụ mua sắm tiện nghi nhất cho người nuôi.</div>
                                <div> - Tầm nhìn: Trở thành thương hiệu bán lẻ đồ dùng thú cưng uy tín, được yêu thích, dẫn đầu thị trường trong dịch vụ giao hàng thú cưng tiện lợi.</div>
                                <div> - Mục tiêu: Xây dựng đội ngũ tư vấn viên, bán hàng, chăm sóc khách hàng chuyên nghiệp. Tìm kiếm và hợp tác với các nhà phân phối uy tín. Không ngừng đổi mới và nâng cao chất lượng dịch vụ, đem đến cho khách hàng sự hài lòng và tin tưởng nhất.</div>
                               	<br>
                               	<div><i class="fa fa-heart text-danger"> Gia đình PetShop luôn sẵn sàng đồng hành cùng các Sen trong việc chăm sóc, nuôi dạy Pet yêu!!</i></div>
                                </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contact-with-map">
                <div class="contact-map">
                    <iframe class="contact-map-size" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d193595.15830869428!2d-74.119763973046!3d40.69766374874431!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c24fa5d33f083b%3A0xc80b8f06e177fe62!2sNew%20York%2C%20NY%2C%20USA!5e0!3m2!1sen!2sbd!4v1613802584124!5m2!1sen!2sbd" allowfullscreen="" loading="lazy">
                    </iframe>
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