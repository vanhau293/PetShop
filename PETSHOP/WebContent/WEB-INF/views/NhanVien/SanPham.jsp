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

    <title>PetShop - Product</title>
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
            <div> <h2 style="color: #aed874">QUẢN LÝ SẢN PHẨM</h2></div>
            <div class="bg-light p-5 rounded">
            <div style="color: red; font-style: italic; font-size: medium;">${message}</div>
			
			<form:form class="row g-3" modelAttribute="sanpham" action="sanpham/index.htm" method="post" enctype="multipart/form-data">
				<form:input path="MaSP" type="hidden" class="form-control"
					id="exampleFormControlInput1"/>
				<div class="col-md-6">
					<label for="exampleFormControlInput1" class="form-label">Tên sản phẩm</label>
					<form:input path="TenSP" type="text" class="form-control"
						id="exampleFormControlInput1" />
				</div>
				<div class="col-md-4">
					<label for="exampleFormControlInput1" class="form-label">Thương hiệu</label>
					<form:input path="ThuongHieu" type="text" class="form-control"
						id="exampleFormControlInput1"/>
					
				</div>
				
				<div class="col-md-2">
					<label for="exampleFormControlInput1" class="form-label">Giá</label>
					<form:input path="Gia" type="number" class="form-control"
						id="exampleFormControlInput1" />
				</div>
				<div class="col-md-6" style="color: red; font-style: italic; font-size: small;">
					<form:errors path="TenSP" element="ul"/>
				</div>
				
				<div class="col-md-4">
					
				</div>
				<div class="col-md-2" style="color: red; font-style: italic; font-size: small;">
					<form:errors path="Gia" element="ul"/>
				</div>
				<div class="col-md-6">
					<label for="exampleFormControlInput1" class="form-label">Loại sản phẩm</label>
					<form:select path="NhomSP.MaNhomSP" items = "${ListLoaiSp}" 
					itemValue = "MaNhomSP" itemLabel="TenNhomSP"
					class="form-control" id="exampleFormControlInput1" />
				</div>
				<div>
				</div>
				<div class="col-md-6" >
					<label for="exampleFormControlInput1" class="form-label">Mô tả</label>
					<form:textarea path="MoTa" class="form-control"
						id="exampleFormControlInput1" />
					
				</div>
				<div class="col-md-4">
					<label for="exampleFormControlInput1" class="form-label">Hình ảnh</label>
					<input type = "file" id="img" name="img" accept="image/*" class="form-control-file"/>
					<form:input path="HinhAnh" type="hidden" class="form-control"
					id="exampleFormControlInput1"/>
					
				</div>
				<div class="col-md-2"></div>
				<div class="col-md-6">
					<label for="exampleFormControlInput1" class="form-label">Tình trạng</label>
					<div><form:radiobutton path="TinhTrang" value="True" label="Còn hàng"/>  </div>  
        			<div><form:radiobutton path="TinhTrang" value="False" label="Hết hàng"/></div> 
				</div>
				
				<div class="col-md-12">
					<button name="${btnStatus}" class="btn btn-primary" style="background: #aed874">Lưu</button>
				</div>
			</form:form>
			
			<div class = "row"><h1>   </h1></div>
			<div >
            	<jsp:useBean id="pagedListHolder" scope="request"
						type="org.springframework.beans.support.PagedListHolder" />
					<c:url value="sanpham/index.htm" var="pagedLink">
						<c:param name="p" value="~" />
					</c:url>
					<div class="d-flex flex-row justify-content-between">
						<div>
							<span id="result1"></span>
							
 							<form class="d-inline-flex">
	 							
	 							<input name="searchInput" id="searchInput"
								class="form-control me-2" type="search" placeholder="Tìm kiếm theo tên sản phẩm"
								aria-label="Search">
								
								<div class = "col-md-1"></div>
								<button name="btnTimKiem" class="btn btn-success" style="background: #aed874; width: 180px">Tìm kiếm</button>
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
            				<th scope="col">Hình ảnh</th>
            				<th scope="col">Tên sản phẩm</th>
            				<th scope="col">Loại sản phẩm</th>
            				<th scope="col">Thương hiệu</th>
            				<th scope="col">Tình trạng</th>
 							<th scope="col">Mô tả</th>
 							<th scope="col">Giá</th>
 							<th scope="col">Chỉnh sửa</th>
							<th scope="col">Xóa</th>
            			</tr>
            		</thead>
            		<tbody >
            			<c:forEach var="sp" items="${pagedListHolder.pageList}">
            				<tr>
            					<td>
            						<div style="width: 40px; height: 40px; vertical-align: middle;">
            							<img class="picture_div" src="${sp.getHinhAnh()}">
            						</div>
            					</td>
            					<td>${sp.getTenSP()}</td>
            					<td>${sp.getNhomSP().getTenNhomSP()}</td>
            					<td>${sp.getThuongHieu()}</td>
            					<td style=" font-size: 15px">
            						<c:choose>
            							<c:when test="${sp.isTinhTrang()==true}">Còn hàng</c:when>
            							<c:when test="${sp.isTinhTrang()==false}">Hết hàng</c:when>
            						</c:choose>
            					</td>
            					<td style=" font-size: 10px">${sp.getMoTa()}</td>
            					<td style=" font-size: 10px"> <fmt:formatNumber value="${sp.getGia()}" currencySymbol="VND" type = "currency"/> </td>
            					<td> <div class="col-md-12"><a href="sanpham/index/${sp.getMaSP()}.htm?linkEdit"><img
									width="20" height="40"
									src="<c:url value="/resources/images/edit1.png"/>"></a></div></td>
								<td><div class="col-md-16"><a name="btnDelete"
								href="sanpham/index/${sp.getMaSP()}.htm?linkDelete"
								role="button"><img width="40" height="40"
									src="<c:url value="/resources/images/delete1.png"/>" 
									onclick="return confirm('Bạn có chắc chắn muốn xoá ???')"></a> 
									</div>
								</td>
            				
            				</tr>
            			</c:forEach>
            		</tbody>
            	</table>
				<tg:paging pagedListHolder="${pagedListHolder}"
						pagedLink="${pagedLink}" /> 
            </div>

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
