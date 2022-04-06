<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>

    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <title>프로필 수정 - borampms</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="${path}/tools/main_assets/images/favicon.ico">

        <!-- App css -->
        <link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="${path}/tools/main_assets/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />

		 <!-- jquery 라이브러리 -->
		 <script src="${path}/tools/jquery-3.6.0.js"></script>
		 <style>
		 	.textLengthWrap p{
		 		display:inline;
		 	}
		 	.textLengthWrap{
		 		text-align:right;
		 	}
		 </style>
    </head>

	
    <body class="loading" data-layout-color="light"  data-layout="topnav" data-layout-mode="fluid" data-rightbar-onstart="true">
        <!-- Begin page -->
        <div class="wrapper">

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                	
                	<div>
                		<a href="${path}/main.do" class="logo text-center logo-light" style="background-color:#313a46">
							<span class="logo-lg">
								<img src="${path}/tools/project_assets/images/boram_dark.png" alt="" height="45">
							</span>
							<span class="logo-sm">
								<img src="${path}/tools/project_assets/images/boram_sm_dark.png" alt="" height="35">
							</span>
						</a>
			                	
                	</div>
                	
                	<jsp:include page="../include/headerBar.jsp" flush="true"/>
				
        			<br>

                    <!-- Start Content-->
                    <div class="container-fluid" style="padding-right: 190px; padding-left: 190px;">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                   	
                                    <h4 class="page-title">프로필 수정</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                <form id="uptForm" class="ps-3 pe-3" action="${path}/profile.do?method=profileUpt" method="post">
                                    <div class="card-body" style="padding:3rem 9rem;">
										<div class="row g-2">
											<div class="col mb-3">
												<input type="hidden" name="uiId" value="${user_info.uiId}"/>
												<label for="fullname" class="form-label">이름</label>
												<input class="form-control" type="text" id="name" name="uiName"
												value="${editUser.uiName}" readonly>
											</div>
											
											<div class="col mb-3">
													<label for="pw" class="form-label">패스워드</label>
													<div class="input-group input-group-merge">
														<input type="password" id="pw" class="form-control" name="uiPw"
															required value="${editUser.uiPw}">
														<div class="input-group-text" data-password="false">
															<span class="password-eye"></span>
														</div>
													</div>
											</div>
											
										</div>
										<div class="row g-2">
											<div class="col mb-3">
												<label for="dept" class="form-label">부서</label>
												<select class="form-select" id="dept" name="uiDept" value="${editUser.uiDept}">
													<option>개발1팀</option>
													<option>개발2팀</option>
													<option>인사팀</option>
													<option>기획팀</option>
													<option>디자인팀</option>
													<option>마케팅팀</option>
												</select>
											</div>
											<div class="col mb-3">
												<label for="dept" class="form-label">직급</label>
												<select class="form-select" id="rank" name="uiRank" value="${editUser.uiRank}">
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
									
										
										<div class="row g-2">
											<div class="col mb-3 position-relative">
												<label for="emailaddress" class="form-label">이메일</label>
												<input class="form-control" type="email" id="email" name="uiEmail"
													value="${editUser.uiEmail}">
											</div>
											
											<div class="col mb-3">
													<label for="userStatus" class="form-label">회원상태</label>
													<select class="form-select" id="userStatus" name="uiStatus" value="${editUser.uiStatus}">
														<option value="0">재직</option>
														<option value="1">퇴사</option>
														<option value="2">승인대기</option>
														<option value="3">반려</option>
													</select>
												</div>
												<script>
													// 처음 선택된 option에서 변경되지 않게.
														$("option").attr("disabled", "disabled");
												</script>

										</div>	
										
										<div class="row mb-3">
											<label for="phone1" class="form-label">연락처</label>
											<input type="text" name="uiPhone" hidden>
											<div class="col mt-0">
												<select class="form-select mb-3" required name="phone1">
													<option selected value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
												</select>
											</div>
												-<div class="col mt-0"><input type="text" name="phone2"
														class="form-control" maxLength="4" required /></div>
												-<div class="col mt-0"><input type="text" name="phone3"
														class="form-control" maxLength="4" required /></div>
										</div>
										<div>
											<label for="self-introduction" class="form-label">자기소개</label>
											<textarea class="form-control" id="intro" name="uiIntro" rows="5" placeholder="짧은 소개를 적어주세요.">${editUser.uiIntro}</textarea>
										</div>
										<div class="textLengthWrap"> <p class="textCount">0자</p> <p class="textTotal">/30자</p> </div>
										<hr>
										<div class="mb-3 text-center"
											style="display: flex; justify-content: space-between;">
											<button class="btn btn-secondary" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close" type="button" id="cancelBtn">취소</button>
											<button class="btn btn-primary" type="button" id="uptBtn">수정</button>
										</div>
                                    </div> <!-- end card-body-->
                                    </form>
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div> <!-- end row -->	
               		 </div>
                	 <!-- content -->


            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->
			<jsp:include page="../include/rightBar_footer.jsp" flush="true"/>
			
			</div>
        </div>
        <!-- END wrapper -->

         
        <script>
	        $("#uptBtn").click(function(){
	        	
	   		 
	            // 연락처 숫자 아니면 거르기
	            if(isNaN($("[name=phone2]").val()) || 
	            		isNaN($("[name=phone3]").val())){
	                alert("연락처는 숫자만 입력할 수 있습니다.")
	                return false;
	            }
	
	            
	            // 연락처 합치기
	            $("[name=uiPhone]").val($("[name=phone1]").val()
	            		+$("[name=phone2]").val()+$("[name=phone3]").val());
	       
	            
	            if(confirm("회원정보를 수정합니까?"))
	                $("#uptForm").submit();
	           
	        })
	        
	        // 취소버튼 클릭시 
	        $("#cancelBtn").click(function(){
	        	if(confirm("대쉬보드 페이지로 이동하시겠습니까?"))
	        		location.href="${path}/dash.do?method=list";
	        });
	        
	        // ajax로 상세정보 가져옴
					$(document).ready(function(){

						$.ajax({
							url: "${path}/profile.do?method=userDetail",
							type: "get",
							dataType: "json",
							data: "uiId="+$("[name=uiId]").val(),
							success: function (data) {
								editUser = data.editUser;
								$("#name").val(editUser.uiName);
								$("#pw").val(editUser.uiPw);
								$("#dept").val(editUser.uiDept);
								$("#userStatus").val(editUser.uiStatus);
								$("#rank").val(editUser.uiRank);
								$("#email").val(editUser.uiEmail);
								let phone = editUser.uiPhone;
								let phoneNum = [phone.slice(0, 3), phone.slice(3, 7), phone.slice(7)];
								$("[name=phone1]").val(phoneNum[0]);
								$("[name=phone2]").val(phoneNum[1]);
								$("[name=phone3]").val(phoneNum[2]);
								$("[name=uiIntro]").val(editUser.uiIntro);
							}
						});
					});
	        
	        		// textarea 글자수 제한
					$(document).ready(function(){
					$('#intro').keyup(function (e) {
						let content = $(this).val();
					    
					    // 글자수 세기
					    if (content.length == 0 || content == '') {
					    	$('.textCount').text('0자');
					    } else {
					    	$('.textCount').text(content.length + '자');
					    }
					    
					    // 글자수 제한
					    if (content.length > 30) {
					    	// 30자 부터는 타이핑 되지 않도록
					        $(this).val($(this).val().substring(0, 30));
					        // 30자 넘으면 알림창 뜨도록
					        alert('글자수는 30자까지 입력 가능합니다.');
					    };
					});
					});
        </script>

    </body>
</html>