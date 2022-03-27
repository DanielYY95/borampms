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
	<title>업무 목록 - borampms</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
	<meta content="Coderthemes" name="author" />
	<!-- App favicon -->
	<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>

	<!-- App css -->
	<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
	<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />

	<script src="${path}/a00_com/jquery-3.6.0.js"></script>

    <style>
        tr>th, tr>td{
            text-align: center;

        }
    


    </style>



</head>


<!-- 양념한 부분 msg관련 js와 detail.
	양념하고 싶은 거 : taskUser 활용 (조회리스트)
 -->

<script>
	let msg = '${msg}';
	
	if(msg!=''){
		alert(msg);
	}
	msg='';

</script>

<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid"
	data-rightbar-onstart="true">
	
	
	<!-- Begin page -->
	<div class="wrapper">
		<!-- ========== Left Sidebar Start ========== -->
			<jsp:include page="../include/leftBar.jsp" 
						flush="true"/>
		<!-- ========== Left Sidebar end ========== -->
		
		
		
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<jsp:include page="../include/headerBar.jsp" 
		        				flush="true"/>
				
				<!-- end Topbar -->

					<!-- Start Content-->
					<div class="row">
                            <div class="col-12">
                                <div class="card">
                                	<h3 class="fw-bold text-center">관리자페이지</h3>
                                    <div class="card-body">
                                    	 <div>
                                            <ul class="nav nav-tabs nav-bordered mb-3" style="display: flex; justify-content: space-around;">
                                             <li class="nav-item"> <!-- a링크에서  data-bs-toggle="tab" 뺐음-->
                                                    <a href="${path}/manager.do?method=user"  aria-expanded="true" class="nav-link active">
                                                    	회원관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/manager.do?method=prj"  aria-expanded="true" class="nav-link">
                                                        프로젝트관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/manager.do?method=dept"  aria-expanded="true" class="nav-link">
                                                        부서관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="" aria-expanded="true" class="nav-link">
                                                        이메일 발송
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/project/task/taskGuide.html"  aria-expanded="true" class="nav-link">
                                                        설정
                                                    </a>
                                                </li>
                                              
                                            </ul> <!-- end nav-->
                                        </div>	
                                        
										<form class=""  method="post">
                                          	<div class="row d-flex justify-content-between">
												<div class="d-flex col-3">
													<div class="">
												      <select class="form-select " id="search-select">
                                                               <option selected>이름</option>
                                                               <option >아이디</option>
                                                               <option >이메일</option>
                                                               <option >연락처</option>
														</select>
													</div>
													<div class="">
														<input type="search" class="form-control"  placeholder="검색">
													</div>
												
												</div>
												<div class="d-flex justify-content-between col-3">
													
													<div>
														<label class="pt-1 ">부서</label>
													</div>
													<div>
													   <select class="form-select" >
                                                                  <option selected>전체</option>
                                                                  <option value="1">개발1팀</option>
                                                                  <option value="2">개발2팀</option>
                                                                  <option value="3">인사팀</option>
                                                                  <option value="4">기획팀</option>
                                                                  <option value="5">디자인팀</option>
                                                                  <option value="6">마케팅팀</option>
                                                         </select>
													</div>
													<div>
														 <label class="pt-1">직급</label>
													</div>
													<div >
									    				<select class="form-select" >
                                                                <option selected>전체</option>
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
													<div >
														 <label class="pt-1 ">진행상태</label>
													</div>
													<div >
										    			 <select class="form-select" >
	                                                       <option selected>전체</option>
	                                                       <option>재직</option>
	                                                       <option>퇴사</option>
	                                                    
	                                                     </select>
													</div>
													
												
												</div>
											</div>
										</form><br>
          
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                                <thead class="table-light">
                                                    <tr class="column">
                                                        <th style="width: 20px;">
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input" id="customCheck1">
                                                                <label class="form-check-label" for="customCheck1">&nbsp;</label>
                                                            </div>
                                                        </th>
                                                        <th>아이디</th>
                                                        <th>이름</th>
                                                        <th>부서</th>
                                                        <th>직급</th>
                                                        <th>이메일</th>
                                                        <th>연락처</th>
                                                        <th>상태</th>
                                                        <th>수정</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="user" items="${userList}">
	                                                    <tr>
	                                                        <td>
	                                                            <div class="form-check">
	                                                                <input type="checkbox" class="form-check-input" id="customCheck2">
	                                                                <label class="form-check-label" for="customCheck2">&nbsp;</label>
	                                                            </div>
	                                                        </td>
	                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">${user.uiId}</a> </td>
	                                                        <td>${user.uiName}</td>
	                                                        <td>${user.uiDept}</td>
	                                                        <td>
	                                                            <p class="mb-0 txt-muted">${user.uiRank}</p>
	                                                        </td>
	                                                        <td>${user.uiEmail}</td>
                                                            <td>${user.uiPhone}</td>
	                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">${user.uiStatus}</span></h5></td>
	                                                        <td>  
	                                                            <a href="javascript:void(0);" class="action-icon" onclick="editUserDetail('${user.uiId}')" 
																	data-bs-toggle="modal" data-bs-target="#signup-modal"> <i class="mdi mdi-square-edit-outline"></i></a>
	                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
	                                                        </td>
	                                                    </tr>
                                                    </c:forEach>
                                                    

                                                </tbody>
                                            </table>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div> <!-- end row --> 
			<!-- end row -->
			
		</div>
	

		<!-- ============================================================== -->
		<!-- End Page content -->
		
        <jsp:include page="../include/rightBar_footer.jsp" 
					flush="true"/>
		
	</div>
	</div>
	<!-- wrapper -->

	<!-- 업무 등록 modal -->
	<div class="tab-content">
	    <div class="tab-pane show active" id="modal-pages-preview" >
	        <!-- Signup modal content --> 
	        <div id="signup-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
	            <div class="modal-dialog">
	                <div class="modal-content" >
	
	                    <div class="modal-header">
	                        <h4>회원정보 수정</h4>                                                                
	                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                    </div>
	
	                    <div class="modal-body">
	                        <form id="regForm" class="ps-3 pe-3" action="${path}/task.do?method=insert" method="post">                               
	                            <div class="row g-2">
									<div class="col mb-3">
										<label for="username" class="form-label">아이디</label>
										<input id="id" class="form-control"  required="">
									</div>
									<div class="col mb-3">
										<label for="fullname" class="form-label">이름</label>
										<input class="form-control" type="text" id="name" name="uiName" value="${editUser.uiName}" required>
									
	                                </div>

								</div>
	                            <!-- Autoclose -->
	                            <div class="row g-2">
	                                <div class="col mb-3">
	                                 <label class="form-label">패스워드</label>
									 <div class="input-group input-group-merge">
										<input type="password" id="pw" class="form-control" name="uiPw" required value="${editUser.uiPw}">
										<div class="input-group-text" data-password="false">
											<span class="password-eye"></span>
										</div>
									</div>
	                             </div>
	                             <div class="col mb-3">
	                                 <label class="form-label">패스워드 확인</label>
									 <div class="input-group input-group-merge">
										<input type="password" id="pw2" class="form-control"  required value="${editUser.uiPw}">
										<div class="input-group-text" data-password="false">
											<span class="password-eye"></span>
										</div>
									</div>
									<span id="pwMsg"></span>
	                             </div>
	                            </div>
	                            
	                          
	                            <div class="mb-3 position-relative">
									<label for="emailaddress" class="form-label">이메일</label>
									<input class="form-control" type="email" id="email" name="uiEmail" value="${editUser.uiEmail}">

	                            </div>
	                            
	
	                            <div class="row g-2">
	                            	<div class="col mb-3">
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

									<script>
										$("#dept").val("${editUser.uiDept}")

									</script>


	                                <div class="col mb-3">
										<label for="dept" class="form-label">직급</label> 
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
									<script>
										$("#rank").val("${editUser.uiRank}")

									</script>
	                         
	                            </div>
	                            <div class="row mb-3">
	                                <label for="phone1" class="form-label">연락처</label>
                                        <input type="text" name="phone" hidden>
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
	                            <hr>		
	                            <div class="mb-3 text-center" style="display: flex; justify-content: space-between;">
	                                <button class="btn btn-secondary" class="btn-close" data-bs-dismiss="modal" aria-label="Close">취소</button>
	                                <button class="btn btn-primary" type="button" id="regBtn">수정</button>
	                            </div>
	                        </form>
	                    </div>
	                </div><!-- /.modal-content -->
	            </div><!-- /.modal-dialog -->
	        </div><!-- /.modal -->
	    </div> <!-- /.tab-panel -->
	</div> <!-- /.tab-content -->

		



			
			


<script>
	
	// ajax로 상세정보 가져옴
	function editUserDetail(uiId){

		$.ajax({
			url : "${path}/manager.do?method=userDetail",
			type : "get",
			dataType : "json",
			data : "uiId="+uiId,
			success : function(data){
				editUser = data.editUser;
				$("#id").val(editUser.uiId);
				$("#name").val(editUser.uiName);
				$("#pw, #pw2").val(editUser.uiPw);
				$("#dept").val(editUser.uiDept);
				$("#rank").val(editUser.uiRank);
				$("#email").val(editUser.uiEmail);
				let phone = editUser.uiPhone;
				let phoneNum = [phone.slice(0,3),phone.slice(3,7),phone.slice(7)];
				$("[name=phone1]").val(phoneNum[0]);
				$("[name=phone2]").val(phoneNum[1]);
				$("[name=phone3]").val(phoneNum[2]);
			
			}
		});
	}

	
</script>


</body>
</html>