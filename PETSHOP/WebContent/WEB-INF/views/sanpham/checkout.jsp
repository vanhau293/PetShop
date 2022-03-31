<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="zxx">
<base href="${pageContext.servletContext.contextPath}/">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>PetShop - Checkout</title>
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
							<h2 class="breadcrumb-heading">Checkout Page</h2>
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>Checkout</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="checkout-area section-space-y-axis-100">
			<div class="container">
				<form:form action="view/datHang.htm" method="post">
					<div class="row">
						<div class="col-lg-6 col-12">

							<div class="checkbox-form">
								<h3>Thông tin đặt hàng</h3>
								<div class="row">
									<div class="col-md-12">
										<label>Họ tên: ${account.tenKH}</label>
										<hr>
									</div>
									<div class="col-md-12">
										<label>Số điện thoại: ${account.sdt}</label>
										<hr>
									</div>
									<div class="col-md-12">
										<label>Địa chỉ: ${account.diaChi}</label>
										<hr>
									</div>
									<div class="col-md-12">
										<label>Email: ${account.email}</label>
										<hr>
									</div>
									<div class="col-md-6"></div>
									<div class="col-md-6">
										<a href="user/thongtinkh.htm" class="cart-product-name">Chỉnh
											sửa thông tin đặt hàng</a>
									</div>
									<div class="order-notes">
										<div class="checkout-form-list checkout-form-list-2">
											<label>Ghi chú</label>
											<textarea name="note" id="checkout-mess" cols="30" rows="10"
												placeholder="Ghi chú"></textarea>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-12">
							<div class="your-order">
								<h3>Đơn hàng của bạn</h3>
								<div class="your-order-table table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th class="cart-product-name">Sản phẩm</th>
												<th class="cart-product-total">Toàn bộ</th>
											</tr>
										</thead>

										<tbody>
										<c:forEach var="ds" items="${list}">
											<tr class="cart_item">
												<td class="Tên sản phẩm">${ds.sanPham.tenSP} x <strong
													class="product-quantity">${ds.soLuong}</strong></td>
												<td class="cart-product-total"><span class="amount"><fmt:formatNumber
															type="currency" currencySymbol="VND" value="${ds.sanPham.gia*ds.soLuong}" /></span></td>
											</tr>
											</c:forEach>
										</tbody>

										<tfoot>
											<tr class="cart-subtotal">
												<th>Tổng phụ giỏ hàng</th>
												<td><span class="amount"><fmt:formatNumber
															type="currency" currencySymbol="VND" value="${tien}" /></span></td>
											</tr>
											<tr class="order-total">
												<th>Tổng đơn đặt hàng </th>
												<td><strong><span class="amount"><fmt:formatNumber
																type="currency" currencySymbol="VND" value="${tien}" /></span></strong></td>
											</tr>
										</tfoot>
									</table>
								</div>
								<div class="payment-method">
									<div class="payment-accordion">
										<div id="accordion">
											<div class="card">
												<div class="card-header" id="#payment-1">
													<h5 class="panel-title">
														<a href="#" class="" data-bs-toggle="collapse"
															data-bs-target="#collapseOne" aria-expanded="true">
															Chuyển khoản trực tiếp. </a>
													</h5>
												</div>
												<div id="collapseOne" class="collapse show"
													data-bs-parent="#accordion">
													<div class="card-body">
														<p>Thực hiện thanh toán của bạn trực tiếp vào tài khoản ngân hàng của chúng tôi. 
														Vui lòng sử dụng ID đơn đặt hàng của bạn làm tham chiếu thanh toán. 
														Đơn đặt hàng của bạn sẽ không được giao cho đến khi tiền đã hết trong tài khoản của chúng tôi.</p>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="#payment-2">
													<h5 class="panel-title">
														<a href="#" class="collapsed" data-bs-toggle="collapse"
															data-bs-target="#collapseTwo" aria-expanded="false">
															Thanh toán séc.</a>
													</h5>
												</div>
												<div id="collapseTwo" class="collapse"
													data-bs-parent="#accordion">
													<div class="card-body">
														<p>Thực hiện thanh toán của bạn trực tiếp vào tài khoản ngân hàng của chúng tôi. 
														Vui lòng sử dụng ID đơn đặt hàng của bạn làm tham chiếu thanh toán. 
														Đơn đặt hàng của bạn sẽ không được giao cho đến khi tiền đã hết trong tài khoản của chúng tôi. </p>
													</div>
												</div>
											</div>
											<div class="card">
												<div class="card-header" id="#payment-3">
													<h5 class="panel-title">
														<a href="#" class="collapsed" data-bs-toggle="collapse"
															data-bs-target="#collapseThree" aria-expanded="false">
															PayPal. </a>
													</h5>
												</div>
												<div id="collapseThree" class="collapse"
													data-bs-parent="#accordion">
													<div class="card-body">
														<p>Thực hiện thanh toán của bạn trực tiếp vào tài khoản ngân hàng của chúng tôi.
														 Vui lòng sử dụng ID đơn đặt hàng của bạn làm tham chiếu thanh toán. 
														 Đơn đặt hàng của bạn sẽ không được giao cho đến khi tiền đã hết trong tài khoản của chúng tôi. </p>
													</div>
												</div>
											</div>
										</div>
										<br>
										<div class="order-button-payment">
											<button name="btnDatHang"
												class="btn btn-custom-size lg-size btn-pronia-primary">Đặt
												hàng</button>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</form:form>
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