<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Ramayana - Free Bootstrap 4 CSS Template</title>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value = 'resources/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

<!--
Ramayana CSS Template
https://templatemo.com/tm-529-ramayana
-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="<c:url value = 'resources/assets2/css/fontawesome.css'/>">
    <link rel="stylesheet" href="<c:url value = 'resources/assets2/css/templatemo-style.css'/>">
    <link rel="stylesheet" href="<c:url value = 'resources/assets2/css/owl.css'/>">

  </head>

<body class="is-preload">

    <!-- Wrapper -->
    <div id="wrapper">

      <!-- Main -->
        <div id="main">
          <div class="inner">

            <!-- Header -->
            <header id="header">
              <div class="logo">
                <a href="index.html"> </a>
              </div>
              
              <div class="header-middle-wrap position-relative">
                   <a href="index.html" class="header-logo">
                       <img src="<c:url value = 'resources/assets/images/logo/logo1.png'/>" alt="Header Logo">
                   </a>                                     
              </div>
              <div class="logo">
                <a href="index.html">Ramayana</a>
              </div>             
            </header>
			<table class = "table table-hover">
            		<thead>
            			<tr>
            				<th scope="col">Tên khách hàng</th>
            				<th scope="col">Số điện thoại</th>
            				<th scope="col">Email</th>
            				<th scope="col">Địa chỉ</th>
 							<th scope="col">Tên đăng nhập</th>
            			</tr>
            		</thead>
            		<tbody >
            			<c:forEach var="kh" items="${ctsp}">
            				<tr>
            					<td>hihi<td>
            					<td>${kh.getGhiChu()}</td>
            					<td>${kh.getSoLuong()}</td>
            					<td>1</td>
            					<td>1</td>
            				</tr>
            			</c:forEach>
            		</tbody>
            	</table>
            </div>
        </div>

      <!-- Sidebar -->
        <div id="sidebar">

          <div class="inner">

            <!-- Search Box -->
            <section id="search" class="alt">
              <form method="get" action="#">
                <input type="text" name="search" id="search" placeholder="Search..." />
              </form>
            </section>
              
            <!-- Menu -->
            <nav id="menu">
              <ul>
                <li><a href="khachhang/index.htm">Tra cứu khách hàng</a></li>
                <li>
                  <span class="opener">Sản phẩm</span>
                  <ul>
                    <li><a href="#">Cập nhật sản phẩm</a></li>
                    <li><a href="#">Nhập hàng</a></li>
                  </ul>
                </li>
                <li>
                  <span class="opener">Hoá đơn</span>
                  <ul>
                    <li><a href="#">Xác nhận đơn hàng</a></li>
                    <li><a href="#">Danh sách hoá đơn</a></li>
                  </ul>
                </li>
                <!-- <li>
                  <span class="opener">Dropdown Two</span>
                  <ul>
                    <li><a href="#">Sub Menu #1</a></li>
                    <li><a href="#">Sub Menu #2</a></li>
                    <li><a href="#">Sub Menu #3</a></li>
                  </ul>
                </li> -->
                <li><a href="https://www.google.com">Tin tức</a></li>
              </ul>
            </nav>

            <!-- Featured Posts -->
            <div class="featured-posts">
              <div class="heading">
                <h2>Featured Posts</h2>
              </div>
              <div class="owl-carousel owl-theme">
                <a href="#">
                  <div class="featured-item">
                    <img src="<c:url value = 'resources/assets2/images/featured_post_01.jpg'/>" alt="featured one">
                    <p>Aliquam egestas convallis eros sed gravida. Curabitur consequat sit.</p>
                  </div>
                </a>
                <a href="#">
                  <div class="featured-item">
                    <img src="<c:url value = 'resources/assets2/images/featured_post_01.jpg'/>" alt="featured two">
                    <p>Donec a scelerisque massa. Aliquam non iaculis quam. Duis arcu turpis.</p>
                  </div>
                </a>
                <a href="#">
                  <div class="featured-item">
                    <img src="<c:url value = 'resources/assets2/images/featured_post_01.jpg'/>" alt="featured three">
                    <p>Suspendisse ac convallis urna, vitae luctus ante. Donec sit amet.</p>
                  </div>
                </a>
              </div>
            </div>

            <!-- Footer -->
            <footer id="footer">
              <p class="copyright">Copyright &copy; 2019 Company Name
              <br>Designed by <a rel="nofollow" href="https://www.facebook.com/templatemo">Template Mo</a></p>
            </footer>

          </div>
        </div>

    </div>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="<c:url value = 'resources/vendor/jquery/jquery.min.js'/>"></script>
    <script src="<c:url value = 'resources/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

    <script src="<c:url value = 'resources/assets2/js/browser.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets2/js/breakpoints.min.js'/>"></script>
    <script src="<c:url value = 'resources/assets2/js/transition.js'/>"></script>
    <script src="<c:url value = 'resources/assets2/js/owl-carousel.js'/>"></script>
    <script src="<c:url value = 'resources/assets2/js/custom.js'/>"></script>
</body>


  </body>

</html>
