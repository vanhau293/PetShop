<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<div id="sidebar">

          <div class="inner">

            
              
            <!-- Menu -->
            <nav id="menu">
              <ul>
              	<li>
                  <span class="opener">Hoá đơn</span>
                  <ul>
                    <li><a href="hoadon/xacnhan.htm">Xác nhận đơn hàng</a></li>
                    <li><a href="hoadon.htm">Quản lý doanh thu</a></li>
                  </ul>
                </li>
                <li><a href="khachhang/index.htm">Tra cứu khách hàng</a></li>
                <li><a href="sanpham/index.htm">Sản phẩm</a></li>
                <!-- <li>
                  <span class="opener">Dropdown Two</span>
                  <ul>
                    <li><a href="#">Sub Menu #1</a></li>
                    <li><a href="#">Sub Menu #2</a></li>
                    <li><a href="#">Sub Menu #3</a></li>
                  </ul>
                </li> -->
                <li><a href="tintuc.htm">Tin tức</a></li>
                
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