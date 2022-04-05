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
                                                    <a href="${path}/manager.do?method=user"  aria-expanded="true" class="nav-link">
                                                    	회원관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/manager.do?method=prj"  aria-expanded="true" class="nav-link">
                                                        프로젝트관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/manager.do?method=dept"  aria-expanded="true" class="nav-link active">
                                                        부서관리
                                                    </a>
                                                </li>
                                               	<li class="nav-item">
														<a href="${path}/manager.do?method=notice" aria-expanded="true" class="nav-link">
															공지사항
														</a>
													</li>
													<li class="nav-item">
														<a href="${path}/manager.do?method=prjUser" aria-expanded="true" class="nav-link">
															프로젝트 참여자 목록
														</a>
													</li>
                                             
                                              
                                            </ul> <!-- end nav-->
                                        </div>
                                        <div class="row">
                                        	<form action="${path}/manager.do?method=deptInsert">
	                                        	<div class="col-2 d-flex justify-content-evenly">
	                                        		<div>
	                                        			<label>부서명</label>
	                                        		</div>
	                                        		 <div class="">
	                                        		 
														<input type="text" class="form-control" id="search-word" name="diDept" required placeholder="입력">
													  </div>
													
	                                        	</div>
	                                        	<div class="col-3">  
	                                        		<button id="newDeptBtn" type="button" class="btn btn-danger mb-2 me-2 ">부서 등록</button>     
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
	                                               
	                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">${dept.diStatus}</span></h5></td>
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
										<form id="uptForm" class="ps-3 pe-3" action="${path}/manager.do?method=deptUpdate"
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
				url: "${path}/manager.do?method=deptDetail",
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