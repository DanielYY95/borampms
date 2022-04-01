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
<title>Insert title here</title>

<!-- App favicon -->
<link rel="shortcut icon" href="${path}/tools/main_assets/images/favicon.ico">

<!-- App css -->
<link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/main_assets/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />
 
 <!-- jquery 라이브러리 -->
 <script src="${path}/tools/jquery-3.6.0.js"></script>
 


<script type="text/javascript">
	let msg = '${msg}';
	
	if(msg!=''){
		alert(msg);
	}
</script>
</head>



  <body class="loading" data-layout-config='{"darkMode":false}'>

		
        <c:set var="reg_prjList_Link" 
        	value="${user_info.uiName==null? 
        		'/regUser.do': '/prjList.do'}" />        
		<c:set var="reg_prjList_text" 
			value="${user_info.uiName==null? 
				'시작하기': '내 프로젝트 목록'}" />

        <!-- NAVBAR START -->
        <nav class="navbar navbar-expand-lg py-lg-3 navbar-dark">
            <div class="container">

                <!-- logo -->
                <a href="${path}/main.do" class="navbar-brand me-lg-5">
                    <img src="${path}/tools/project_assets/images/boram_light.png" style="height: 100px;" alt="" class="logo-dark" height="18" />
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
                        	 <c:if test="${empty user_info.uiName}">
	                            <a href="${path}/loginFrm.do"  
	                            	class="nav-link d-lg-none">로그인</a>
	                            <a href="${path}/loginFrm.do"  
	                            	class="btn btn-sm btn-light 
	                            		rounded-pill d-none d-lg-inline-flex"><!-- 버튼같은 a태그 -->
	                                <span style="padding-top: 3%;">로그인&nbsp;</span> 
	                                	<i class="dripicons-power" > </i>
	                            </a> 
	                            <span>${user_info.uiName}</span>
                            </c:if>
                            <c:if test="${!empty user_info.uiName}">
                            	<span class="badge bg-secondary text-light 
                            		rounded-pill p-2 pb-1 fs-5">${user_info.uiName} 님</span>
                            	<a href="${path}/login.do?method=logout" 
                            		class="nav-link">로그아웃&nbsp;<i class="dripicons-enter"></i></a>
                            </c:if>
                            
                        </li>
                    </ul>

                </div>
            </div>
        </nav>
        <!-- NAVBAR END -->

        <!-- START HERO -->
        <section class="hero-section">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-md-5">
                        <div class="mt-md-4">
                            <div>
                                <span class="badge bg-danger rounded-pill">New</span>
                                <span class="text-white-50 ms-1">BORAM3 PMS version 3.4 업데이트</span>
                            </div>
                            <h2 class="text-white fw-normal mb-4 mt-3 hero-title">
                                BORAM3의 이펙티브한 PMS 시스템
                            </h2>

                            <p class="mb-4 font-16 text-white-50">BORAM3 PMS는 간편하고 편리하며, 프로젝트 관리에 필요한 기능들을 모두 제공하고 있습니다.</p>
                            <a href="${path}${reg_prjList_Link}" 
                            		class="btn btn-success">${reg_prjList_text}
                            		<i class="mdi mdi-arrow-right ms-1"></i></a>
                        </div>
                    </div>
                    <div class="col-md-5 offset-md-2">
                        <div class="text-md-end mt-3 mt-md-0">
                            <img src="assets/images/startup.svg" alt="" class="img-fluid" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END HERO -->

        <!-- START SERVICES -->
        <section class="py-5">
            <div class="container">
                <div class="row py-4">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h1 class="mt-0"><i class="mdi mdi-infinity"></i></h1>
                            <h3>BORAM3는 <span class="text-primary">사용자 친화</span> 적입니다. </h3>
                            <p class="text-muted mt-2">누구나 쉽게 익힐 수 있고, 편리하게 사용가능합니다.</p>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-desktop text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">대시보드</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-vector-square text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">일정관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-presentation text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">소통관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-apps text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">업무관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-shopping-cart-alt text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">인력관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-grids text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">위험관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- END SERVICES -->


        <!-- START CONTACT -->
        <section class="py-5 bg-light-lighten border-top border-bottom border-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h3>고객 <span class="text-primary">문의</span></h3>
                            <p class="text-muted mt-2">양식을 작성해주시면 빠른 시간 내로 답변을 드립니다. 
                                <br>자세한 문의는 연락 부탁드립니다.</p>
                        </div>
                    </div>
                </div>

                <div class="row align-items-center mt-3">
                    <div class="col-md-4">
                        <p class="text-muted"><span class="fw-bold">고객지원</span><br> <span class="d-block mt-1">02=1111-2222</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">이메일</span><br> <span class="d-block mt-1">asrs02041@gmail.com</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">회사 주소</span><br> <span class="d-block mt-1">서울특별시 강남구 역삼동 테헤란로 132 한독약품빌딩 8층</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">운영시간</span><br> <span class="d-block mt-1">9:00 ~ 18:00</span></p>
                    </div>

                    <div class="col-md-8">
                        <form>
                            <div class="row mt-4">
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="fullname" class="form-label">이름</label>
                                        <input class="form-control form-control-light" type="text" id="fullname" >
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="emailaddress" class="form-label">이메일</label>
                                        <input class="form-control form-control-light" type="email" required="" id="emailaddress" >
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-1">
                                <div class="col-lg-12">
                                    <div class="mb-2">
                                        <label for="subject" class="form-label">문의 제목</label>
                                        <input class="form-control form-control-light" type="text" id="subject" placeholder="제목을 입력해주세요">
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-1">
                                <div class="col-lg-12">
                                    <div class="mb-2">
                                        <label for="comments" class="form-label">문의 내용</label>
                                        <textarea id="comments" rows="4" class="form-control form-control-light" placeholder="내용을 입력해주세요"></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2">
                                <div class="col-12 text-end">
                                    <button class="btn btn-primary">문의 보내기<i
                                        class="mdi mdi-telegram ms-1"></i> </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- END CONTACT -->

        <!-- START FOOTER -->
        <footer class="bg-dark py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <img src="assets/images/logo.png" alt="" class="logo-dark" height="18" />
                        <p class="text-muted mt-4">Hyper makes it easier to build better websites with
                            <br> great speed. Save hundreds of hours of design
                            <br> and development by using it.</p>

                        <ul class="social-list list-inline mt-3">
                            <li class="list-inline-item text-center">
                                <a href="javascript: void(0);" class="social-list-item border-primary text-primary"><i class="mdi mdi-facebook"></i></a>
                            </li>
                            <li class="list-inline-item text-center">
                                <a href="javascript: void(0);" class="social-list-item border-danger text-danger"><i class="mdi mdi-google"></i></a>
                            </li>
                            <li class="list-inline-item text-center">
                                <a href="javascript: void(0);" class="social-list-item border-info text-info"><i class="mdi mdi-twitter"></i></a>
                            </li>
                            <li class="list-inline-item text-center">
                                <a href="javascript: void(0);" class="social-list-item border-secondary text-secondary"><i class="mdi mdi-github"></i></a>
                            </li>
                        </ul>

                    </div>

                    <div class="col-lg-2 col-md-4 mt-3 mt-lg-0">
                        <h5 class="text-light">Company</h5>

                        <ul class="list-unstyled ps-0 mb-0 mt-3">
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">About Us</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Documentation</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Blog</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Affiliate Program</a></li>
                        </ul>

                    </div>

                    <div class="col-lg-2 col-md-4 mt-3 mt-lg-0">
                        <h5 class="text-light">Apps</h5>

                        <ul class="list-unstyled ps-0 mb-0 mt-3">
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Ecommerce Pages</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Email</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Social Feed</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Projects</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Tasks Management</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-4 mt-3 mt-lg-0">
                        <h5 class="text-light">Discover</h5>

                        <ul class="list-unstyled ps-0 mb-0 mt-3">
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Help Center</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Our Products</a></li>
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">Privacy</a></li>
                        </ul>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="mt-5">
                            <p class="text-muted mt-4 text-center mb-0">© 2018 - <script>document.write(new Date().getFullYear())</script> Hyper. Design and coded by
                                Coderthemes</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- END FOOTER -->

     <!-- bundle -->
        <script src="${path}/tools/main_assets/js/vendor.min.js"></script>
        <script src="${path}/tools/main_assets/js/app.min.js"></script>

    </body>

</html>