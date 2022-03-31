<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<html lang="en">

<base href="${pageContext.servletContext.contextPath}/">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>PetShop - Customer</title>
	<link rel="shortcut icon" type="image/x-icon" href="<c:url value = 'resources/assets/images/logo.jpg'/>" />
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
            <%@ include file = "/WEB-INF/views/NhanVien/Header.jsp" %>
            <div>
              <h2 style="color: #aed874">Tra cứu khách hàng</h2>
              </div>
            <div >
            	<jsp:useBean id="pagedListHolder" scope="request"
						type="org.springframework.beans.support.PagedListHolder" />
					<c:url value="khachhang/index.htm" var="pagedLink">
						<c:param name="p" value="~" />
					</c:url>
					<div class="d-flex flex-row justify-content-between">
						<div>
							<span id="result1"></span>
							
 							<form class="d-inline-flex">
	 							
	 							<input name="searchInput" id="searchInput"
								class="form-control me-2" type="search" placeholder="Số điện thoại hoặc tên"
								aria-label="Search">
								
								<div class = "col-md-1"></div>
								<button class="btn btn-success" style="background: #aed874; width: 180px" name = "btnTimKiem">Tìm kiếm</button>
							</form> 
						</div>
						<div>
							<tg:paging pagedListHolder="${pagedListHolder}"
								pagedLink="${pagedLink}" />
						</div>
					</div> 
					<div> <h1>   </h1></div>
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
            			<c:forEach var="kh" items="${pagedListHolder.pageList}">
            				<tr>
            					<td>${kh.getTenKH()}</td>
            					<td>${kh.getSdt()}</td>
            					<td>${kh.getEmail()}</td>
            					<td>${kh.getDiaChi()}</td>
            					<td>${kh.getTaiKhoan2().getTenDangNhap()}</td>
            				</tr>
            			</c:forEach>
            		</tbody>
            	</table>
				<tg:paging pagedListHolder="${pagedListHolder}"
						pagedLink="${pagedLink}" /> 
            </div>
            	
            </div>
            
        </div>

      <!-- Sidebar -->
        
        <%@ include file = "/WEB-INF/views/NhanVien/SideBar.jsp" %>

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




</html>
