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

		
       	<!-- <c:set var="user_info.uiName" value="양초명" /> -->
        <c:set var="reg_prjList_Link" value="${user_info.uiName==null? '/regUser.do': '/prjList.do'}" />        
		<c:set var="reg_prjList_text" value="${user_info.uiName==null? '시작하기': '내 프로젝트 목록'}" />

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
	                            <a href="${path}/loginFrm.do"  class="nav-link d-lg-none">로그인</a>
	                            <a href="${path}/loginFrm.do"  class="btn btn-sm btn-light rounded-pill d-none d-lg-inline-flex"><!-- 버튼같은 a태그 -->
	                                <span style="padding-top: 3%;">로그인&nbsp;</span> <i class="dripicons-power" > </i>
	                            </a> 
	                            <span>${user_info.uiName}</span>
                            </c:if>
                            <c:if test="${!empty user_info.uiName}">
                            	<span class="badge bg-secondary text-light rounded-pill p-2 pb-1 fs-5">${user_info.uiName} 님</span>
                            	<a href="${path}/login.do?method=logout" class="nav-link">로그아웃&nbsp;<i class="dripicons-enter"></i></a>
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
                            <a href="${path}${reg_prjList_Link}" class="btn btn-success">${reg_prjList_text}<i
                                    class="mdi mdi-arrow-right ms-1"></i></a>
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
                            <p class="text-muted mt-2 mb-0">Et harum quidem rerum as expedita distinctio nam libero tempore
                                cum soluta nobis est cumque quo.
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
                            <p class="text-muted mt-2 mb-0">Temporibus autem quibusdam et aut officiis necessitatibus saepe
                                eveniet ut sit et recusandae.
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
                            <p class="text-muted mt-2 mb-0">Nam libero tempore, cum soluta a est eligendi minus id quod
                                maxime placeate facere assumenda est.
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
                            <p class="text-muted mt-2 mb-0">Et harum quidem rerum as expedita distinctio nam libero tempore
                                cum soluta nobis est cumque quo.
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
                            <p class="text-muted mt-2 mb-0">Temporibus autem quibusdam et aut officiis necessitatibus saepe
                                eveniet ut sit et recusandae.
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
                            <p class="text-muted mt-2 mb-0">Nam libero tempore, cum soluta a est eligendi minus id quod
                                maxime placeate facere assumenda est.
                            </p>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!-- END SERVICES -->

        <!-- START FEATURES 1 -->
        <section class="py-5 bg-light-lighten border-top border-bottom border-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h3>Flexible <span class="text-primary">Layouts</span></h3>
                            <p class="text-muted mt-2">There are three different layout options available to cater need for
                                any <br /> modern web
                                application.</p>
                        </div>
                    </div>
                </div>

                <div class="row mt-1">
                    <div class="col-lg-4 col-md-6">
                        <div class="demo-box text-center mt-3">
                            <img src="assets/images/layouts/layout-1.png" alt="demo-img"
                                class="img-fluid shadow-sm rounded">
                            <h5 class="mt-3 f-17">Vertical Layout</h5>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="demo-box text-center mt-3">
                            <img src="assets/images/layouts/layout-2.png" alt="demo-img"
                                class="img-fluid shadow-sm rounded">
                            <h5 class="mt-3 f-17">Horizontal Layout</h5>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="demo-box text-center mt-3">
                            <img src="assets/images/layouts/layout-3.png" alt="demo-img"
                                class="img-fluid shadow-sm rounded">
                            <h5 class="mt-3 f-17">Detached Layout</h5>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="demo-box text-center mt-3">
                            <img src="assets/images/layouts/layout-5.png" alt="demo-img"
                                class="img-fluid shadow-sm rounded">
                            <h5 class="mt-3 f-17">Light Sidenav Layout</h5>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="demo-box text-center mt-3">
                            <img src="assets/images/layouts/layout-6.png" alt="demo-img"
                                class="img-fluid shadow-sm rounded">
                            <h5 class="mt-3 f-17">Boxed Layout</h5>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-6">
                        <div class="demo-box text-center mt-3">
                            <img src="assets/images/layouts/layout-4.png" alt="demo-img"
                                class="img-fluid shadow-sm rounded">
                            <h5 class="mt-3 f-17">Semi Dark Layout</h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- END FEATURES 1 -->

        <!-- START FEATURES 2 -->
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h1 class="mt-0"><i class="mdi mdi-heart-multiple-outline"></i></h1>
                            <h3>Features you'll <span class="text-danger">love</span></h3>
                            <p class="text-muted mt-2">Hyper comes with next generation ui design and have multiple benefits
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row mt-2 py-5 align-items-center">
                    <div class="col-lg-5 col-md-6">
                        <img src="assets/images/features-1.svg" class="img-fluid" alt="">
                    </div>
                    <div class="col-lg-6 offset-md-1 col-md-5">
                        <h3 class="fw-normal">Inbuilt applications and pages</h3>
                        <p class="text-muted mt-3">Hyper comes with a variety of ready-to-use applications and pages that help to speed up the development</p>

                        <div class="mt-4">
                            <p class="text-muted"><i class="mdi mdi-circle-medium text-primary"></i> Projects & Tasks</p>
                            <p class="text-muted"><i class="mdi mdi-circle-medium text-primary"></i> Ecommerce Application Pages</p>
                            <p class="text-muted"><i class="mdi mdi-circle-medium text-primary"></i> Profile, pricing, invoice</p>
                            <p class="text-muted"><i class="mdi mdi-circle-medium text-primary"></i> Login, signup, forget password</p>
                        </div>

                        <a href="" class="btn btn-primary rounded-pill mt-3">Read More <i class="mdi mdi-arrow-right ms-1"></i></a>

                    </div>
                </div>

                <div class="row pb-3 pt-5 align-items-center">
                    <div class="col-lg-6 col-md-5">
                        <h3 class="fw-normal">Simply beautiful design</h3>
                        <p class="text-muted mt-3">The simplest and fastest way to build dashboard or admin panel. Hyper is built using the latest tech and tools and provide an easy way to customize anything, including an overall color schemes, layout, etc.</p>

                        <div class="mt-4">
                            <p class="text-muted"><i class="mdi mdi-circle-medium text-success"></i> Built with latest Bootstrap</p>
                            <p class="text-muted"><i class="mdi mdi-circle-medium text-success"></i> Extensive use of SCSS variables</p>
                            <p class="text-muted"><i class="mdi mdi-circle-medium text-success"></i> Well documented and structured code</p>
                            <p class="text-muted"><i class="mdi mdi-circle-medium text-success"></i> Detailed Documentation</p>
                        </div>

                        <a href="" class="btn btn-success rounded-pill mt-3">Read More <i class="mdi mdi-arrow-right ms-1"></i></a>

                    </div>
                    <div class="col-lg-5 col-md-6 offset-md-1">
                        <img src="assets/images/features-2.svg" class="img-fluid" alt="">
                    </div>
                </div>

            </div>
        </section>
        <!-- END FEATURES 2 -->

        <!-- START PRICING -->
        <section class="py-5 bg-light-lighten border-top border-bottom border-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h1 class="mt-0"><i class="mdi mdi-tag-multiple"></i></h1>
                            <h3>Choose Simple <span class="text-primary">Pricing</span></h3>
                            <p class="text-muted mt-2">The clean and well commented code allows easy customization of the
                                theme.It's designed for
                                <br>describing your app, agency or business.</p>
                        </div>
                    </div>
                </div>

                <div class="row mt-5 pt-3">
                    <div class="col-md-4">
                        <div class="card card-pricing">
                            <div class="card-body text-center">
                                <p class="card-pricing-plan-name fw-bold text-uppercase">Standard License </p>
                                <i class="card-pricing-icon dripicons-user_info.uiName text-primary"></i>
                                <h2 class="card-pricing-price">$49 <span>/ License</span></h2>
                                <ul class="card-pricing-features">
                                    <li>10 GB Storage</li>
                                    <li>500 GB Bandwidth</li>
                                    <li>No Domain</li>
                                    <li>1 user_info.uiName</li>
                                    <li>Email Support</li>
                                    <li>24x7 Support</li>
                                </ul>
                                <button class="btn btn-primary mt-4 mb-2 rounded-pill">Choose Plan</button>
                            </div>
                        </div>
                        <!-- end Pricing_card -->
                    </div>
                    <!-- end col -->

                    <div class="col-md-4">
                        <div class="card card-pricing card-pricing-recommended">
                            <div class="card-body text-center">
                                <div class="card-pricing-plan-tag">Recommended</div>
                                <p class="card-pricing-plan-name fw-bold text-uppercase">Multiple License</p>
                                <i class="card-pricing-icon dripicons-briefcase text-primary"></i>
                                <h2 class="card-pricing-price">$99 <span>/ License</span></h2>
                                <ul class="card-pricing-features">
                                    <li>50 GB Storage</li>
                                    <li>900 GB Bandwidth</li>
                                    <li>2 Domain</li>
                                    <li>10 user_info.uiName</li>
                                    <li>Email Support</li>
                                    <li>24x7 Support</li>
                                </ul>
                                <button class="btn btn-primary mt-4 mb-2 rounded-pill">Choose Plan</button>
                            </div>
                        </div>
                        <!-- end Pricing_card -->
                    </div>
                    <!-- end col -->

                    <div class="col-md-4">
                        <div class="card card-pricing">
                            <div class="card-body text-center">
                                <p class="card-pricing-plan-name fw-bold text-uppercase">Extended License</p>
                                <i class="card-pricing-icon dripicons-store text-primary"></i>
                                <h2 class="card-pricing-price">$599 <span>/ License</span></h2>
                                <ul class="card-pricing-features">
                                    <li>100 GB Storege</li>
                                    <li>Unlimited Bandwidth</li>
                                    <li>10 Domain</li>
                                    <li>Unlimited user_info.uiName</li>
                                    <li>Email Support</li>
                                    <li>24x7 Support</li>
                                </ul>
                                <button class="btn btn-primary mt-4 mb-2 rounded-pill">Choose Plan</button>
                            </div>
                        </div>
                        <!-- end Pricing_card -->
                    </div>
                    <!-- end col -->

                </div>

            </div>
        </section>
        <!-- END PRICING -->

        <!-- START FAQ -->
        <section class="py-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h1 class="mt-0"><i class="mdi mdi-frequently-asked-questions"></i></h1>
                            <h3>Frequently Asked <span class="text-primary">Questions</span></h3>
                            <p class="text-muted mt-2">Here are some of the basic types of questions for our customers. For more
                                <br>information please contact us.</p>

                            <button type="button" class="btn btn-success btn-sm mt-2"><i class="mdi mdi-email-outline me-1"></i> Email us your question</button>
                            <button type="button" class="btn btn-info btn-sm mt-2 ms-1"><i class="mdi mdi-twitter me-1"></i> Send us a tweet</button>
                        </div>
                    </div>
                </div>

                <div class="row mt-5">
                    <div class="col-lg-5 offset-lg-1">
                        <!-- Question/Answer -->
                        <div>
                            <div class="faq-question-q-box">Q.</div>
                            <h4 class="faq-question text-body">Can I use this template for my client?</h4>
                            <p class="faq-answer mb-4 pb-1 text-muted">Yup, the marketplace license allows you to use this theme
                                in any end products.
                                For more information on licenses, please refere <a href="https://themes.getbootstrap.com/licenses/" target="_blank">here</a>.</p>
                        </div>

                        <!-- Question/Answer -->
                        <div>
                            <div class="faq-question-q-box">Q.</div>
                            <h4 class="faq-question text-body">How do I get help with the theme?</h4>
                            <p class="faq-answer mb-4 pb-1 text-muted">Use our dedicated support email (support@coderthemes.com) to send your issues or feedback. We are here to help anytime.</p>
                        </div>

                    </div>
                    <!--/col-lg-5 -->

                    <div class="col-lg-5">
                        <!-- Question/Answer -->
                        <div>
                            <div class="faq-question-q-box">Q.</div>
                            <h4 class="faq-question text-body">Can this theme work with Wordpress?</h4>
                            <p class="faq-answer mb-4 pb-1 text-muted">No. This is a HTML template. It won't directly with
                                wordpress, though you can convert this into wordpress compatible theme.</p>
                        </div>

                        <!-- Question/Answer -->
                        <div>
                            <div class="faq-question-q-box">Q.</div>
                            <h4 class="faq-question text-body">Will you regularly give updates of Hyper?</h4>
                            <p class="faq-answer mb-4 pb-1 text-muted">Yes, We will update the Hyper regularly. All the
                                future updates would be available without any cost.</p>
                        </div>

                    </div>
                    <!--/col-lg-5-->
                </div>
                <!-- end row -->

            </div> <!-- end container-->
        </section>
        <!-- END FAQ -->


        <!-- START CONTACT -->
        <section class="py-5 bg-light-lighten border-top border-bottom border-light">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <h3>Get In <span class="text-primary">Touch</span></h3>
                            <p class="text-muted mt-2">Please fill out the following form and we will get back to you shortly. For more
                                <br>information please contact us.</p>
                        </div>
                    </div>
                </div>

                <div class="row align-items-center mt-3">
                    <div class="col-md-4">
                        <p class="text-muted"><span class="fw-bold">Customer Support:</span><br> <span class="d-block mt-1">+1 234 56 7894</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">Email Address:</span><br> <span class="d-block mt-1">info@gmail.com</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">Office Address:</span><br> <span class="d-block mt-1">4461 Cedar Street Moro, AR 72368</span></p>
                        <p class="text-muted mt-4"><span class="fw-bold">Office Time:</span><br> <span class="d-block mt-1">9:00AM To 6:00PM</span></p>
                    </div>

                    <div class="col-md-8">
                        <form>
                            <div class="row mt-4">
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="fullname" class="form-label">Your Name</label>
                                        <input class="form-control form-control-light" type="text" id="fullname" placeholder="Name...">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="mb-2">
                                        <label for="emailaddress" class="form-label">Your Email</label>
                                        <input class="form-control form-control-light" type="email" required="" id="emailaddress" placeholder="Enter you email...">
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-1">
                                <div class="col-lg-12">
                                    <div class="mb-2">
                                        <label for="subject" class="form-label">Your Subject</label>
                                        <input class="form-control form-control-light" type="text" id="subject" placeholder="Enter subject...">
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-1">
                                <div class="col-lg-12">
                                    <div class="mb-2">
                                        <label for="comments" class="form-label">Message</label>
                                        <textarea id="comments" rows="4" class="form-control form-control-light" placeholder="Type your message here..."></textarea>
                                    </div>
                                </div>
                            </div>

                            <div class="row mt-2">
                                <div class="col-12 text-end">
                                    <button class="btn btn-primary">Send a Message <i
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