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
	$(document).ready(function(){
		
		<%-- 
		
		--%>	
	});
</script>
</head>

<!-- class="authentication-bg" 뺐음 -->
    <body data-layout-config='{"darkMode":false}'>
		<!-- 정가운데로 -->
        <div style="display: flex; align-items: center; min-height: 80vh;" class="account-pages pt-2 pt-sm-5 pb-4 pb-sm-5">
            <div class="container">
                <div class="row justify-content-center">
                  <div class="col-xxl-5 col-lg-6 col-sm-10"> <!-- 폼 크기 조절 -->
                        <div class="card">
                            <!-- Logo-->
                            <div class="card-header text-center bg-primary">
                                <a href="main.html">
                                    <span><img src="../images/main/logo.png" alt="" height="50" width="100"></span>
                                </a>
                            </div>

                            <div class="card-body p-4">
                                
                                <div class="text-center w-75 m-auto">
                                    <h4 class="text-dark-50 text-center mt-0 fw-bold">회원가입</h4>
                                
                                </div>

                                <form id="regForm" method="post" action="${path}/reg.do">

                                    <div class="mb-3">
                                        <label for="id" class="form-label">아이디</label>
                                        <button style="float:right" class="btn btn-dark" type="button">중복 확인</button>
                                        <input class="form-control" type="text" id="id" name="uiId" required>
                                    </div>

                                    <div class="mb-3">
                                        <label for="password" class="form-label">패스워드</label>
                                        <div class="input-group input-group-merge">
                                            <input type="password" id="password" class="form-control" name="uiPw" required>
                                            <div class="input-group-text" data-password="false">
                                                <span class="password-eye"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="password" class="form-label">패스워드 확인</label>
                                        <div class="input-group input-group-merge">
                                            <input type="password" id="password2" class="form-control"  required>
                                            <div class="input-group-text" data-password="false">
                                                <span class="password-eye"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="fullname" class="form-label">이름</label>
                                        <input class="form-control" type="text" id="fullname" name="uiName" required>
                                    </div>

                                    <div class="mb-3">
                                        <label for="emailaddress" class="form-label">이메일</label>
                                        <input class="form-control" type="email" id="emailaddress" name="uiEmail" required placeholder="아이디와 비밀번호 찾기에 사용됩니다">
                                    </div>

                                    
                           

                                    <div class="mb-3">
                                        <label for="example-date" class="form-label">생년월일</label>
                                        <input class="form-control" id="example-date" name="uiBirth" type="date" name="uiBirth">
                                    </div>

                                    
                                    <div class="row g-3 mb-3">
                                        <label for="phone1" class="form-label">연락처</label>
                                        <input type="text" name="uiPhone" hidden>
                                        <div class="col mt-0" >
                                            <select class="form-select mb-3"  required name="phone1">
                                                <option selected value="010">010</option>
                                                <option value="011">011</option>
                                    
                                                <option value="016">016</option>
                                                <option value="017">017</option>
                                                <option value="018">018</option>
                                                <option value="019">019</option>
                                            </select>     

                                        </div>
                                        -<div class="col mt-0"><input type="text" name="phone2" class="form-control" maxLength="4" required/></div>
                                        -<div class="col mt-0"><input type="text" name="phone3" class="form-control" maxLength="4" required/></div>
                                    </div>



                                    <div class="mb-3">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="checkbox-signup">
                                            <label class="form-check-label" for="checkbox-signup">개인정보 관리에 동의합니다. <a href="#" class="text-muted">개인정보 약관</a></label>
                                        </div>
                                    </div>

                                    <div class="mb-3 text-center">
                                        <button class="btn btn-primary" type="button" id="signupBtn"> 회원가입 </button>
                                    </div>

                                </form>
                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->

                        <div class="row mt-3">
                            <div class="col-12 text-center">
                                <p class="text-muted">계정을 갖고 계신가요? <a href="login.html" class="text-muted ms-1"><b>로그인</b></a></p>
                            </div> <!-- end col-->
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
            2018 - <script>document.write(new Date().getFullYear())</script> © Hyper - Coderthemes.com
        </footer>

        <!-- bundle -->
        <script src="${path}/tools/main_assets/js/vendor.min.js"></script>
        <script src="${path}/tools/main_assets/js/app.min.js"></script>
        <script>

            // 중복 확인 후, 중복이 아니라고하면 아이디 readonly로 만듬. 중복이라고하면 아이디 초기화

            // 패스워드 확인 작업


            // 연락처 숫자 아니면 거르기

            // 폼 제출
            $("#signupBtn").click(function(){

                alert($("[name=uiBirth]").val());

                // 패스워드 둘 다 같으면


                // 연락처 합치기
                $("[name=phone]").val($("[name=phone1]").val()+$("[name=phone2]").val()+$("[name=phone3]").val());

                if(confirm("회원가입을 진행하시겠습니까?"))
                    $("#regForm").submit();
               
            })


        </script>

  
    </body>
</html>