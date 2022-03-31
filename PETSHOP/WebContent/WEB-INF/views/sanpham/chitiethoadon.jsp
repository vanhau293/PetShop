<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%> 
<base href="${pageContext.servletContext.contextPath}/">
<html lang="zxx">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>PetShop - Cart</title>
<meta name="robots" content="index, follow" />
<meta name="description"
	content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value = 'resources/assets/images/logo.jpg'/>" />

<!-- CSS
    ============================================ -->

<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/bootstrap.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/font-awesome.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/Pe-icon-7-stroke.css'/>" />
<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/animate.min.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/swiper-bundle.min.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/nice-select.css'/>">
<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/magnific-popup.min.css'/>" />
<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/ion.rangeSlider.min.css'/>" />

<!-- Style CSS -->
<link rel="stylesheet"
	href="<c:url value = 'resources/assets/css/style.css'/>">

</head>

<body>
	<div class="preloader-activate preloader-active open_tm_preloader">
		<div class="preloader-area-wrap">
			<div
				class="spinner d-flex justify-content-center align-items-center h-100">
				<div class="bounce1"></div>
				<div class="bounce2"></div>
				<div class="bounce3"></div>
			</div>
		</div>
	</div>
	<div class="main-wrapper">

		<!-- Begin Main Header Area -->
		<%@ include file="/WEB-INF/views/demo/header.jsp"%>
		<!-- Main Header Area End Here -->

		<!-- Begin Main Content Area -->
		<main class="main-content">
		<div class="breadcrumb-area breadcrumb-height"
			data-bg-image="<c:url value = 'resources/assets/images/breadcrumb/bg/hinhbia.jpg'/>">
			<div class="container h-100">
				<div class="row h-100">
					<div class="col-lg-12">
						<div class="breadcrumb-item">
							<h2 class="breadcrumb-heading">Cart Page</h2>
							<ul>
								<li><a href="index.html">Home</a></li>
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
						<div class="table-content table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th class="product-thumbnail">Hình ảnh</th>
										<th class="cart-product-name">Sản phẩm</th>
										<th class="product-price">Giá tiền</th>
										<th class="product-quantity">Số lượng</th>
										<th class="product-subtotal">Tổng tiền</th>
										<th class="product-subtotal">Ghi chú</th>
									</tr>
								</thead>
								<c:forEach var="ds" items="${cthd}">
										<tbody>
											<tr>
												<td class="product-img"><a
													href="view/single/${ds.sanPham.maSP}.htm"> <img
														width="50" height="90"
														src="<c:url value = '${ds.sanPham.hinhAnh}'/>"
														alt="Cart Thumbnail">
												</a></td>
												<td class="product-name"><a
													href="view/single/${ds.sanPham.maSP}.htm">${ds.sanPham.tenSP}</a></td>
												<td class="product-price"><span class="amount"><fmt:formatNumber type="currency" currencySymbol="VND" value="${ds.sanPham.gia}"/></span></td>
												<td class="product-name"><a>${ds.soLuong}</a></td>										
												<td class="product-subtotal"> <fmt:formatNumber type="currency" currencySymbol="VND" value="${ds.sanPham.gia*ds.soLuong}"/></td>
												<td>
													<button name="updateCart" class="btn">${ds.ghiChu}</button>
												</td>
											</tr>
										</tbody>
								</c:forEach>
							</table>
						</div>

							</div>
						</div>


					</div>
				</div>
			</div>
		</main>
		<!-- Main Content Area End Here -->

		<!-- Begin Footer Area -->
		<%@ include file="/WEB-INF/views/demo/footer.jsp"%>
		<!-- Footer Area End Here -->

		<!-- Begin Scroll To Top -->
		<a class="scroll-to-top" href=""> <i class="fa fa-angle-double-up"></i>
		</a>
		<!-- Scroll To Top End Here -->

	</div>

	<!-- Global Vendor, plugins JS -->

	<!-- JS Files
    ============================================ -->

	<script
		src="<c:url value = 'resources/assets/js/vendor/bootstrap.bundle.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/vendor/jquery-3.6.0.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/vendor/jquery-migrate-3.3.2.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/vendor/jquery.waypoints.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/vendor/modernizr-3.11.2.min.js'/>"></script>
	<script src="<c:url value = 'resources/assets/js/plugins/wow.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/plugins/swiper-bundle.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/plugins/jquery.nice-select.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/plugins/parallax.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/plugins/jquery.magnific-popup.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/plugins/tippy.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/plugins/ion.rangeSlider.min.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/plugins/mailchimp-ajax.js'/>"></script>
	<script
		src="<c:url value = 'resources/assets/js/plugins/jquery.counterup.js'/>"></script>

	<!--Main JS (Common Activation Codes)-->
	<script src="<c:url value = 'resources/assets/js/main.js'/>"></script>

</body>

</html>