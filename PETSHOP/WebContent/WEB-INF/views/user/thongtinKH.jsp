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
<title>PetShop - Login | Register</title>
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

		<div class="login-register-area section-space-y-axis-100">
			<div class="container">
			
         <!---------------------------------------------------->
	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  		<symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
   			<path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z" />
  		</symbol>
  		<symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
   			 <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z" />
 		</symbol>
  		<symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
    		<path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
 		 </symbol>
	</svg>

					<li style="display: ${tbThanhCong}">
					<div class="alert alert-success d-flex align-items-center"
						role="alert">
						<svg class="bi flex-shrink-0 me-2" width="24" height="24"
							role="img" aria-label="Success:">
							<use xlink:href="#check-circle-fill" /></svg>
						<div>Cập nhật thành công! </div>
					</div>
					</li>
					<li style="display: ${tbThatBai}">
					<div class="alert alert-danger d-flex align-items-center"
						role="alert">
						<svg class="bi flex-shrink-0 me-2" width="24" height="24"
							role="img" aria-label="Danger:">
							<use xlink:href="#exclamation-triangle-fill" /></svg>
						<div>Cập nhật thất bại!</div>
					</div>
					</li>
					<!----------------------------------------------------> 
			
				<div class="row">
					<div class="col-lg-6">
						<div>
							<span style="color: red">${message}</span>
						</div>
						<form:form action="user/thongtinkh.htm" modelAttribute="account"
							class="myaccount-form">
							<div class="login-form">
								<h4 class="login-title">Thông tin cá nhân</h4>
								<div class="row">
									<div class="col-lg-12">
										<label>Họ tên</label>
										<form:input path="tenKH" type="text" placeholder="Họ tên"></form:input>
										<span style="color: red">${LoiDinhDangTen}</span>
									</div>
									<div class="col-md-6 col-12">
										<label>Số điện thoại</label>
										<form:input path="sdt" type="text" placeholder="số điện thoại"></form:input>
										<span style="color: red">${LoiDinhDangSDT}</span>
									</div>
									<div class="col-md-6 col-12">
										<label>Địa chỉ</label>
										<form:input path="diaChi" type="text" placeholder="Địa chỉ"></form:input>
										<span style="color: red">${LoiDinhDangDiaChi}</span>
									</div>
									<div class="col-lg-12">
										<label>Email</label>
										<form:input path="email" type="text" placeholder="Email"></form:input>
										<span style="color: red">${LoiDinhDangEmail}</span>
									</div>
									<div class="col-lg-12 pt-5">
										<button name="btnEdit"
											class="btn btn-custom-size lg-size btn-pronia-primary">LƯU</button>
									</div>
								</div>
							</div>
						</form:form>
					</div>
					<div class="col-lg-6 pt-5 pt-lg-0">
						<div>
							<span style="color: red">${message}</span>
						</div>
						<form:form action="user/pass.htm" modelAttribute="account"
							class="myaccount-form" method="post">
							<div class="login-form">
								<h4 class="login-title">Đổi mật khẩu</h4>
								<div class="row">
									<div class="col-lg-12">
										<label>Tên đăng nhập: ${tdn} </label>
										<%-- <h4 style="color: black;">${tdn}</h4> --%>
									</div>
									<div class="col-lg-12">
										<label>Mật khẩu cũ</label> <input name="pass" type="password"
											placeholder="Mật khẩu"></input> <span style="color: red">${LoiDinhDangMatKhau}</span>
									</div>
									<div class="col-md-12">
										<label>Mật khẩu mới</label> <input name="pass1"
											type="password" placeholder="Mật khẩu"></input> <span
											style="color: red">${LoiDinhDangMatKhau1}</span>
									</div>
									<div class="col-lg-12">
										<label>Nhập lại mật khẩu mới</label> <input name="pass2"
											type="password" placeholder="Mật khẩu"> <span
											style="color: red">${LoiDinhDangMatKhau2}</span>
									</div>

									<div class="col-12">
										<button name="passEdit"
											class="btn btn-custom-size lg-size btn-pronia-primary">LƯU</button>
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