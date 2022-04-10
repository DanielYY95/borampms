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
	
		<div>
               		<a href="" class="logo text-center logo-light" style="background-color:#313a46; z-index: 1;">
						<span class="logo-lg">
							<img src="/borampms/tools/project_assets/images/boram_dark.png" alt="" height="45">
						</span>
						<span class="logo-sm">
							<img src="/borampms/tools/project_assets/images/boram_sm_dark.png" alt="" height="35">
						</span>
					</a>
		                	
               	</div>
				

				<!-- Begin page -->
				<div class="wrapper">
					<div class="navbar-custom">
				<ul class="list-unstyled topbar-menu float-end mb-0">
					<li class="dropdown notification-list d-lg-none">
						<a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
							<i class="dripicons-search noti-icon"></i>
						</a>
						<div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
							<form class="p-3">
								<input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username">
							</form>
						</div>
					</li>
					
					
			

					<!-- setting 아이콘 -->
					<li class="notification-list">
						<a class="nav-link end-bar-toggle" href="javascript: void(0);">
							<i class="dripicons-gear noti-icon"></i>
						</a>
					</li>

					<!-- 내 프로필 아이콘 -->
					<li class="dropdown notification-list">
						<a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false">
							<span class="account-user-avatar">
								<img src="/borampms/tools/project_assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle">
							</span>
							<span>
								<span class="account-position">관리팀</span>				
								<span class="account-user-name">관리자</span>
								
							</span>
						</a>
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
							<!-- item-->
							<div class=" dropdown-header noti-title">
								<h6 class="text-overflow m-0">안녕하세요!</h6>
							</div>
					
							<!-- item-->
							<sec:authorize access="isAuthenticated()">
								<a href="<c:url value='/user/logout' />" class="dropdown-item notify-item">
									<i class="mdi mdi-logout me-1"></i>
									<span>관리자 로그아웃</span>
								</a>
							</sec:authorize>
				
						</div>
					</li>
				</ul>
					
			
				
				<button class="button-menu-mobile open-left" style="display: none;">
					<i class="mdi mdi-menu"></i>
				</button>
				
	
			</div>

		
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page mx-auto col-10">
			<div class="content">


				<!-- Start Content-->
				 <div class="row">
                            <div class="col-12">
                                <div class="card">
                                	<h3 class="fw-bold text-center  pt-2">관리자페이지</h3>
                                    <div class="card-body">
                                    	 <div>
                                            <ul class="nav nav-tabs nav-bordered mb-3" style="display: flex; justify-content: space-around;">
                                                <li class="nav-item"> <!-- a링크에서  data-bs-toggle="tab" 뺐음-->
                                                    <a href="${path}/admin/manager.do?method=user"  aria-expanded="true" class="nav-link">
                                                    	회원관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/admin/manager.do?method=prj"  aria-expanded="true" class="nav-link">
                                                        프로젝트관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/admin/manager.do?method=dept"  aria-expanded="true" class="nav-link active">
                                                        부서관리
                                                    </a>
                                                </li>
                                               	<li class="nav-item">
														<a href="${path}/admin/manager.do?method=notice" aria-expanded="true" class="nav-link">
															공지사항
														</a>
													</li>
													<li class="nav-item">
														<a href="${path}/admin/manager.do?method=prjUser" aria-expanded="true" class="nav-link">
															프로젝트 참여자 목록
														</a>
													</li>
                                             
                                              
                                            </ul> <!-- end nav-->
                                        </div>
                                        
                                       
                                        
                                        
                                        
                                        <div class="row">
                                        	<div class="col-xl-12">
	                                        	<form action="${path}/admin/manager.do?method=deptInsert" class="row gy-2 gx-2 align-items-center justify-content-between">
		                                        	 <div class="col-auto">
		                                        	 	<div class="row gy-3">
			                                        		<div class="col text-center">
			                                        			<label class="p-1">부서명</label>
			                                        		</div>
			                                        		 <div class="col">
			                                        		 
																<input type="text" class="form-control" id="search-word" name="diDept" required placeholder="입력">
															  </div>
															  <div class="col">  
		                                        				<button id="newDeptBtn" type="button" class="btn btn-danger mb-2 me-2 ">부서 등록</button>     
		                                        			</div>
														</div>
		                                        	</div>
		                                        	 
	                                        	</form>                  
											</div>                           
											
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
	                                                        <th>부서고유번호</th>
	                                                        <th>부서명</th>
	                                                        <th>부서인원</th>
	                                                        <th>부서상태</th>   
	                                                        <th>수정</th>                            
	                                                    </tr>
	                                                </thead>
	                                                <tbody>
	                                                    <c:forEach var="dept" items="${deptList}">
		                                                    <tr>
		                                                        <td>
		                                                            <div class="form-check">
		                                                                <input type="checkbox" class="form-check-input" id="customCheck2">
		                                                                <label class="form-check-label" for="customCheck2">&nbsp;</label>
		                                                            </div>
		                                                        </td>
		                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">${dept.diId}</a> </td>
		                                                        <td>${dept.diDept}</td>
		                                                        <td>${dept.count}</td>
		                                               			
		                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">${dept.diStatus}</span></h5>
		                                                        	<c:if test="${dept.diStatus eq 2}">
	                                                                            <span class="badge bg-danger">승인 요청</span>
	                                                             </c:if>
		                                                        </td>
		                                                        <td>
		                                                            <a onclick="deptDetail('${dept.diId}')" class="action-icon"
		                                                            data-bs-toggle="modal"data-bs-target="#signup-modal">
		                                                             <i class="mdi mdi-square-edit-outline"></i></a>
		                                                      
		                                                        </td>
		                                                    </tr>
	                                                    </c:forEach>
	                                                    
	
	                                                </tbody>
	                                            </table>
	                                        </div>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div> <!-- end row --> 
			<!-- end row -->
			
		</div>
		
		<!-- modal -->
				<div class="tab-content">
					<div class="tab-pane show active" id="modal-pages-preview">
						<!-- Signup modal content -->
						<div id="signup-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">

									<div class="modal-header">
										<h4>부서정보 수정</h4>
										<button type="button" class="btn-close" data-bs-dismiss="modal"
											aria-label="Close"></button>
									</div>

									<div class="modal-body">
										<form id="uptForm" class="ps-3 pe-3" action="${path}/admin/manager.do?method=deptUpdate"
											method="post">
										
											<!-- Autoclose -->
											<div class="row g-2">
													<input name="diId" id="deptId" hidden />
													<div class="col mb-3">
													<label for="fullname" class="form-label">부서명</label>
													<input class="form-control" type="text" id="dept" name="diDept"
														 required>

												</div>
				
												<div class="col mb-3">
													<label for="userStatus" class="form-label">부서상태</label>
													<select class="form-select" id="deptStatus" name="diStatus">
														<option value="0">존재</option>
														<option value="1">폐쇄</option>
														<option value="2">승인대기</option>
														<option value="3">반려</option>
													</select>
				
												</div>
											</div>
											
											<hr>
											<div class="mb-3 text-center"
												style="display: flex; justify-content: space-between;">
												<button class="btn btn-secondary" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close" type="button">취소</button>
												<button class="btn btn-primary" type="submit" id="uptBtn">수정</button>
											</div>
										</form>
									</div>
								</div><!-- /.modal-content -->
							</div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
					</div> <!-- /.tab-panel -->
				</div> <!-- /.tab-content -->
		
		<!-- ============================================================== -->
		<!-- End Page content -->
		
        <jsp:include page="../include/rightBar_footer.jsp" 
					flush="true"/>
		
	</div>
	</div>
	<!-- wrapper -->

<script>

	function deptDetail(diId){
		
			$.ajax({
				url: "${path}/admin/manager.do?method=deptDetail",
				type: "get",
				dataType: "json",
				data: "diId="+diId,
				success: function (data) {
					deptDetail = data.deptDetail;
				
					$("#deptId").val(deptDetail.diId);
					$("#dept").val(deptDetail.diDept);
					$("#deptStatus").val(deptDetail.diStatus);
				}
			});
		
	}

	
</script>


</body>
</html>