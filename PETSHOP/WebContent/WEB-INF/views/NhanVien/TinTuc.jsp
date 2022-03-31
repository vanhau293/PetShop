<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fm" %>
<html lang="en">
<base href="${pageContext.servletContext.contextPath}/">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>PetShop - Blog</title>
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value = 'resources/assets/images/logo.jpg'/>" />

    <!-- Bootstrap core CSS -->
    <link href="<c:url value = 'resources/vendor/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
	<script type="text/javascript" src = "<c:url value = '/resources/ckeditor/ckeditor.js'/>"></script>
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
            </header>
            <div> <h2 style="color: #aed874">QUẢN LÝ TIN TỨC</h2></div>
            <div style="color: red; font-style: italic; font-size: medium;">${message}</div>
            	<form:form class="row g-3" modelAttribute="tintuc" action="tintuc.htm" method="post" enctype="multipart/form-data" >
				<form:input path="MaTT" type="hidden" class="form-control"
					id="exampleFormControlInput1" />
				<div class="col-md-12">
					<label for="exampleFormControlInput1" class="form-label">Tựa đề</label>
					<form:input path="TuaDe" type="text" class="form-control"
						id="exampleFormControlInput1" placeholder="Nhập tựa đề bài viết"/>
				</div>
				<div class="col-md-12" style="color: red; font-style: italic; font-size: small;">
					<form:errors path="TuaDe" element="ul"/>
				</div>
				
				<div class="col-md-4">
					<label for="exampleFormControlInput1" class="form-label">Vật nuôi</label>
					<div><form:radiobutton path="VatNuoi" value="Chó" label="Chó" checked="checked"/>  </div>  
        			<div><form:radiobutton path="VatNuoi" value="Mèo" label="Mèo"/></div> 
				</div>
				<div class="col-md-12" style="color: red; font-style: italic; font-size: small;">
					<form:errors path="VatNuoi" element="ul"/>
				</div>
				
				<div class="col-sm-12" >
					<label for="exampleFormControlInput1" class="form-label">Nội dung</label>
					<form:textarea path="NoiDung" class="form-control"
						id="exampleFormControlInput1" placeholder="Nhập nội dung bài viết"/>
					
				</div>
				<div class="col-md-12" style="color: red; font-style: italic; font-size: small;">
					<form:errors path="NoiDung" element="ul"/>
				</div>
				<div class="col-md-12">
					<label for="exampleFormControlInput1" class="form-label">Hình ảnh</label>
					<input type = "file" id="img" name="img" accept="image/*" class="form-control-file"/>
					<form:input path="HinhAnh" type="hidden" class="form-control"
					id="exampleFormControlInput1"/>
					
				</div>
				<div class="col-md-12" style="color: red; font-style: italic; font-size: small;">
					<form:errors path="HinhAnh" element="ul"/>
				</div>
				<div class = "row"><h1>   </h1></div>
				<div class="col-md-12">
					<button name="${btnStatus}" class="btn btn-primary" style="background: #aed874" ">Lưu</button>
				</div>
			</form:form>
            
            <div class="container" id="myTable"> 
            	<div id="accordion" class="mt-15" style="margin-top:50px !important;">
							<c:forEach var="u" items="${pagedListHolder.pageList}">
								<div class="card" >
									<div class="card-header" style="padding:0" >
										<a class="card-link" data-toggle="collapse" href="#m${u.getMaTT()}" >
											<div class="media" style="width:650px; float:left;">
												<div class="media-body ">
													<h4 style="margin:15px 10px; color: #aed874">
														<strong>${u.getTuaDe()}</strong>
													</h4>
													<small style="color:black">Người đăng: ${u.getNhanVien().getHoTen()} </small>
													&emsp;
													<small style="color:black">Ngày đăng: <fm:formatDate value="${u.getNgayDang()}" pattern="HH:mm:ss.SSS dd-MM-yyyy"/></small>
													<br>
												</div>
											</div>
										</a>
										<div class="btn-group" style="float: right;z-index: 15">	
				    						<a href="tintuc/${u.getMaTT()}.htm?linkEdit" style="font-size: 15px; color: blue; font-style: oblique;">Chỉnh sửa</a>		
				    						<div class="col-md-1"></div>
											<a href="tintuc/${u.getMaTT()}.htm?linkDelete" onclick="return confirm('Bạn có chắc chắn muốn xoá ???')" style="font-size: 15px; color: blue; font-style: oblique;">Xoá</a>
											
											 
										</div>
										
									</div>
					
									<div id="m${u.getMaTT()}" class="collapse" data-parent="#accordion">
										<div class="card-body">
											<div id="accordion" class="mt-3">
												<div class="card" >
													<div class="card-header" style="padding:0" >
														
														<div class="media " style="width:650px; float:left">
																
																<div class="media-body ">
																	<h4 style="margin-top:20px;">
																		<img class="img-full"
																		src="<c:url value = '${u.hinhAnh}'/>" alt="Blog Image">
																	</h4>
																	<span> <small>${u.getNoiDung()}</small> </span>
																</div>
																
															</div>
													</div>
						
												</div>
											</div>
										
										</div>
									</div>
								</div>
								<br>
							</c:forEach>
						</div>
				</div>
            </div>
        </div>

      <!-- Sidebar -->
         <%@ include file = "/WEB-INF/views/NhanVien/SideBar.jsp" %>

    </div>
	<script>
		var editor = CKEDITOR.replace("NoiDung");
		CKFinder.setupCKEditor(ckeditor,'${pageContext.servletContext.contextPath}/resources/ckeditor/ckeditor.js');
	</script>
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
