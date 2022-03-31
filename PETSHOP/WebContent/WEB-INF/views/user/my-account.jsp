<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="zxx">
<base href="${pageContext.servletContext.contextPath}/">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>PetShop - My Account</title>
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
							<h2 class="breadcrumb-heading">My Account Page</h2>
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>My Account</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="account-page-area section-space-y-axis-100">
			<div class="container">
				<div class="row">
					<div class="col-lg-3">
						<ul class="nav myaccount-tab-trigger" id="account-page-tab"
							role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="account-dashboard-tab" data-bs-toggle="tab"
								href="#account-dashboard" role="tab"
								aria-controls="account-dashboard" aria-selected="true">Dashboard</a>
							</li>
							<li class="nav-item"><a class="nav-link"
								id="account-orders-tab" data-bs-toggle="tab"
								href="#account-orders" role="tab" aria-controls="account-orders"
								aria-selected="false">Orders</a></li>
							<li class="nav-item"><a class="nav-link"
								id="account-details-tab" data-bs-toggle="tab"
								href="#account-details" role="tab"
								aria-controls="account-details" aria-selected="false">Thông
									tin cá nhân</a></li>
							<li class="nav-item"><a class="nav-link"
								id="account-address-tab" data-bs-toggle="tab"
								href="#account-address" role="tab"
								aria-controls="account-address" aria-selected="false">Đổi
									mật khẩu</a></li>
							<li class="nav-item"><a class="nav-link"
								id="account-logout-tab" href="login-register.html" role="tab"
								aria-selected="false">Logout</a></li>
						</ul>
					</div>
					<div class="col-lg-9">
						<div class="tab-content myaccount-tab-content"
							id="account-page-tab-content">
							<div class="tab-pane fade show active" id="account-dashboard"
								role="tabpanel" aria-labelledby="account-dashboard-tab">
								<div class="myaccount-dashboard">
									<p>
										Hello <b>Pronia</b> (not Pronia? <a href="login-register.html">Sign
											out</a>)
									</p>
									<p>
										From your account dashboard you can view your recent orders,
										manage your shipping and billing addresses and <a href="#">edit
											your password and account details</a>.
									</p>
								</div>
							</div>
							<div class="tab-pane fade" id="account-orders" role="tabpanel"
								aria-labelledby="account-orders-tab">
								<div class="myaccount-orders">
									<h4 class="small-title">MY ORDERS</h4>
									<div class="table-responsive">
										<table class="table table-bordered table-hover">
											<tbody>
												<tr>
													<th>ORDER</th>
													<th>DATE</th>
													<th>STATUS</th>
													<th>TOTAL</th>
													<th></th>
												</tr>
												<tr>
													<td><a class="account-order-id" href="#">#5364</a></td>
													<td>Mar 27, 2019</td>
													<td>On Hold</td>
													<td>$162.00 for 2 items</td>
													<td><a href="#" class="btn btn-dark"><span>View</span></a>
													</td>
												</tr>
												<tr>
													<td><a class="account-order-id" href="#">#5356</a></td>
													<td>Mar 27, 2019</td>
													<td>On Hold</td>
													<td>$162.00 for 2 items</td>
													<td><a href="#" class="btn btn-dark"><span>View</span></a>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<div class="tab-pane fade" id="account-address" role="tabpanel"
								aria-labelledby="account-address-tab">
								<div class="myaccount-address">
								<div><span style="color: red">${message}</span> </div>	
									<form:form action="user/pass.htm"
										modelAttribute="account" class="myaccount-form" method="post">
										<div class="myaccount-form-inner">
											<div class="single-input single-input-half">
												<label>Tên đăng nhập </label>
												<h4 style="color: black;">${tdn}</h4>
											</div>
											<div class="single-input">
												<label>Mật khẩu cũ</label>
												 <input name ="pass" type="password" placeholder="Mật khẩu"></input>
												<%-- <form:input path="taiKhoan2.matKhau" type="password" placeholder="Mật khẩu"></form:input>  --%>
												<span style="color: red">${LoiDinhDangMatKhau}</span>
											</div>
											<div class="single-input">
												<label>Mật khẩu mới</label>
												 <input name="pass1" type="password" placeholder="Mật khẩu"></input> 
												<span style="color: red">${LoiDinhDangMatKhau1}</span>
											</div>
											<div class="single-input">
												<label>Nhập lại mật khẩu mới</label>
												<input name="pass2" type="password" placeholder="Mật khẩu">
												<span style="color: red">${LoiDinhDangMatKhau2}</span>
											</div>
											<div class="single-input">
												<button name="passEdit"
													class="btn btn-custom-size lg-size btn-pronia-primary"
													type="submit">
													<span>LƯU</span>
												</button>
											</div>
											</div>
										</form:form> 
								</div>
							</div>
							<div class="tab-pane fade" id="account-details" role="tabpanel"
								aria-labelledby="account-details-tab">
								<div class="myaccount-details">
									<div><span style="color: red">${message}</span> </div>	
									<form:form action="user/my-account.htm"
										modelAttribute="account" class="myaccount-form">
										<div class="myaccount-form-inner">
											<div class="single-input single-input-half">
												<label>Họ tên</label>
												<form:input path="tenKH" type="text" placeholder="Họ tên"></form:input>
												<span style="color: red">${LoiDinhDangTen}</span>
											</div>
											<div class="single-input single-input-half">
												<label>Số điện thoại</label>
												<form:input path="sdt" type="text"
													placeholder="số điện thoại"></form:input>
												<span style="color: red">${LoiDinhDangSDT}</span>
											</div>
											<div class="single-input single-input-half">
												<label>Địa chỉ</label>
												<form:input path="diaChi" type="text" placeholder="Địa chỉ"></form:input>
												<span style="color: red">${LoiDinhDangDiaChi}</span>
											</div>
											<div class="single-input single-input-half">
												<label>Email</label>
												<form:input path="email" type="text" placeholder="Email"></form:input>
												<span style="color: red">${LoiDinhDangEmail}</span>
											</div>
											<div class="single-input">
												<button name="btnEdit"
													class="btn btn-custom-size lg-size btn-pronia-primary"
													type="submit">
													<span>LƯU</span>
												</button>
											</div>
										</div>
									</form:form>
								</div>
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