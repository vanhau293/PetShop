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

					<li style="display: ${tbTonTai}">
					<div class="alert alert-primary d-flex align-items-center"
						role="alert">
						<svg class="bi flex-shrink-0 me-2" width="24" height="24"
							role="img" aria-label="Info:">
							<use xlink:href="#info-fill" /></svg>
						<div>Sản phẩm này đã được thêm vào trước đó</div>
						
					</div>
					</li>
					<li style="display: ${tbThanhCong}">
					<div class="alert alert-success d-flex align-items-center"
						role="alert">
						<svg class="bi flex-shrink-0 me-2" width="24" height="24"
							role="img" aria-label="Success:">
							<use xlink:href="#check-circle-fill" /></svg>
						<div>Thao tác thành công! </div>
					</div>
					</li>
					<li style="display: ${tbThatBai}">
					<div class="alert alert-danger d-flex align-items-center"
						role="alert">
						<svg class="bi flex-shrink-0 me-2" width="24" height="24"
							role="img" aria-label="Danger:">
							<use xlink:href="#exclamation-triangle-fill" /></svg>
						<div>Thao tác thất tại! Sản phẩm này đã hết hàng</div>
					</div>
					</li>
					<!---------------------------------------------------->    			
			
			
				<div class="row">
					<div class="col-12">

						<div class="table-content table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th class="product_remove">Xóa</th>
										<th class="product-thumbnail">Hình ảnh</th>
										<th class="cart-product-name">Sản phẩm</th>
										<th class="product-price">Giá tiền</th>
										<th class="product-quantity">Số lượng</th>
										<th class="product-subtotal">Tổng tiền</th>
										<th class="product-subtotal">Cập nhật</th>
									</tr>
								</thead>
								<c:forEach var="ds" items="${list}">
									<form:form action="view/updateCart/${ds.sanPham.maSP}.htm"
										method="post">
										<tbody>
											<tr>
												<td class="product_remove"><a
													href="view/removeCart/${ds.sanPham.maSP}.htm"> <i
														class="pe-7s-close" data-tippy="Remove"
														data-tippy-inertia="true"
														data-tippy-animation="shift-away" data-tippy-delay="50"
														data-tippy-arrow="true" data-tippy-theme="sharpborder"></i>
												</a></td>
												<td class="product-img"><a
													href="view/single/${ds.sanPham.maSP}.htm"> <img
														width="50" height="90"
														src="<c:url value = '${ds.sanPham.hinhAnh}'/>"
														alt="Cart Thumbnail">
												</a></td>
												<td class="product-name"><a
													href="view/single/${ds.sanPham.maSP}.htm">${ds.sanPham.tenSP}</a></td>
												<td class="product-price"><span class="amount"><fmt:formatNumber type="currency" currencySymbol="VND" value="${ds.sanPham.gia}"/></span></td>
												<td class="quantity">
													<div class="cart-plus-minus">
														<input name="sl" class="cart-plus-minus-box"
															value="${ds.soLuong}" type="text">
														<div class="dec qtybutton">
															<i class="fa fa-minus"></i>
														</div>
														<div class="inc qtybutton">

															<i class="fa fa-plus"></i>
														</div>
													</div>
												</td>
												
												<td class="product-subtotal"> <fmt:formatNumber type="currency" currencySymbol="VND" value="${ds.sanPham.gia*ds.soLuong}"/></td>
												<td>
													<button name="updateCart" class="btn">Cập nhật</button>
												</td>
											</tr>

										</tbody>
									</form:form>
								</c:forEach>
							</table>
						</div>
						<div class="row">
						<form:form action="view/muaHang.htm">
							<div class="col-11">
								<div class="coupon-all">
									<div class="coupon"></div>
									<div class="coupon2">
										<ul>
											<li><h4>
													Tổng tiền: <fmt:formatNumber type="currency" currencySymbol="VND" value="${tien}"/>
												</h4></li>
										</ul>
										<input class="button" name="mua" value="Mua hàng"
											type="submit">
									</div>
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