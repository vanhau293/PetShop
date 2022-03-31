<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
              
<base href="${pageContext.servletContext.contextPath}/">
<header id="header">
              <div class="logo">

                <a href="hoadon.htm"> </a>
              </div>
              
              <div class="header-middle-wrap position-relative">
                   <a href="hoadon.htm" class="header-logo">
                       <img src="<c:url value = 'resources/assets/images/logo/logo1.png'/>" alt="Header Logo">
                   </a>                                     
              </div>
              <ul class="navbar-nav ml-auto">
              <li> <h5 style="color: white;">Xin chào, </h5></li> 
              <li class="nav-item dropdown no-arrow">
                <!-- <a href="index.html">Xin chào !!!</a> -->
                
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 medium" style="color:white; width: 50px; height: 50px;">${ten}</span>
                                <img class="img-profile rounded-circle" style="width: 50px; height: 50px;"
                                    src="<c:url value="/resources/images/undraw_profile.svg"/>">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="thongtin.htm">
                                    Tài khoản của tôi
                                </a>
                                <a class="dropdown-item" href="thongtin/doimatkhau.htm">
                                    Đổi mật khẩu
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="user/dangxuat.htm" >
                                   Đăng xuất
                                </a>
                            </div>
                        
              	</li>
              </ul>           
            </header>