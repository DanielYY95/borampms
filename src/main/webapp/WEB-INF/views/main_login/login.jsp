<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
	$(document).ready(function(){
		
		$("#selectLan").val("${param.lang}")
		$("#selectLan").change(function(){
			if($(this).val()!=""){
				location.href="${path}/choiceLang.do?lang="+$(this).val();
			}
		});
		
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
                            <div>
	                            <div class="col-3 float-end">
		                            <select class="form-select" id="selectLan"  aria-label="Floating label select example">
									  	<option value=""><spring:message code="chlange"/></option>
									  	<option value="ko">한국어</option>
									  	<option value="en">english</option>
									  </select>
								</div>
							</div>
							
                            <div class="card-body p-4">

                                <div class="text-center w-75 m-auto">
                                    <h4 class="text-dark-50 text-center mt-0 fw-bold">
                                    	<spring:message code="login"/></h4>
        
                                </div>

                                <form method="post" action="${path}/login.do?method=session">
									<input name="toURL" value="${toURL}" hidden />
                                    <div class="mb-3">
                                        <a href="${path}/findId.do" class="text-muted float-end"><small>
                                        	<spring:message code="findId"/></small></a>
                                        <label for="id" class="form-label"><spring:message code="id"/></label>
                                        <input class="form-control" type="text" id="id" value="${cookie.id.value}" 
                                        	required="" name="uiId" placeholder="<spring:message code="inputId"/>">
                                    </div>

                                    <div class="mb-3">
                                        <a href="${path}/findPw.do" class="text-muted float-end"><small>
                                        	<spring:message code="findPw"/></small></a>
                                        <label for="password" class="form-label"><spring:message code="pw"/></label>
                                        <div class="input-group input-group-merge">
                                            <input type="password" id="password" class="form-control" name="uiPw" 
                                            	placeholder="<spring:message code="inputPw"/>">
                                            <div class="input-group-text" data-password="false">
                                                <span class="password-eye"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3 mb-3">
                                        <div class="form-check">
                                            <input type="checkbox" name="saveId" class="form-check-input" id="checkbox-signin">
                                            <label class="form-check-label" for="checkbox-signin"><spring:message code="rememberId"/></label>
                                            
                                        </div>
                                    </div>

                                    <div class="mb-3 mb-0 text-center">
                                        <button class="btn btn-primary" type="submit" onclick="return loginchk()"><spring:message code="loginBtn"/> </button>
                                    </div>

                                </form>
                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->

                        <div class="row mt-3">
                            <div class="col-12 text-center">
	                            <p class="text-muted"><spring:message code="regMsg"/> 
	                            	<a href="${path}/regUser.do" class="text-muted ms-1"><b><spring:message code="reg"/>
	                            		</b></a></p>
	                            
	                            <sec:authorize access="!isAuthenticated()">
	                           		 <a href="/borampms/adminLoginform" class="text-muted float-end">
	                           		 	<h5><spring:message code="adminLogin"/> -></h5></a>
	                             </sec:authorize>
	                            <sec:authorize access="isAuthenticated()">
						
	                           	 	<a href="/borampms/admin/" class="text-muted float-end">
	                           	 		<h5><spring:message code="adminPage"/> -></h5></a>
	                            </sec:authorize>
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
				if($("[name=uiId]").val().trim()==""){
					alert("아이디를 입력해주세요.");
					// 값이 들어가있지 않으면 false로 리턴 
					$("[name=uiId]").focus();
					return false;
				}else if ($("[name=uiPw]").val().trim()==""){
					alert("비밀번호를 입력해주세요.");
					$("[name=uiPw]").focus();
					return false;
				}else{
					return true;
					// 유효성 검증 후 값이 전부 들어가 있으면 main으로 이동 
				}
			}   
		
		$(document).ready(function(){
			var loginMsg="${loginMsg}";
			if(loginMsg!=""){
				alert(loginMsg);
				if(loginMsg=="로그인 성공!"){ // 로그인 성공을 보여주고나서 이동
					location.href="${path}/prjList.do"; 
				}
			}
			
		});
		
		
		</script>
		
    </body>
</html>