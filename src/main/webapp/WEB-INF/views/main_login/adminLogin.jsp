<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
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
 
 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
 
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
                            	<div class="text-center w-75 mx-auto mb-3">
									<i class="fa fa-user-secret fa-4x" aria-hidden="true"></i>
								</div>
                                <div class="text-center w-75 m-auto">
                                    <h4 class="text-dark-50 text-center mt-0 fw-bold">관리자 로그인</h4>
        
                                </div>

                                <form method="post" action="<c:url value='/user/login'/>">
									
                                    <div class="mb-3">
                                        
                                        <label for="id" class="form-label">아이디</label>
                                        <input class="form-control" type="text" id="id" required="" name="adminId" placeholder="아이디를 입력하세요">
                                    </div>

                                    <div class="mb-3">
                                        
                                        <label for="password" class="form-label">비밀번호</label>
                                        <div class="input-group input-group-merge">
                                            <input type="password" id="password" class="form-control" name="adminPw" placeholder="비밀번호를 입력하세요">
                                            <div class="input-group-text" data-password="false">
                                                <span class="password-eye"></span>
                                            </div>
                                        </div>
                                    </div>


                                    <div class="mb-3 mb-0 text-center">
                                        <button class="btn btn-primary" type="submit" onclick="return loginchk()">로그인 </button>
                                    </div>

                                </form>
                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->

                        <div class="row mt-3">
                            <div class="col-12 text-center">
	                           <c:if test="${param.error == 'true'}">
								<strong>아이디와 암호가 일치하지 않습니다.</strong>
							</c:if>
                            </div> <!-- end col -->
                        </div>

                        <!-- end row -->

                    </div> <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end page -->

        <footer class="footer footer-alt">
           <script>document.write(new Date().getFullYear())</script> BORAM3 PMS
        </footer>

        <!-- bundle -->
        <script src="${path}/tools/main_assets/js/vendor.min.js"></script>
        <script src="${path}/tools/main_assets/js/app.min.js"></script>
		
		<script>
		
		   function loginchk(){
				if($("[name=adminId]").val().trim()==""){
					alert("아이디를 입력해주세요.");
					// 값이 들어가있지 않으면 false로 리턴 
					$("[name=adminId]").focus();
					return false;
				}else if ($("[name=adminPw]").val().trim()==""){
					alert("비밀번호를 입력해주세요.");
					$("[name=adminPw]").focus();
					return false;
				}else{
					return true;
					// 유효성 검증 후 값이 전부 들어가 있으면 main으로 이동 
				}
			}   
		
		
		
		</script>
		
    </body>
</html>