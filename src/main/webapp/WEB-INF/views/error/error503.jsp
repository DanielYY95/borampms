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
<title>서버 과부하</title>
<!-- App favicon -->
<link rel="shortcut icon" href="${path}/tools/main_assets/images/favicon.ico">

<!-- App css -->
<link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/main_assets/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />
 
 <!-- jquery 라이브러리 -->
 <script src="${path}/tools/jquery-3.6.0.js"></script>
 

<script type="text/javascript">
	$(document).ready(function(){
		
		<%-- 
		
		--%>	
	});
</script>
</head>

	<!-- class="authentication-bg" 뺐음 -->
    <body  data-layout-config='{"darkMode":false}'>
		<!-- form을 정 가운데로. min-height: 100vh를 통해 화면을 꽉채운 상태에서.  -->
        <div style="display: flex; align-items: center; min-height: 80vh;" class="account-pages pt-2 pt-sm-5 pb-4 pb-sm-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xxl-5 col-lg-6 col-sm-10"> <!-- 로그인 폼 크기 조절. 다만 992px ~ 1399px 까지가 문제.. -->
                        <div class="card">

                            <!-- Logo -->
                            <div class="card-header  text-center bg-primary">
                                <a href="${path}/main.do">
                                    <span><img src="${path}/tools/project_assets/images/boram_light.png" alt="" height="50" width="175"></span>
                                </a>
                            </div>

                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h1 class="text-error">5<i class="mdi mdi-emoticon-sad"></i>3</h1>
                                    <h4 class="text-uppercase text-danger mt-3">서버 폭주</h4>
                                    <p class="text-muted mt-3">서버 과부화로 인해 접근이 지연되고 있습니다. 
                                    							잠시 후, 다시 시도해주세요. </p>
                                    <div class="mb-3 text-center">
										관리자 문의: <span class="badge badge-outline-secondary rounded-pill">010-1111-2222</span>
									
									</div>
                                 	
                                 	<div class="text-center">
                                 		<a href="${path}/main.do"><button type="button" 
                                 			class="btn btn-success rounded-pill">메인으로 돌아가기</button></a>
                                 	</div>
                                </div>
                            </div>
                        </div>
                        <!-- end card -->

                 

                        <!-- end row -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end page -->

        <footer class="footer footer-alt">
            2018 - <script>document.write(new Date().getFullYear())</script> © Hyper - Coderthemes.com
        </footer>

        <!-- bundle -->
        <script src="${path}/tools/main_assets/js/vendor.min.js"></script>
        <script src="${path}/tools/main_assets/js/app.min.js"></script>
		
		<script>
			
		
		</script>
		
    </body>
</html>