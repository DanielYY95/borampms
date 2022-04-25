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



 
<body class="loading font-16" data-layout-config='{"darkMode":false}'>

		
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

                <!-- right menu -->
                <ul class="navbar-nav ms-auto align-items-center">
                
                    <li class="nav-item me-0">
                         <c:if test="${empty user_info.uiName}">
                            <a href="${path}/loginFrm.do"  
                                class="nav-link d-lg-none" style="font-size: 1.2rem;">로그인</a>
                            <a href="${path}/loginFrm.do"  
                                class="btn btn-sm btn-light 
                                    rounded-pill d-none d-lg-inline-flex"><!-- 버튼같은 a태그 -->
                                <span style="padding-top: 3%; font-size: 1.2rem;">로그인&nbsp;</span> 
                                    <i class="dripicons-power" style="font-size: 1.2rem;"> </i>
                            </a> 
                          
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

                        <p class="mb-4 font-16 text-white-50">BORAM3 PMS는 간편하고 편리하며, <br>
                            프로젝트 관리에 필요한 기능들을 제공하고 있습니다.</p>
                        <a href="${path}${reg_prjList_Link}" 
                                class="btn btn-success" style="font-size: 1.3rem;">${reg_prjList_text}
                                <i class="mdi mdi-arrow-right ms-1"></i></a><br>
                    <c:if test="${empty user_info.uiName}">
                        <button class="mt-4 p-2 btn btn-secondary" style="font-size: 1.5rem" 
                            ><a style="color:white" href="${path}/login.do?method=session&uiId=daniel95&uiPw=qwer1234&toURL=">체험용 로그인</a></button>
                    </c:if>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="text-md-end mt-3 mt-md-0">
                        <iframe 
                            width="1000" height="650" src="https://www.youtube.com/embed/lOVG3tafBzU?start=881" 
                            title="YouTube video player" 
                            frameborder="0" 
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
                            allowfullscreen>
                        </iframe>

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
                    <div class="col-lg-3 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-desktop text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">정보관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-schedule text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">일정관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-comment-dots text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">소통관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-books text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">업무관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil  uil-users-alt text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">인력관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-lightbulb-alt text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">리스크관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil  uil-file-check text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">결재관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="text-center p-2 p-sm-3">
                            <div class="avatar-sm m-auto">
                                <span class="avatar-title bg-primary-lighten rounded-circle">
                                    <i class="uil uil-down-arrow text-primary font-24"></i>
                                </span>
                            </div>
                            <h4 class="mt-3">산출물관리</h4>
                            <p class="text-muted mt-2 mb-0">
                            </p>
                        </div>
                    </div>


                </div>

            </div>
        </section>
        <!-- END SERVICES -->


        <!-- START FOOTER -->
        <footer class="bg-dark py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <img src="/borampms/tools/project_assets/images/boram_dark.png" alt="" height="65">
                    
                    </div>

                    <div class="col-lg-3 col-md-4 mt-3 mt-lg-0">
                        <h5 class="text-light">회사 주소</h5>
                        <ul class="list-unstyled ps-0 mb-0 mt-3">
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">
                                <p>서울특별시 강남구<br> 
                                    역삼동 테헤란로 132 <br>
                                    한독약품빌딩 8층</p></a></li>
                            
                        </ul>
                        
                    </div>


                    <div class="col-lg-2 col-md-4 mt-3 mt-lg-0">
                        <h5 class="text-light">운영시간</h5>

                        <ul class="list-unstyled ps-0 mb-0 mt-3">
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">9:00 ~ 18:00</a></li>
                            
                        </ul>

                    </div>

                    <div class="col-lg-2 col-md-4 mt-3 mt-lg-0">
                        <h5 class="text-light">이메일</h5>

                        <ul class="list-unstyled ps-0 mb-0 mt-3">
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">asrs02041@gmail.com</a></li>
                        </ul>
                    </div>

                    <div class="col-lg-2 col-md-4 mt-3 mt-lg-0">
                        <h5 class="text-light">고객문의</h5>

                        <ul class="list-unstyled ps-0 mb-0 mt-3">
                            <li class="mt-2"><a href="javascript: void(0);" class="text-muted">02-1111-2222</a></li>
        
                        </ul>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="mt-5">
                            <p class="text-muted mt-4 text-center mb-0">© <script>document.write(new Date().getFullYear())</script> BORAM3 PMS</p>
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