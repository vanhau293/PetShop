<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jstl/core_rt" prefix = "c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fm" %>
<%@ taglib prefix="tg" tagdir="/WEB-INF/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<base href="${pageContext.servletContext.contextPath}/">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>PetShop - Bill confirmation</title>
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
            <section>
				<h2 style="color:#aed874;margin-left:15px;margin-top:15px">Danh Sách Đơn Hàng</h2>
				<br>
				<div style="color: red; font-style: italic; font-size: medium;">${message}</div>
				<div>
					<jsp:useBean id="pagedListHolder" scope="request"
						type="org.springframework.beans.support.PagedListHolder" />
					<c:url value="hoadon/xacnhan.htm" var="pagedLink">
						<c:param name="p" value="~" />
					</c:url>
					<div class="d-flex flex-row justify-content-between">
						
						<div>
							<tg:paging pagedListHolder="${pagedListHolder}"
								pagedLink="${pagedLink}" />
						</div>
					</div> 
			      <div class="container" id="myTable">     	
				      	<div id="accordion" class="mt-15" style="margin-top:50px !important;">
							<c:forEach var="u" items="${pagedListHolder.pageList}">
								<div class="card" >
									<div class="card-header" style="padding:0" >
										<a class="card-link" data-toggle="collapse" href="#m${u.getMaHD()}" >
											<div class="media" style="width:650px; float:left;">
												<div class="media-body ">
													<h4 style="margin:15px 10px;">
														<strong>Đơn hàng: ${u.getMaHD()}</strong>  																				
														<small class="badge badge-secondary"><i><fm:formatNumber value="${u.getTongTien()}" currencySymbol="VND" type = "currency"/></i></small>									
														
													</h4>
													<small style="color:black;margin-left:5px">Ngày đặt:  </small><fm:formatDate value="${u.getNgayLap()}" pattern="HH:mm:ss.SSS dd-MM-yyyy"/> 
													<br>
													<small style="color:black">Tên khách hàng:  </small>${u.getKhachHang().getTenKH()}
						
													&emsp;
													<small style="color:black">Số điện thoại:  </small>${u.getKhachHang().getSdt()}
													<br>
													<small style="color:black">Địa chỉ:  </small>${u.getKhachHang().getDiaChi()}
													<br>
													<small style="color:black">Trạng thái đơn hàng:  </small> 
													<c:choose>
														<c:when test="${u.isXacNhan()==true}">Đã xác nhận</c:when>
														<c:when test="${u.isXacNhan()==false}">Chưa xác nhận</c:when>
													</c:choose>
												</div>
											</div>
										</a>
										
										<div class="btn-group" style="float: right;z-index: 15">							       				
				    						<c:if test="${u.isXacNhan()==false}">
				    							<a href="hoadon/xacnhan/${u.getMaHD()}.htm?linkXacNhan"><button type="button" class="btn btn-success" style="background: #aed874">Xác nhận</button> </a>		
				    							<div class="col-md-1"></div>
				    											 															
											</c:if>
											<a href="hoadon/xacnhan/${u.getMaHD()}.htm?linkDelete" onclick="return confirm('Bạn có chắc chắn muốn huỷ đơn hàng này ???')"><button type="button" 
											class="btn btn-success" style="background: #aed874" data-toggle="modal" data-target="#myModal">Hủy</button> </a>
											 
										</div>
										
									</div>
					
									<div id="m${u.getMaHD()}" class="collapse" data-parent="#accordion">
										<div class="card-body">
											<div id="accordion" class="mt-3">
												<c:forEach var="uu" items="${u.getCTHoaDon()}">
												<div class="card" >
													
													<div class="card-header" style="padding:0" >
														
															<div class="media " style="width:650px; float:left">
																<img src="${uu.getSanPham().getHinhAnh()}" alt="${uu.getSanPham().getMaSP()}" class="m-3  "
																	style="width: 60px;">
																<div class="media-body ">
																	<h4 style="margin-top:20px;">
																		<strong >${uu.getSanPham().getTenSP()}</strong>  <small class="badge badge-secondary"><i><fm:formatNumber value="${uu.getSanPham().getGia()}" currencySymbol="VND" type = "currency"/> </i></small>
																	</h4>
																	<span>Số lượng:  </span>${uu.getSoLuong()}
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
								<br>
							</c:forEach>
						</div>
					 
						   	
			      	
					
			      </div>
			      <tg:paging pagedListHolder="${pagedListHolder}"
						pagedLink="${pagedLink}" /> 
			   </div>
			 </section>
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
