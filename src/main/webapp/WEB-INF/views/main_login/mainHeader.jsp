<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">

<!-- App favicon -->
<link rel="shortcut icon" href="${path}/tools/main_assets/images/favicon.ico">

<!-- App css -->
<link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/main_assets/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />
 
 <!-- jquery 라이브러리 -->
 <script src="${path}/tools/jquery-3.6.0.js"></script>

<!-- bundle -->
<script src="${path}/tools/main_assets/js/vendor.min.js"></script>
<script src="${path}/tools/main_assets/js/app.min.js"></script>

 
</head>

  <body class="loading" data-layout-config='{"darkMode":false}'>

        <!-- NAVBAR START -->
        <nav class="navbar navbar-expand-lg py-lg-3 navbar-dark">
            <div class="container">

                <!-- logo -->
                <a href="${path}/main.do" class="navbar-brand me-lg-5">
                    <img src="../images\main\logo.png" style="height: 100px;" alt="" class="logo-dark" height="18" />
                </a>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                    aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="mdi mdi-menu"></i>
                </button>

                <!-- menus -->
                <div class="collapse navbar-collapse" id="navbarNavDropdown">

                    <!-- left menu -->
                    <ul class="navbar-nav me-auto align-items-center">
                        <li class="nav-item mx-lg-2">
                            <a class="nav-link active" href="">홈</a>
                        </li>
                        <li class="nav-item mx-lg-2">
                            <a class="nav-link" href="">기능</a>
                        </li>
                        <li class="nav-item mx-lg-2">
                            <a class="nav-link" href="">가격</a>
                        </li>
                        <li class="nav-item mx-lg-2">
                            <a class="nav-link" href="">문의</a>
                        </li>
                        <li class="nav-item mx-lg-2">
                            <a class="nav-link" href="">연락처</a>
                        </li>
                    </ul>

                    <!-- right menu -->
                    <ul class="navbar-nav ms-auto align-items-center">
                        <li class="nav-item me-0">
                            <a href="${path}/loginFrm.do"  class="nav-link d-lg-none">로그인</a>
                            <a href="${path}/loginFrm.do"  class="btn btn-sm btn-light rounded-pill d-none d-lg-inline-flex"><!-- 버튼같은 a태그 -->
                                <span style="padding-top: 3%;">로그인&nbsp;</span> <i class="dripicons-power" > </i>
                            </a> 
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <!-- NAVBAR END -->

    </body>

</html>