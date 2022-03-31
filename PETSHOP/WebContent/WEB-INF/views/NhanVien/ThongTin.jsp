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

    <title>PetShop - Information</title>
	<link rel="shortcut icon" type="image/x-icon" href="<c:url value = 'resources/assets/images/logo.jpg'/>" />
    <!-- Bootstrap core CSS -->
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
            <div> <h2 style="color: #aed874">THÔNG TIN TÀI KHOẢN</h2></div>
            <div class="bg-light p-5 rounded">
            <div style="color: red; font-style: italic; font-size: medium;">${message}</div>
			
			<form:form class="row g-3" modelAttribute="nhanvien" action="thongtin.htm" method="post" enctype="multipart/form-data">
				<form:input path="MaNV" type="hidden" class="form-control"
					id="exampleFormControlInput1"/>
					
					<div class="col-md-4">
						<label for="exampleFormControlInput1" class="form-label" >Số chứng minh nhân dân</label>
						<form:input path="CMND" type="text" class="form-control"
							id="exampleFormControlInput1" />
							</div>
					<div class="col-md-8">   </div>
					
					<div class="col-md-4" style="color: red; font-style: italic; font-size: small;">
						<form:errors path="CMND" element="ul"/>
					</div>
					<div class="col-md-8">   </div>
					<div class="col-md-8">
						<label for="exampleFormControlInput1" class="form-label">Họ và tên</label>
						<form:input path="HoTen" type="text" class="form-control"
							id="exampleFormControlInput1"/>
						
					</div>
					<div class="col-md-4">
						<label for="exampleFormControlInput1" class="form-label">Ngày sinh</label>
						<input name = "ngay" id="ngay" pattern="dd-MM-yyyy"
									class="form-control me-2" type="date"/>
						
					</div>
					<form:input path="NgaySinh" type="hidden" class="form-control"
					id="exampleFormControlInput1"/>
					<form:input path="TaiKhoan.TenDangNhap" type="hidden" class="form-control"
					id="exampleFormControlInput1"/>
				
					<div class="col-md-8" style="color: red; font-style: italic; font-size: small;">
						<form:errors path="HoTen" element="ul"/>
					</div>
					<div class="col-md-4" style="color: red; font-style: italic; font-size: small;">
						<form:errors path="NgaySinh" element="ul"/>
					</div>
				
					<div class="col-md-8">
						<label for="exampleFormControlInput1" class="form-label">Email</label>
						<form:input path="Email" type="text" class="form-control"
							id="exampleFormControlInput1"/>
						
					</div>
					<div class="col-md-4">
						<label for="exampleFormControlInput1" class="form-label">Số điện thoại</label>
						<form:input path="SDT" type="text" class="form-control"
							id="exampleFormControlInput1"/>
						
					</div>
				
					<div class="col-md-8" style="color: red; font-style: italic; font-size: small;">
						<form:errors path="Email" element="ul"/>
					</div>
					<div class="col-md-4" style="color: red; font-style: italic; font-size: small;">
						<form:errors path="SDT" element="ul"/>
					</div>
				
					<div class="col-md-8">
						<label for="exampleFormControlInput1" class="form-label">Địa chỉ</label>
						<form:input path="DiaChi" type="text" class="form-control"
							id="exampleFormControlInput1"/>
						
					</div>
					<div class="col-md-4">
						<label for="exampleFormControlInput1" class="form-label">Giới tính</label>
					<div><form:radiobutton path="GioiTinh" value="Nam" label="Nam"/>  </div>  
        			<div><form:radiobutton path="GioiTinh" value="Nữ" label="Nữ"/></div> 
						
					</div>
				
					<div class="col-md-8" style="color: red; font-style: italic; font-size: small;">
						<form:errors path="DiaChi" element="ul"/>
					</div>
					<div class="col-md-4" style="color: red; font-style: italic; font-size: small;">
						<form:errors path="GioiTinh" element="ul"/>
					</div>
				
				<br>
				<div class="col-md-6" >
					<button name="btnLuu" class="btn btn-primary" style="background: #aed874">Lưu</button>
				</div>
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
