<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<html lang="en">

<base href="${pageContext.servletContext.contextPath}/">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>PetShop - Change your password</title>
	<link rel="shortcut icon" type="image/x-icon" href="<c:url value = 'resources/assets/images/logo.jpg'/>" />
    <!-- Bootstrap core CSS -->
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value = 'resources/assets/images/logo.jpg'/>" />
    
    <link href="<c:url value = 'resources/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">

<!--
Ramayana CSS Template
https://templatemo.com/tm-529-ramayana
-->
	<link rel="stylesheet" href="<c:url value = 'resources/assets2/css/fontawesome.css'/>">

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
            <div> <h2 style="color: #aed874">ĐỔI MẬT KHẨU</h2></div>
            <div class="bg-light p-5 rounded">
            <div style="color: red; font-style: italic; font-size: medium;">${message}</div>
			
			<form:form class="row g-3" action="thongtin/xacnhan.htm">
			
				<div class="col-md-2"></div>  
				<div class="col-md-3">  
					<label for="exampleFormControlInput1" class="form-label" >Tên đăng nhập: </label>
				</div>
				<div class="col-md-4">
					<label>${tendangnhap}</label>
				</div>
				<div class="col-md-3"></div> 
				<br>
				<br>
				<div class="col-md-2"></div>  
				<div class="col-md-3">  
					<label for="exampleFormControlInput1" class="form-label" >Mật khẩu cũ: </label>
				</div>
				<div class="col-md-4">
					<input class="form-control"
							id="exampleFormControlInput1"
							name = "matkhaucu"
							type="password"/>
				</div>
				<div class="col-md-3"></div> 
				<br>
				<br>
				<div class="col-md-2"></div>  
				<div class="col-md-3">  
					<label for="exampleFormControlInput1" class="form-label">Mật khẩu mới: </label>
				</div>
				<div class="col-md-4">
					<input  class="form-control"
							id="exampleFormControlInput1"
							name = "matkhaumoi"
							type="password"/>
				</div>
				<div class="col-md-3"></div>  
				<br> 
				<br>
				<div class="col-md-2"></div>  
				<div class="col-md-3">  
					<label for="exampleFormControlInput1" class="form-label" >Xác nhận mật khẩu: </label>
				</div>
				<div class="col-md-4">
					<input  class="form-control"
							id="exampleFormControlInput1"
							name = "xacnhan"
							type="password"/>
				</div>
				<div class="col-md-3"></div> 
				<br> 
				<br>
				<br>
				<div class="col-md-6"></div>   
				<div clas="col-md-2">
					<button class="btn btn-primary" style="background: #aed874">Đổi mật khẩu</button>
				</div>
				<div class="col-md-4"></div>  
			</form:form>
			
			

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


  </body>

</html>
