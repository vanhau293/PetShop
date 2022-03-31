<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<html lang="zxx">
<base href="${pageContext.servletContext.contextPath}/">
<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>PetShop - Shop Grid Fullwidth</title>
<meta name="robots" content="index, follow" />
<meta name="description"
	content="Pronia plant store bootstrap 5 template is an awesome website template for any home plant shop.">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value = 'resources/assets/images/favicon.ico'/>" />

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
							<h2 class="breadcrumb-heading">Shop</h2>
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>Shop Grid Fullwidth</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="shop-area section-space-y-axis-100">
			<div class="container">
				<div class="row">
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
					<div class="col-lg-12">
						<div class="product-topbar">
							<ul>
								<li class="page-count">
									<!--------------------- tìm kiếm ---------------------> <span
									id="result1"></span>
									<form class="d-inline-flex" action="view/timkiem.htm">
										<input name="searchInput" id="searchInput"
											class="form-control me-2" type="search"
											placeholder="Tìm kiếm" aria-label="Search">

										<button name="btnsearch" id="searchProduct"
											class="btn btn-custom-size lg-size btn-pronia-primary"
											type="submit">Tìm</button>
									</form> <!--------------------------------------------------->
								</li>
								<li class="product-view-wrap">
									<ul class="nav" role="tablist">
										<li class="grid-view" role="presentation"><a
											class="active" id="grid-view-tab" data-bs-toggle="tab"
											href="#grid-view" role="tab" aria-selected="true"> <i
												class="fa fa-th"></i>
										</a></li>
										<li class="list-view" role="presentation"><a
											id="list-view-tab" data-bs-toggle="tab" href="#list-view"
											role="tab" aria-selected="true"> <i class="fa fa-th-list"></i>
										</a></li>
									</ul>
								</li>
								
							</ul>
						</div>

						<div class="tab-content">
							<jsp:useBean id="pagedListHolder" scope="request"
								type="org.springframework.beans.support.PagedListHolder" />
							<c:url value="view/index.htm" var="pagedLink">
								<c:param name="p" value="~" />
							</c:url>
							<div class="tab-pane fade show active" id="grid-view"
								role="tabpanel" aria-labelledby="grid-view-tab">
								<div class="product-grid-view row g-y-20">
									<c:forEach var="ds" items="${pagedListHolder.pageList}">
										<div class="col-lg-3 col-md-4 col-sm-6">
											<div class="product-item">

												<div class="product-img">
													<a href="view/single/${ds.maSP}.htm"> <img
														class="primary-img" src="<c:url value = '${ds.hinhAnh}'/>"
														alt="Product Images"> <img class="secondary-img"
														src="<c:url value = '${ds.hinhAnh}'/>"
														alt="Product Images">
													</a>
													<div class="product-add-action">
														<ul>
															<li><a href="view/wishlist1/${ds.maSP}.htm"
																data-tippy="Add to wishlist" data-tippy-inertia="true"
																data-tippy-animation="shift-away" data-tippy-delay="50"
																data-tippy-arrow="true" data-tippy-theme="sharpborder">
																	<i class="pe-7s-like"></i>
															</a></li>

															<li><a href="view/cart1/${ds.maSP}.htm"
																" data-tippy="Add to cart" data-tippy-inertia="true"
																data-tippy-animation="shift-away" data-tippy-delay="50"
																data-tippy-arrow="true" data-tippy-theme="sharpborder">
																	<i class="pe-7s-cart"></i>
															</a></li>
														</ul>
													</div>
												</div>
												<div class="product-content">
													<a class="product-name" href="view/single/${ds.maSP}.htm">${ds.tenSP}</a>
													<div class="price-box pb-1">
														<span class="new-price"><fmt:formatNumber
																type="currency" currencySymbol="VND" value="${ds.gia}" /></span>
													</div>
													<div class="rating-box">
														<ul>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</c:forEach>
								</div>
							</div>

							<div class="tab-pane fade" id="list-view" role="tabpanel"
								aria-labelledby="list-view-tab">
								<div class="product-list-view row g-y-30">
									<c:forEach var="ds" items="${pagedListHolder.pageList}">
										<div class="col-12">
											<div class="product-item">
												<div class="product-img">
													<a href="view/single/${ds.maSP}.htm"> <img
														class="primary-img" src="<c:url value = '${ds.hinhAnh}'/>"
														alt="Product Images"> <img class="secondary-img"
														src="<c:url value = '${ds.hinhAnh}'/>"
														alt="Product Images">
													</a>
												</div>
												<div class="product-content">
													<a class="product-name" href="view/single/${ds.maSP}.htm">${ds.tenSP}</a>
													<a>Thương hiệu: ${ds.thuongHieu}</a>
													<div class="price-box pb-1">
														<span class="new-price">${ds.gia} Đ</span>
													</div>
													<div class="rating-box">
														<ul>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
															<li><i class="fa fa-star"></i></li>
														</ul>
													</div>

													<p class="short-desc mb-0">${ds.moTa}</p>
													<div class="product-add-action">
														<ul>
															<li><a href="view/wishlist1/${ds.maSP}.htm"
																data-tippy="Add to wishlist" data-tippy-inertia="true"
																data-tippy-animation="shift-away" data-tippy-delay="50"
																data-tippy-arrow="true" data-tippy-theme="sharpborder">
																	<i class="pe-7s-like"></i>
															</a></li>

															<li><a href="view/cart1/${ds.maSP}.htm" data-tippy="Add to cart"
																data-tippy-inertia="true"
																data-tippy-animation="shift-away" data-tippy-delay="50"
																data-tippy-arrow="true" data-tippy-theme="sharpborder">
																	<i class="pe-7s-cart"></i>
															</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>

							<br>
							<tg:paging pagedListHolder="${pagedListHolder}"
								pagedLink="${pagedLink}" />

						</div>


						<!-- 						<div class="pagination-area">
							<nav aria-label="Page navigation example">
								<ul class="pagination justify-content-center">
									<li class="page-item active"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#"
										aria-label="Next">&raquo;</a></li>
								</ul>
							</nav>
						</div> -->
						<%-- 						<br>
						<tg:paging pagedListHolder="${pagedListHolder}"
						pagedLink="${pagedLink}" />  --%>

					</div>
				</div>
			</div>
		</div>
		</main>
		<!-- Main Content Area End Here -->

		<!-- Begin Footer Area -->
		<%@ include file="/WEB-INF/views/demo/footer.jsp"%>
		<!-- Footer Area End Here -->

		<!-- Begin Modal Area -->
		<div class="modal quick-view-modal fade" id="quickModal"
			data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
			aria-labelledby="quickModal" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close" data-tippy="Close" data-tippy-inertia="true"
							data-tippy-animation="shift-away" data-tippy-delay="50"
							data-tippy-arrow="true" data-tippy-theme="sharpborder">
						</button>
					</div>
					<div class="modal-body">
						<div class="modal-wrap row">
							<div class="col-lg-6">
								<div class="modal-img">
									<div class="swiper-container modal-slider">
										<div class="swiper-wrapper">
											<div class="swiper-slide">
												<a href="#" class="single-img"> <img class="img-full"
													src="<c:url value = 'resources/assets/images/product/large-size/1-1-570x633.jpg'/>"
													alt="Product Image">
												</a>
											</div>
											<div class="swiper-slide">
												<a href="#" class="single-img"> <img class="img-full"
													src="<c:url value = 'resources/assets/images/product/large-size/1-2-570x633.jpg'/>"
													alt="Product Image">
												</a>
											</div>
											<div class="swiper-slide">
												<a href="#" class="single-img"> <img class="img-full"
													src="<c:url value = 'resources/assets/images/product/large-size/1-3-570x633.jpg'/>"
													alt="Product Image">
												</a>
											</div>
											<div class="swiper-slide">
												<a href="#" class="single-img"> <img class="img-full"
													src="<c:url value = 'resources/assets/images/product/large-size/1-4-570x633.jpg'/>"
													alt="Product Image">
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-6 pt-5 pt-lg-0">
								<div class="single-product-content">
									<h2 class="title">American Marigold</h2>
									<div class="price-box">
										<span class="new-price">$23.45</span>
									</div>
									<div class="rating-box-wrap">
										<div class="rating-box">
											<ul>
												<li><i class="fa fa-star"></i></li>
												<li><i class="fa fa-star"></i></li>
												<li><i class="fa fa-star"></i></li>
												<li><i class="fa fa-star"></i></li>
												<li><i class="fa fa-star"></i></li>
											</ul>
										</div>
										<div class="review-status">
											<a href="#">( 1 Review )</a>
										</div>
									</div>
									<div class="selector-wrap color-option">
										<span class="selector-title border-bottom-0">Color</span> <select
											class="nice-select wide border-bottom-0 rounded-0">
											<option value="default">Black & White</option>
											<option value="blue">Blue</option>
											<option value="green">Green</option>
											<option value="red">Red</option>
										</select>
									</div>
									<div class="selector-wrap size-option">
										<span class="selector-title">Size</span> <select
											class="nice-select wide rounded-0">
											<option value="medium">Medium Size & Poot</option>
											<option value="large">Large Size With Poot</option>
											<option value="small">Small Size With Poot</option>
										</select>
									</div>
									<p class="short-desc">Lorem ipsum dolor sit amet,
										consectetur adipisic elit, sed do eiusmod tempo incid ut
										labore et dolore magna aliqua. Ut enim ad minim veniam, quis
										nostru exercitation ullamco laboris nisi ut aliquip ex ea
										commodo consequat. Duis aute irure dolor in reprehenderit in
										voluptate</p>
									<ul class="quantity-with-btn">
										<li class="quantity">
											<div class="cart-plus-minus">
												<input class="cart-plus-minus-box" value="1" type="text">
											</div>
										</li>
										<li class="add-to-cart"><a
											class="btn btn-custom-size lg-size btn-pronia-primary"
											href="cart.html">Add to cart</a></li>
										<li class="wishlist-btn-wrap"><a
											class="custom-circle-btn" href="wishlist.html"> <i
												class="pe-7s-like"></i>
										</a></li>
										<li class="compare-btn-wrap"><a class="custom-circle-btn"
											href="compare.html"> <i class="pe-7s-refresh-2"></i>
										</a></li>
									</ul>
									<ul class="service-item-wrap pb-0">
										<li class="service-item">
											<div class="service-img">
												<img
													src="<c:url value = 'resources/assets/images/shipping/icon/car.png'/>"
													alt="Shipping Icon">
											</div>
											<div class="service-content">
												<span class="title">Free <br> Shipping
												</span>
											</div>
										</li>
										<li class="service-item">
											<div class="service-img">
												<img
													src="<c:url value = 'resources/assets/images/shipping/icon/card.png'/>"
													alt="Shipping Icon">
											</div>
											<div class="service-content">
												<span class="title">Safe <br> Payment
												</span>
											</div>
										</li>
										<li class="service-item">
											<div class="service-img">
												<img
													src="<c:url value = 'resources/assets/images/shipping/icon/service.png'/>"
													alt="Shipping Icon">
											</div>
											<div class="service-content">
												<span class="title">Safe <br> Payment
												</span>
											</div>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal Area End Here -->

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