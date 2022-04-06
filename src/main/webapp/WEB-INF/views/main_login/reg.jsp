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
	
	
	function chkValidate(){

		// 입력 유효성 검사 
		if($("[name=uiId]").val().trim()==""){
			alert("아이디을 입력해주세요.");
			$("[name=uiId]").focus();
			return false;	
        }
        if ($("[name=uiPw]").val().trim()==""){
			alert("비밀번호를 입력해주세요.");
			$("[name=uiPw]").focus();
			return false;
        }
        
        if ($("[name=uiName]").val().trim()==""){
			alert("이름을 입력해주세요.");
			$("[name=uiName]").focus();
			return false;
               
		}
        
        if ($("[name=uiEmail]").val().trim()==""){
			alert("이메일을 입력해주세요.");
			$("[name=uiEmail]").focus();
			return false;
		}
        
        if ($("[name=uiBirth]").val()==""){
			alert("생년월일을 입력해주세요.");
			$("[name=uiBirth]").focus();
			return false;
		}
        
        if ($("[name=uiDept]").val()==""){
			alert("부서를 입력해주세요.");
			$("[name=uiDept]").focus();
			return false;
		}
		
        if ($("[name=uiRank]").val()==""){
			alert("직급을 입력해주세요.");
			$("[name=uiRank]").focus();
			return false;
		}
        
		$("#signupBtn").click();
			
		
	}

      // 중복 확인 후, 중복이 아니라고하면 아이디 readonly로 만듬. 중복이라고하면 아이디 초기화
      function idchk(){
                
            if($("[name=uiId]").val().trim()==''){
                    alert("아이디를 입력해주세요.");
                    return;
                }
            
            if(!checkId($("#id").val())){
             	alert("아이디는 숫자, 영소문자로 최소 4글자에서 최대 20자 가능합니다.");
             	return;
             };
                
                $.ajax({
                url : "${path}/regUser.do?method=idchk",
                type : "get",
                dataType : "json",
                data : "uiId="+$("[name=uiId]").val(),
                success : function(data){
                    result = data.result;
                    if(result == 0){
                        alert("사용가능한 아이디입니다.");
                        $("[name=uiId]").attr("readonly", true);

                    }else{
                        alert("중복된 아이디입니다.");
                    }
                }
                
                });

        }

	
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
                                <a href="${path}/main.do">
                                    <span><img src="${path}/tools/project_assets/images/boram_light.png" alt="" height="50" width="175"></span>
                                </a>
                            </div>

                            <div class="card-body p-4">
                                
                                <div class="text-center w-75 m-auto">
                                    <h4 class="text-dark-50 text-center mt-0 fw-bold">사원가입</h4>
                                
                                </div>

                                <form id="regForm" method="post" action="${path}/regUser.do?method=insert">

                                    <div class="mb-3">
                                        <label for="id" class="form-label">아이디</label>
                                        <button style="float:right" class="btn btn-dark" type="button" onclick="idchk()">중복 확인</button>
                                        <input class="form-control" type="text" id="id" name="uiId" placeholder="영소문자로 시작해서 숫자, 영소문자로 4자 ~ 20자" required>
                                    </div>

                                    <div class="mb-3">
                                        <label for="password" class="form-label">패스워드</label>
                                        <div class="input-group input-group-merge">
                                            <input type="password" id="pw" class="form-control" name="uiPw" required placeholder="숫자, 영문자로 최소 8글자에서 최대 20자">
                                            <div class="input-group-text" data-password="false">
                                                <span class="password-eye"></span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="mb-3">
                                        <label for="password" class="form-label">패스워드 확인</label>
                                        <div class="input-group input-group-merge">
                                            <input type="password" id="pw2" class="form-control"  required>
                                            <div class="input-group-text" data-password="false">
                                                <span class="password-eye"></span>
                                            </div>
                                        </div>
                                        <span id="pwMsg"></span>
                                    </div>

									<div class="row g-2">
									  	<div class="col-4 mb-3">
	                                        <label for="fullname" class="form-label">이름</label>
	                                        <input class="form-control" type="text" id="fullname" name="uiName" required>
	                                    </div>
	                                    
	
	                                    <div class="col-8 mb-3">
	                                        <label for="emailaddress" class="form-label">이메일</label>
	                                        <input class="form-control" type="email" id="emailaddress" name="uiEmail" required placeholder="아이디와 비밀번호 찾기에 사용됩니다">
	                                    </div>
            
									</div>

                                    
                           			<div class="row g-3">
	                        			<div class="mb-3 col-4">
	                                        <label for="example-date" class="form-label">생년월일</label>
	                                        <input class="form-control" id="example-date" name="uiBirth" type="date" name="uiBirth">
	                                    </div>
	                                    
	                                     <div class="mb-3 col">
	                                        <label for="dept" class="form-label">부서</label> 
	                                            <select class="form-select" id="dept" name="uiDept">
	                                                <option>개발1팀</option>
	                                                <option>개발2팀</option>
	                                                <option>인사팀</option>
	                                                <option>기획팀</option>
	                                                <option>디자인팀</option>
	                    							<option>마케팅팀</option>
	                                            </select>
	                                    </div>
	                                    
	                                     <div class="mb-3 col">
	                                        <label for="rank" class="form-label">직급</label> 
	                                            <select class="form-select" id="rank" name="uiRank">
	                                            	<option>실장</option>
	                                            	<option>팀장</option>
	                                                <option>부장</option>
	                                                <option>차장</option>
	                                                <option>과장</option>
	                                                <option>대리</option>
	                                                <option>주임</option>
	                    							<option>사원</option>
	                                            </select>
	                                    </div>
                           			
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


                                    <div class="mb-3 text-center">
                                        <button class="btn btn-primary" type="button" id="chkBtn" onclick="chkValidate()"> 가입 </button>
                                        <button type="button" hidden id="signupBtn"> </button>
                                    </div>

                                </form>
                            </div> <!-- end card-body -->
                        </div>
                        <!-- end card -->

                        <div class="row mt-3">
                            <div class="col-12 text-center">
                                <p class="text-muted">계정을 갖고 계신가요? <a href="${path}/loginFrm.do" class="text-muted ms-1"><b>로그인</b></a></p>
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
            <script>document.write(new Date().getFullYear())</script> BORAM3 PMS
        </footer>

        <!-- bundle -->
        <script src="${path}/tools/main_assets/js/vendor.min.js"></script>
        <script src="${path}/tools/main_assets/js/app.min.js"></script>
        <script>


            let result = 1; // 이게 0이 되어야 등록될 수 있도록
           

            // 패스워드 확인 => 패스워드 확인 작성 후, 패스워드 
            // 패스워드를 지웠을 경우, 초기화 (""가 되면 초기화되도록)

            // 패스워드 확인 작업
            	// 일치하다는 것을 확인후, 내용을 지우면 일치하지않음이 정상적으로 나온다.
            	// 문제: 패스워드 확인을 갑자기 확 지우면 메시지가 안 지워진다....
            	// 패스워드를 지우면 메시지가 지워지는데...
            
            $("#pw").keyup(function(){
				if($("#pw").val().trim()!=""){
					if($("#pw2").val()!=$("#pw").val()){ // 이게 꼭 반대여야하는듯...
						$("#pwMsg").css("color","red").text("비밀번호가 일치하지않습니다.");
						
					}else{
						$("#pwMsg").css("color","green").text("비밀번호가 일치합니다.");	
					}
					
				}
				// 패스워드확인에 아무것도 없을 때는 메시지x
				if($("#pw2").val().trim()=="" || $("#pw").val().trim()==""){
					$("#pwMsg").text("");
				}
			})
			

			$("#pw2").keyup(function(){
				if($("#pw2").val().trim()!=""){ // 이미 여기서 통과했으니 순서가 바뀌어야..
					if($("#pw").val()!=$("#pw2").val()){ //이게 반대여야...
						$("#pwMsg").css("color","red").text("비밀번호가 일치하지않습니다.");
						
					}else{
						$("#pwMsg").css("color","green").text("비밀번호가 일치합니다.");	
					}
					
				}
				// 패스워드에 아무것도 없을 때는 메시지x
				if($("#pw").val().trim()=="" || $("#pw2").val().trim()==""){
					$("#pwMsg").text("");
					
				}
			})
			
   
            // 폼 제출
            $("#signupBtn").click(function(){
        
                 if(!checkPw($("#pw").val())){
                	 alert("패스워드는 각각 하나 이상의 숫자, 영어로 최소 8글자에서 최대 20자 가능합니다.");
                 	return;
                 };
                 
                 if(!CheckName($("#fullname").val())){
                	 alert("이름을 한글 혹은 영문으로 제대로 입력해주세요");
                	 
                	 return; 
                	 
                 }
            	

                // 연락처 숫자 아니면 거르기
                if(isNaN($("[name=phone2]").val()) || 
                		isNaN($("[name=phone3]").val())){
                    alert("연락처는 숫자만 입력할 수 있습니다.")
                    return false;
                }

            	
                // 아이디 중복 체크 여부
                if(result==1){
                    alert("아이디 중복 체크해주세요.")
                    return false;
                }

                // 패스워드 둘 다 같으면
                if($("#pw").val() != $("#pw2").val()){
                    alert("비밀번호 확인이 일치하지않습니다.");
                    return false;
                }
                
                // 이메일 형식 확인
                if(!CheckEmail($("#emailaddress").val())){
                	alert("이메일 형식이 잘못되었습니다.");
                	return;
                };

                // 연락처 합치기
                $("[name=uiPhone]").val($("[name=phone1]").val()
                		+$("[name=phone2]").val()+$("[name=phone3]").val());
           
	            
                if(confirm("사원 가입을 진행하시겠습니까?"))
                    $("#regForm").submit();
               
            })
            
            function checkId(Id){ 
            		// 영문자로 시작해서 영어, 숫자로만 4~20글자 // ""를 하면 함수가 아니라고 에러
            	let regId = /^[A-Za-z]{1}[A-Za-z0-9]{4,20}$/;
            		  if(!regId.test(Id)) {                            
    			          return false;         
    			     }                            	
    			     else {                       	
    			          return true;         	
    			     }          
     
            	}
        
            function checkPw(Pw){
            		// 최소 하나이상의 영어, 숫자 8~20글자 필요
          	   let regPw = /^(?=.*[a-zA-z])(?=.*[0-9]).{8,20}$/;
          		  if(!regPw.test(Pw)) {                            
			          return false;         
			     }                            	
			     else {                       	
			          return true;         	
			     }          
        		
            }
            

            
                  // 이메일 형식 확인 함수
            function CheckEmail(email){

			   let regEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
								
			     if(!regEmail.test(email)) {                            
			          return false;         
			     }                            	
			     else {                       	
			          return true;         	
			     }                            
			
			}           
                  
                  
             function CheckName(name){
            	 
            	 let regName= /^[가-힣a-zA-Z]+$/;  // 영문 + 한글은 반드시 모음으로, 띄어쓰기 불가능
            	 
            	 if(!regName.test(name)){
            		   return false;         
			     }                            	
			     else {                       	
			          return true;         	
			     }                            
			
            	 
             }
	          


        </script>

  
    </body>
</html>