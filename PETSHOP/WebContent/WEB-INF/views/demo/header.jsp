<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<base href="${pageContext.servletContext.contextPath}/">
<header class="main-header-area">
	<div class="header-top bg-pronia-primary d-none d-lg-block">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-6">
					<div class="header-top-left">
						<span class="pronia-offer">HELLO EVERYONE !!!</span>
					</div>
				</div>
				<div class="col-6">
					<div class="header-top-right">
						<ul class="dropdown-wrap">

							<li class="dropdown">
								<button class="btn btn-link dropdown-toggle ht-btn"
									type="button" id="languageButton" data-bs-toggle="dropdown"
									aria-label="language" aria-expanded="false"></button>

							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="header-middle py-30">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-12">
					<div class="header-middle-wrap position-relative">
						<div class="header-contact d-none d-lg-flex">
							<i class="pe-7s-call"></i> <a href="tel://+00-123-456-789">+00
								123 456 789</a>
						</div>

						<a href="user/index1.htm" class="header-logo"> <img
							src="<c:url value = 'resources/assets/images/logo/logo1.png'/>"
							alt="Header Logo">
						</a>

						<div class="header-right">
							<ul>

								<li class="dropdown d-none d-lg-block">
									<button class="btn btn-link dropdown-toggle ht-btn p-0"
										type="button" id="settingButton" data-bs-toggle="dropdown"
										aria-label="setting" aria-expanded="false">
										<i class="pe-7s-users"></i>
									</button>
									<ul class="dropdown-menu" aria-labelledby="settingButton">
										<li style="display: ${tkdx}"><a class="dropdown-item"
											href="user/thongtinkh.htm">Thông tin tài khoản</a></li>
										<li style="display: ${tkdx}"><a class="dropdown-item"
											href="view/myoder.htm">Đơn hàng của tôi</a></li>
										<li style="display: ${tkdx}"><a class="dropdown-item"
											href="user/vohieuhoa.htm">Vô hiệu xóa tài khoản</a></li>
										<li style="display: ${dkdn}"><a class="dropdown-item"
											href="user/login.htm">Đăng nhập</a>
										<li style="display: ${dkdn}"><a class="dropdown-item"
											href="user/register.htm">Đăng ký</a>
										<li style="display: ${tkdx}"><a class="dropdown-item"
											href="user/dangxuat.htm">Đăng xuất</a></li>
									</ul>
								</li>
								<li class="d-none d-lg-block"><a href="view/wishlist.htm">
										<i class="pe-7s-like"></i>
								</a></li>
								<li class="minicart-wrap me-3 me-lg-0"><a
									href="view/cart.htm" class="minicart-btn"> <i
										class="pe-7s-shopbag"></i> <span style="display: ${hienThi}"
										class="quantity">${soLuong}</span>
								</a></li>
								<li class="mobile-menu_wrap d-block d-lg-none"><a
									href="#mobileMenu" class="mobile-menu_btn toolbar-btn pl-0">
										<i class="pe-7s-menu"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="header-bottom d-none d-lg-block">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="main-menu position-relative">
						<nav class="main-nav">
							<ul>
								<li class="drop-holder"><a href="user/index1.htm">Trang
										chủ</a></li>
								<li class="megamenu-holder"><a href="view/index.htm">Cửa
										hàng</a>
									<ul class="drop-menu megamenu">
										<li><span class="title">Sản phẩm cho chó</span>
											<ul>
												<c:forEach var="spc" items="${nhomspc}">
													<li><a href="view/index/${spc.maNhomSP}.htm">${spc.tenNhomSP}</a>
													</li>
												</c:forEach>
											</ul></li>
										<li><span class="title">Sản phẩm cho mèo</span>
											<ul>
												<c:forEach var="spm" items="${nhomspm}">
													<li><a href="view/index/${spm.maNhomSP}.htm">${spm.tenNhomSP}</a>
													</li>
												</c:forEach>
											</ul></li>
									</ul></li>
								<li class="drop-holder"><a href="user/blog.htm">Tin tức</a></li>

								<li><a href="user/contact.htm">Liên hệ</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="header-sticky py-4 py-lg-0">
		<div class="container">
			<div class="header-nav position-relative">
				<div class="row align-items-center">
					<div class="col-lg-3 col-6">

						<a href="user/index1.htm" class="header-logo"> <img
							src="<c:url value = 'resources/assets/images/logo/logo1.png'/>"
							alt="Header Logo">
						</a>

					</div>
					<div class="col-lg-6 d-none d-lg-block">
						<div class="main-menu">
							<nav class="main-nav">
								<ul>
									<li class="drop-holder"><a href="user/index1.htm">Trang
											chủ</a></li>
									<li class="megamenu-holder"><a href="view/index.htm">Cửa
											hàng</a>
										<ul class="drop-menu megamenu">
											<li><span class="title">Sản phẩm cho chó</span>
												<ul>
													<c:forEach var="spc" items="${nhomspc}">
														<li><a href="view/index/${spc.maNhomSP}.htm">${spc.tenNhomSP}</a>
														</li>
													</c:forEach>
												</ul></li>
											<li><span class="title">Sản phẩm cho mèo</span>
												<ul>
													<c:forEach var="spm" items="${nhomspm}">
														<li><a href="view/index/${spm.maNhomSP}.htm">${spm.tenNhomSP}</a>
														</li>
													</c:forEach>
												</ul></li>
										</ul></li>
									<li class="drop-holder"><a href="user/blog.htm">Tin tức</a></li>

									<li><a href="user/contact.htm">Liên hệ</a></li>
								</ul>
							</nav>
						</div>
					</div>
					<div class="col-lg-3 col-6">
						<div class="header-right">
							<ul>
								<li class="dropdown d-none d-lg-block">
									<button class="btn btn-link dropdown-toggle ht-btn p-0"
										type="button" id="stickysettingButton"
										data-bs-toggle="dropdown" aria-label="setting"
										aria-expanded="false">
										<i class="pe-7s-users"></i>
									</button>
									<ul class="dropdown-menu" aria-labelledby="stickysettingButton">
										<li style="display: ${tkdx}"><a class="dropdown-item"
											href="user/thongtinkh.htm">Thông tin tài khoản</a></li>
										<li style="display: ${tkdx}"><a class="dropdown-item"
											href="view/myoder.htm">Đơn hàng của tôi</a></li>
										<li style="display: ${tkdx}"><a class="dropdown-item"
											href="user/vohieuhoa.htm">Vô hiệu xóa tài khoản</a></li>
										<li style="display: ${dkdn}"><a class="dropdown-item"
											href="user/login.htm">Đăng nhập</a></li>
										<li style="display: ${dkdn}"><a class="dropdown-item"
											href="user/register.htm">Đăng ký</a>
										<li style="display: ${tkdx}"><a class="dropdown-item"
											href="user/dangxuat.htm">Đăng xuất</a></li>
									</ul>
								</li>
								<li class="d-none d-lg-block"><a href="view/wishlist.htm">
										<i class="pe-7s-like"></i>
								</a></li>
								<li class="minicart-wrap me-3 me-lg-0"><a
									class="minicart-btn" href="view/cart.htm"> <i
										class="pe-7s-shopbag"></i> <span style="display: ${hienThi}"
										class="quantity">${soLuong}</span>
								</a></li>
								<li class="mobile-menu_wrap d-block d-lg-none"><a
									href="#mobileMenu" class="mobile-menu_btn toolbar-btn pl-0">
										<i class="pe-7s-menu"></i>
								</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mobile-menu_wrapper" id="mobileMenu">
		<div class="offcanvas-body">
			<div class="inner-body">
				<div class="offcanvas-top">
					<a href="#" class="button-close"><i class="pe-7s-close"></i></a>
				</div>
				<div class="header-contact offcanvas-contact">
					<i class="pe-7s-call"></i> <a href="tel://+00-123-456-789">+00
						123 456 789</a>
				</div>
				<div class="offcanvas-user-info">
					<ul class="dropdown-wrap">
						<li class="dropdown dropdown-left">
							<button class="btn btn-link dropdown-toggle ht-btn" type="button"
								id="languageButtonTwo" data-bs-toggle="dropdown"
								aria-expanded="false">English</button>
							<ul class="dropdown-menu" aria-labelledby="languageButtonTwo">
								<li><a class="dropdown-item" href="#">French</a></li>
								<li><a class="dropdown-item" href="#">Italian</a></li>
								<li><a class="dropdown-item" href="#">Spanish</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<button class="btn btn-link dropdown-toggle ht-btn usd-dropdown"
								type="button" id="currencyButtonTwo" data-bs-toggle="dropdown"
								aria-expanded="false">USD</button>
							<ul class="dropdown-menu" aria-labelledby="currencyButtonTwo">
								<li><a class="dropdown-item" href="#">GBP</a></li>
								<li><a class="dropdown-item" href="#">ISO</a></li>
							</ul>
						</li>
						<li class="dropdown">
							<button class="btn btn-link dropdown-toggle ht-btn p-0"
								type="button" id="settingButtonTwo" data-bs-toggle="dropdown"
								aria-expanded="false">
								<i class="pe-7s-users"></i>
							</button>
							<ul class="dropdown-menu dropdown-menu-end"
								aria-labelledby="settingButtonTwo">
								<li><a class="dropdown-item" href="my-account.html">My
										account</a></li>
								<li><a class="dropdown-item" href="login-register.htm">Login
										| Register</a></li>
							</ul>
						</li>
						<li><a href="wishlist.html"> <i class="pe-7s-like"></i>
						</a></li>
					</ul>
				</div>
				<div class="offcanvas-menu_area">
					<nav class="offcanvas-navigation">
						<ul class="mobile-menu">
							<li class="menu-item-has-children"><a href="#"> <span
									class="mm-text">Home <i class="pe-7s-angle-down"></i>
								</span>
							</a>
								<ul class="sub-menu">
									<li><a href="index.html"> <span class="mm-text">Home
												One</span>
									</a></li>
									<li><a href="index-2.html"> <span class="mm-text">Home
												Two</span>
									</a></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#"> <span
									class="mm-text">Shop <i class="pe-7s-angle-down"></i>
								</span>
							</a>
								<ul class="sub-menu">
									<li class="menu-item-has-children"><a href="#"> <span
											class="mm-text">Shop Layout <i
												class="pe-7s-angle-down"></i>
										</span>
									</a>
										<ul class="sub-menu">
											<li><a href="shop.html"> <span class="mm-text">Shop
														Default</span>
											</a></li>
											<li><a href="shop-grid-fullwidth.html"> <span
													class="mm-text">Shop Grid Fullwidth</span>
											</a></li>
											<li><a href="shop-right-sidebar.html"> <span
													class="mm-text">Shop Right Sidebar</span>
											</a></li>
											<li><a href="shop-list-fullwidth.html"> <span
													class="mm-text">Shop List Fullwidth</span>
											</a></li>
											<li><a href="shop-list-left-sidebar.html"> <span
													class="mm-text">Shop List Left Sidebar</span>
											</a></li>
											<li><a href="shop-list-right-sidebar.html"> <span
													class="mm-text">Shop List Right Sidebar</span>
											</a></li>
										</ul></li>
									<li class="menu-item-has-children"><a href="#"> <span
											class="mm-text">Product Style <i
												class="pe-7s-angle-down"></i>
										</span>
									</a>
										<ul class="sub-menu">
											<li><a href="single-product.html"> <span
													class="mm-text">Single Product Default</span>
											</a></li>
											<li><a href="single-product-group.html"> <span
													class="mm-text">Single Product Group</span>
											</a></li>
											<li><a href="single-product-variable.html"> <span
													class="mm-text">Single Product Variable</span>
											</a></li>
											<li><a href="single-product-sale.html"> <span
													class="mm-text">Single Product Sale</span>
											</a></li>
											<li><a href="single-product-sticky.html"> <span
													class="mm-text">Single Product Sticky</span>
											</a></li>
											<li><a href="single-product-affiliate.html"> <span
													class="mm-text">Single Product Affiliate</span>
											</a></li>
										</ul></li>
									<li class="menu-item-has-children"><a href="#"> <span
											class="mm-text">Product Related <i
												class="pe-7s-angle-down"></i>
										</span>
									</a>
										<ul class="sub-menu">
											<li><a href="my-account.html"> <span class="mm-text">My
														Account</span>
											</a></li>
											<li><a href="login-register.html"> <span
													class="mm-text">Login | Register</span>
											</a></li>
											<li><a href="cart.html"> <span class="mm-text">Shopping
														Cart</span>
											</a></li>
											<li><a href="wishlist.html"> <span class="mm-text">Wishlist</span>
											</a></li>
											<li><a href="compare.html"> <span class="mm-text">Compare</span>
											</a></li>
											<li><a href="checkout.html"> <span class="mm-text">Checkout</span>
											</a></li>
										</ul></li>
								</ul></li>
							<li class="menu-item-has-children"><a href="#"> <span
									class="mm-text">Blog <i class="pe-7s-angle-down"></i>
								</span>
							</a>
								<ul class="sub-menu">
									<li class="menu-item-has-children"><a href="#"> <span
											class="mm-text">Blog Holder <i
												class="pe-7s-angle-down"></i>
										</span>
									</a>
										<ul class="sub-menu">
											<li><a href="blog.html"> <span class="mm-text">Blog
														Default</span>
											</a></li>
											<li><a href="blog-listview.html">Blog List View</a></li>
											<li><a href="blog-detail.html">Blog Detail</a></li>
										</ul></li>
								</ul></li>
							<li><a href="about.html"> <span class="mm-text">About
										Us</span>
							</a></li>
							<li class="menu-item-has-children"><a href="#"> <span
									class="mm-text">Pages <i class="pe-7s-angle-down"></i>
								</span>
							</a>
								<ul class="sub-menu">
									<li><a href="faq.html"> <span class="mm-text">Frequently
												Questions</span>
									</a></li>
									<li><a href="404.html"> <span class="mm-text">Error
												404</span>
									</a></li>
								</ul></li>
							<li><a href="contact.html"> <span class="mm-text">Contact</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModal" aria-hidden="true">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content modal-bg-dark">
				<div class="modal-header">
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close" data-tippy="Close" data-tippy-inertia="true"
						data-tippy-animation="shift-away" data-tippy-delay="50"
						data-tippy-arrow="true" data-tippy-theme="sharpborder"></button>
				</div>
				<div class="modal-body">
					<div class="modal-search">
						<span class="searchbox-info">Start typing and press Enter
							to search or ESC to close</span>
						<form action="#" class="hm-searchbox">
							<input type="text" name="Search..." value="Search..."
								onblur="if(this.value==''){this.value='Search...'}"
								onfocus="if(this.value=='Search...'){this.value=''}"
								autocomplete="off">
							<button class="search-btn" type="submit" aria-label="searchbtn">
								<i class="pe-7s-search"></i>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="global-overlay"></div>
</header>