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

                                <div class="text-center w-75 m-auto mb-3">
                                    <h4 class="text-dark-50 text-center mt-0 fw-bold">비밀번호 찾기</h4>
        
                                </div>

                           
                                   <form method="post" action="${path}/getUserPw.do">
									
                                    <div class="mb-3">
                                      
                                        <label for="name" class="form-label">이름</label>
                                        <input class="form-control" type="text" id="name" required="" name="uiName" placeholder="이름을 입력하세요">
                                    </div>

                                    <div class="mb-3">
                                      
                                        <label for="id" class="form-label">아이디</label>
                                       <input type="text" id="id" class="form-control" name="uiId" placeholder="아이디를 입력하세요">
                                       
                                    </div>

                                    <div class="mb-3 mb-0 text-center">
                                        <button class="btn btn-primary" type="button" onclick="findPw()">비밀번호 찾기</button>
                                    </div>

                                </form>

                            </div> <!-- end card-body -->
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
			
			// 링크를 보내는 것보다 인증번호를 보내는 것이 나을 것 같다.
				// 링크를 보내려면 랜덤한 주소+유효시간 설정해줘야하는데,
				// 그냥 인증번호+유효시간 설정 하는게 낫다.
				
			// 이메일로 번호 부여 혹은 비밀번호 수정 혹은 임시 비밀번호 부여
				// 임시 번호를 부여한다고하면, 회원의 비밀번호를 임시번호로 변경한 상황에서 메일로 보낸다.
					// service에서 임시 번호 생성 후, 업데이트 
					// 이메일로 앞에서 얻은 결과를 보내기
		
			function findPw(){
	
                $.ajax({
                url : "${path}/getUserPw.do",
                type : "get",
                dataType : "json",
                data : $("form").serialize(),
                success : function(data){
                		userPw = data.userPw;
	                    if(userPw != null){
	                        alert("임시 비밀번호를 이메일로 보냈습니다.");
	              
	                    }else{
	                        alert("정보가 올바르지 않습니다.");
	                    }
	                }
				})
			}
		
		</script>
		
    </body>
</html>