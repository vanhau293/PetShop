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
<title>PetShop - Pet Supplies Store</title>
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

		<!-- Begin Slider Area -->
		<div class="slider-area">

			<!-- Main Slider -->
			<div class="swiper-container main-slider swiper-arrow with-bg_white">
				<div class="swiper-wrapper">
					<div class="swiper-slide animation-style-01">
						<div class="slide-inner style-1 bg-height"
							data-bg-image="<c:url value = 'resources/assets/images/slider/bg/1-1.jpg'/>">
							<div class="container">
								<div class="row">
									<div class="col-lg-6 order-2 order-lg-1 align-self-center">
										<div class="slide-content text-black">
											<span class="offer"></span>
											<h2 class="title">Sản Phẩm Mới nhất</h2>
											<p class="short-desc">PetShop, 100% Hàng chính hãng.</p>
											
										</div>
									</div>
									<div
										class="col-lg-6 col-md-8 offset-md-2 offset-lg-0 order-1 order-lg-2">
										<div class="inner-img">
											<div class="scene fill">
												<div class="expand-width" data-depth="0.2">
													<img
														src="<c:url value = '${spnew.hinhAnh}'/>"
														alt="Inner Image">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper-slide animation-style-01">
						<div class="slide-inner style-1 bg-height"
							data-bg-image="<c:url value = 'resources/assets/images/slider/bg/1-1.jpg'/>">
							<div class="container">
								<div class="row">
									<div class="col-lg-6 order-2 order-lg-1 align-self-center">
										<div class="slide-content text-black">
											<span class="offer"></span>
											<h2 class="title">Sản Phẩm Mới nhất</h2>
											<p class="short-desc">PetShop, 100% Hàng chính hãng.</p>
											
										</div>
									</div>
									<div
										class="col-lg-6 col-md-8 offset-md-2 offset-lg-0 order-1 order-lg-2">
										<div class="inner-img">
											<div class="scene fill">
												<div class="expand-width" data-depth="0.2">
													<img
														src="<c:url value = '${spnew.hinhAnh}'/>"
														alt="Inner Image">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Add Pagination -->
				<div class="swiper-pagination d-md-none"></div>

				<!-- Add Arrows -->
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>

		</div>
		<!-- Slider Area End Here -->

		<!-- Begin Shipping Area -->
		<div class="shipping-area section-space-top-100">
			<div class="container">
				<div class="shipping-bg">
					<div class="row shipping-wrap">
						<div class="col-lg-4 col-md-6">
							<div class="shipping-item">
								<div class="shipping-img">
									<img
										src="<c:url value = 'resources/assets/images/shipping/icon/car.png'/>"
										alt="Shipping Icon">
								</div>
								<div class="shipping-content">
									<h2 class="title">Free Shipping</h2>
									<p class="short-desc mb-0">Capped at $319 per order</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 mt-4 mt-md-0">
							<div class="shipping-item">
								<div class="shipping-img">
									<img
										src="<c:url value = 'resources/assets/images/shipping/icon/card.png'/>"
										alt="Shipping Icon">
								</div>
								<div class="shipping-content">
									<h2 class="title">Safe Payment</h2>
									<p class="short-desc mb-0">With our payment gateway</p>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
							<div class="shipping-item">
								<div class="shipping-img">
									<img
										src="<c:url value = 'resources/assets/images/shipping/icon/service.png'/>"
										alt="Shipping Icon">
								</div>
								<div class="shipping-content">
									<h2 class="title">Best Services</h2>
									<p class="short-desc mb-0">Friendly & Supper Services</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Shipping Area End Here -->

		<!-- Begin Product Area -->
		<div class="product-area section-space-top-100">
			<div class="container">
				<div class="section-title-wrap">
					<h2 class="section-title mb-0">Our Products</h2>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<ul class="nav product-tab-nav tab-style-1" id="myTab"
							role="tablist">
							<li class="nav-item" role="presentation"><a class="active"
								id="featured-tab" data-bs-toggle="tab" href="#featured"
								role="tab" aria-controls="featured" aria-selected="true">
									Sản phẩm nổi bật </a></li>
						</ul>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="featured"
								role="tabpanel" aria-labelledby="featured-tab">
								<div class="product-item-wrap row">
									<c:forEach var="ds" items="${list}">
										<div class="col-xl-3 col-md-4 col-sm-6">

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
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Product Area End Here -->

	<!-- Begin Banner Area -->
	<div class="banner-area section-space-top-90">
		<div class="container">
			<div class="row g-min-30 g-4">
				<div class="col-lg-8">
					<div class="banner-item img-hover-effect">
						<div class="banner-img">
							<img
								src="<c:url value = 'resources/assets/images/banner/A4.jpg'/>"
								alt="Banner Image">
						</div>
						<div class="banner-content text-position-left">
							<h3 class="title">
								Thức ăn cho thú cưng
							</h3>
							<div class="button-wrap">
								<a class="btn btn-custom-size btn-pronia-primary"
									href="view/index.htm">Mua sắm ngay</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="banner-item img-hover-effect">
						<div class="banner-img">
							<img
								src="<c:url value = 'resources/assets/images/banner/A2.jpg'/>"
								alt="Banner Image">
						</div>
						<div class="banner-content text-position-center">
							<h3 class="title">Đồ dùng thú cưng</h3>
							<div class="button-wrap">
								<a class="btn btn-custom-size lg-size btn-pronia-primary"
									href="view/index.htm">Mua sắm ngay</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="banner-item img-hover-effect">
						<div class="banner-img">
							<img
								src="<c:url value = 'resources/assets/images/banner/A1.jpg'/>"
								alt="Banner Image">
						</div>
						<div class="banner-content text-position-center">
							<h3 class="title">Quần áo thú cưng</h3>
							<div class="button-wrap">
								<a class="btn btn-custom-size lg-size btn-pronia-primary"
									href="view/index.htm">Mua sắm ngay</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="banner-item img-hover-effect">
						<div class="banner-img">
							<img
								src="<c:url value = 'resources/assets/images/banner/A3.jpg'/>"
								alt="Banner Image">
						</div>
						<div class="banner-content text-position-left">
							<h3 class="title">
								Y tế và thuốc
							</h3>
							<div class="button-wrap">
								<a class="btn btn-custom-size lg-size btn-pronia-primary"
									href="view/index.htm">Mua sắm ngay</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Banner Area End Here -->

	<!-- Begin Product Area -->

	<!-- Product Area End Here -->

	<!-- Begin Testimonial Area -->
	<div
		class="testimonial-area section-space-top-90 section-space-bottom-95">
		<div class="container-fluid">
			<div class="testimonial-bg"
				data-bg-image="<c:url value = 'resources/assets/images/testimonial/bg/1-1-1820x443.jpg'/>">
				<div class="section-title-wrap">
					<h2 class="section-title">Những câu nói hay về động vật</h2>
					<p class="section-desc mb-0">PetShop đã thu thập nhiều câu nói hay đáng suy ngẫm về động vật</p>
				</div>
			</div>
			<div class="container custom-space">
				<div class="swiper-container testimonial-slider with-bg">
					<div class="swiper-wrapper">
						<div class="swiper-slide testimonial-item">
							<div class="user-info mb-3">
								<div class="user-shape-wrap">
									<div class="user-img">
										<img
											src="<c:url value = 'resources/assets/images/testimonial/user/sg1.png'/>"
											alt="User Image">
									</div>
								</div>
								<div class="user-content text-charcoal">
									<h4 class="user-name mb-1">Câu nói hay về</h4>
									<span class="user-occupation">Chó</span>
								</div>
							</div>
							<p class="user-comment mb-6">Khi bạn quyết định nuôi một chú chó,
							là bạn phải quyết định nổi đâu khi mất đi chúng!</p>
						</div>
						<div class="swiper-slide testimonial-item">
							<div class="user-info mb-3">
								<div class="user-shape-wrap">
									<div class="user-img">
										<img
											src="<c:url value = 'resources/assets/images/testimonial/user/sg2.png'/>"
											alt="User Image">
									</div>
								</div>
								<div class="user-content text-charcoal">
									<h4 class="user-name mb-1">Câu nói hay về</h4>
									<span class="user-occupation">Mèo</span>
								</div>
							</div>
							<p class="user-comment mb-6">Con mèo hoàn toàn trung thực với cảm xúc của nó.
							Con người, vì ký do này hay khác, có thể giấu đi cảm xúc thật, nhưng con mèo thì không.</p>
						</div>
						<div class="swiper-slide testimonial-item">
							<div class="user-info mb-3">
								<div class="user-shape-wrap">
									<div class="user-img">
										<img
											src="<c:url value = 'resources/assets/images/testimonial/user/sg3.png'/>"
											alt="User Image">
									</div>
								</div>
								<div class="user-content text-charcoal">
									<h4 class="user-name mb-1">Câu nói hay về</h4>
									<span class="user-occupation">Chó</span>
								</div>
							</div>
							<p class="user-comment mb-6">Đời người đàn ông có 3 người bạn trung thành: một người vợ đảm đang, một chú chó nuôi từ bé và một số tiền của riêng bản thân.</p>
						</div>
					</div>
					<!-- Add Pagination -->
					<div class="swiper-pagination without-absolute"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial Area End Here -->

	<!-- Begin Brand Area -->
	<div class="brand-area section-space-bottom-100">
		<div class="container">
			<div class="brand-bg"
				data-bg-image="<c:url value = 'resources/assets/images/brand/bg/1-1170x300.jpg'/>">
				<div class="row">
					<div class="col-lg-12">
						<div class="swiper-container brand-slider">
							<div class="swiper-wrapper">
								<div class="swiper-slide">
									<a class="brand-item" href="#"> <img
										src="<c:url value = 'resources/assets/images/brand/anh1.png'/>"
										alt="Brand Image">
									</a>
								</div>
								<div class="swiper-slide">
									<a class="brand-item" href="#"> <img
										src="<c:url value = 'resources/assets/images/brand/anh2.png'/>"
										alt="Brand Image">
									</a>
								</div>
								<div class="swiper-slide">
									<a class="brand-item" href="#"> <img
										src="<c:url value = 'resources/assets/images/brand/anh3.png'/>"
										alt="Brand Image">
									</a>
								</div>
								<div class="swiper-slide">
									<a class="brand-item" href="#"> <img
										src="<c:url value = 'resources/assets/images/brand/anh4.png'/>"
										alt="Brand Image">
									</a>
								</div>
								<div class="swiper-slide">
									<a class="brand-item" href="#"> <img
										src="<c:url value = 'resources/assets/images/brand/anh5.png'/>"
										alt="Brand Image">
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Brand Area End Here -->

	<!-- Begin Blog Area -->

	<!-- Blog Area End Here -->

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
						data-tippy-arrow="true" data-tippy-theme="sharpborder"></button>
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
									consectetur adipisic elit, sed do eiusmod tempo incid ut labore
									et dolore magna aliqua. Ut enim ad minim veniam, quis nostru
									exercitation ullamco laboris nisi ut aliquip ex ea commodo
									consequat. Duis aute irure dolor in reprehenderit in voluptate</p>
								<ul class="quantity-with-btn">
									<li class="quantity">
										<div class="cart-plus-minus">
											<input class="cart-plus-minus-box" value="1" type="text">
										</div>
									</li>
									<li class="add-to-cart"><a
										class="btn btn-custom-size lg-size btn-pronia-primary"
										href="cart.html">Add to cart</a></li>
									<li class="wishlist-btn-wrap"><a class="custom-circle-btn"
										href="wishlist.html"> <i class="pe-7s-like"></i>
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