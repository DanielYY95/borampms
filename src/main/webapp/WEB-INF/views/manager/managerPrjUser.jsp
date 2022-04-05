<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
		<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
			<c:set var="path" value="${pageContext.request.contextPath }" />
			<fmt:requestEncoding value="utf-8" />
			<!DOCTYPE html>
			<html lang="en">

			<head>
				<meta charset="utf-8" />
				<title>업무 목록 - borampms</title>
				<meta name="viewport" content="width=device-width, initial-scale=1.0">
				<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc."
					name="description" />
				<meta content="Coderthemes" name="author" />
				<!-- App favicon -->
				<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
				<link rel="stylesheet"
					href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

				<!-- App css -->
				<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
				<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css"
					id="app-style" />

				<script src="${path}/a00_com/jquery-3.6.0.js"></script>

				<style>
					tr>th,
					tr>td {
						text-align: center;

					}
				</style>



			</head>


			<!-- 
				select로 type을 골라서 input을 작성할 때, input에 아무것도 안 적으면 ""로 넘어간다. 
				그리고 고르지않은 type의 값들은 null로 넘어간다.
				
				
			
 -->

			<script>
				let msg = '${msg}';

				if (msg != '') {
					alert(msg);
				}
				msg = '';

			</script>

			<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid"
				data-rightbar-onstart="true">


					<div>
               		<a href="" class="logo text-center logo-light" style="background-color:#313a46">
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
												<ul class="nav nav-tabs nav-bordered mb-3"
													style="display: flex; justify-content: space-around;">
													<li class="nav-item">
														<!-- a링크에서  data-bs-toggle="tab" 뺐음-->
														<a href="${path}/admin/manager.do?method=user" aria-expanded="true"
															class="nav-link">
															회원관리
														</a>
													</li>
													<li class="nav-item">
														<a href="${path}/admin/manager.do?method=prj" aria-expanded="true"
															class="nav-link">
															프로젝트관리
														</a>
													</li>
													<li class="nav-item">
														<a href="${path}/admin/manager.do?method=dept" aria-expanded="true"
															class="nav-link">
															부서관리
														</a>
													</li>
													<li class="nav-item">
														<a href="${path}/admin/manager.do?method=notice" aria-expanded="true" class="nav-link">
															공지사항
														</a>
													</li>
													<li class="nav-item"> 
														<a href="${path}/admin/manager.do?method=prjUser" aria-expanded="true" class="nav-link active">
															프로젝트 참여자 목록
														</a>
													</li>
												

												</ul> <!-- end nav-->
											</div>
											
										
											<form id="searchForm" method="post" action="${path}/admin/manager.do?method=prjUserSearch">
												<div class="row d-flex justify-content-between">
													<div class="d-flex col-3">
														<div class="">
															<label>이름</label>

														</div>
														<div class=""> <!--왜 한글말고 다른건 입력이 안되는겨....-->
															<input type="text" id="typeInput" name="uiName" class="form-control" placeholder="검색">
														</div>

													</div>
													
													<div class="d-flex col-3">
														<div class="">
															<label>프로젝트명</label>

														</div>
														<div class=""> <!--왜 한글말고 다른건 입력이 안되는겨....-->
															<input type="text" id="typeInput" name="piTitle" class="form-control" placeholder="검색">
														</div>

													</div>
													
													
													<div class="d-flex justify-content-between col-3">

														<div>
															<label class="pt-1 ">부서</label>
														</div>
														<div>
															<select class="form-select" name="uiDept">
																<option value='' selected>전체</option>
																<option value="개발1팀">개발1팀</option>
																<option value="개발2팀">개발2팀</option>
																<option value="인사팀">인사팀</option>
																<option value="기획팀">기획팀</option>
																<option value="디자인팀">디자인팀</option>
																<option value="마케팅팀">마케팅팀</option>
															</select>
														</div>
									
														<div>
															<label class="pt-1 ">참여상태</label>
														</div>
														<div>
															<select class="form-select" name="puStatus">
																<option value="" selected>전체</option>
																<option value="0">참여</option>
																<option value="1">탈퇴</option>
																<option value="2">승인대기</option>
																<option value="3">반려</option>

															</select>
														</div>
														<div>
															<button class="btn btn-primary" id="searchBtn" type="button">조회</button>
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
																	<input type="checkbox" class="form-check-input"
																		id="customCheck1">
																	<label class="form-check-label"
																		for="customCheck1">&nbsp;</label>
																</div>
															</th>
														
															<th>이름</th>
															<th>부서</th>
															<th>직급</th>
															<th>참여 프로젝트</th>
															<th>참여상태</th>
															<th>수정</th>
														</tr> 
													</thead>
													<tbody id="listBox">
														<c:forEach var="prjUser" items="${prjUserList}">
															<tr>
																<td>
																	<div class="form-check">
																		<input type="checkbox" class="form-check-input"
																			id="customCheck2">
																		<label class="form-check-label"
																			for="customCheck2">&nbsp;</label>
																	</div>
																</td>
																<td><h5 class="text-body fw-bold">${prjUser.uiName}</h5> </td>
																
																<td>${prjUser.uiDept}</td> 
																<td>
																	<p class="mb-0 txt-muted">${prjUser.uiRank}</p>
																</td>
																<td>${prjUser.piTitle}</td>
													
																<td>
																	<h5 class="my-0"><span
																			class="badge badge-info-lighten">${prjUser.puStatus}</span>
																	</h5>
																	<c:if test="${prjUser.puStatus eq 2}">
                                                                            <span class="badge bg-danger">승인 요청</span>
                                                                     </c:if>
																</td>
																<td>
																	<a href="javascript:void(0);" class="action-icon"
																		onclick="goPrjUserDetail('${prjUser.puId}')"
																		data-bs-toggle="modal"
																		data-bs-target="#signup-modal"> <i
																			class="mdi mdi-square-edit-outline"></i></a>
															
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

						<jsp:include page="../include/rightBar_footer.jsp" flush="true" />

					</div>
				</div>
				<!-- wrapper -->

				<!-- 업무 등록 modal -->
				<div class="tab-content">
					<div class="tab-pane show active" id="modal-pages-preview">
						<!-- Signup modal content -->
						<div id="signup-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">

									<div class="modal-header">
										<h4>회원정보 수정</h4>
										<button type="button" class="btn-close" data-bs-dismiss="modal"
											aria-label="Close"></button>
									</div>
									
						
							
					
						

									<div class="modal-body">
										<form id="uptForm" class="ps-3 pe-3" action="${path}/admin/manager.do?method=prjUserUpdate"
											method="post">
											
											<div class="row g-2">
												<div class="col mb-3">
													<label for="prjUserId" class="form-label">고유번호</label>
													<input name="puId" id="prjUserId" class="form-control" required="" readonly> 
												</div>
												
												<div class="col mb-3">

													<div class="col mb-3">
														<label for="prjUserName" class="form-label">이름</label>
														<input name="uiName" id="prjUserName" class="form-control" required="" readonly> 
													</div>
												</div>
										
											</div>
											
											<div class="row g-2">
												<div class="col mb-3">
													<label for="prjUserDept" class="form-label">부서</label>
													<input name="uiDept" id="prjUserDept" class="form-control" required="" readonly> 
												</div>
												
												<div class="col mb-3">

													<div class="col mb-3">
														<label for="prjUserRank" class="form-label">직급</label>
														<input name="uiRank" id="prjUserRank" class="form-control" required="" readonly> 
													</div>
												</div>
										
											</div>
											
											<!-- Autoclose -->
											<div class="row g-2">
												
												<div class="col mb-3">
													<label for="prjUserTitle" class="form-label">참여 프로젝트</label>
													<input name="piTitle" id="prjUserTitle" class="form-control" required="" readonly> 
				
												</div>
										
												<div class="col mb-3">
													<label for="prjUserStatus" class="form-label">참여 상태</label>
													<select class="form-select" id="prjUserStatus" name="puStatus">
														<option value="0">참여</option>
														<option value="1">탈퇴</option>
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


				<script>


					
				function goPrjUserDetail(puId){
					
					$.ajax({
						url: "${path}/admin/manager.do?method=prjUserDetail",
						type: "get",
						dataType: "json",
						data: "puId="+puId,
						success: function (data) {
							prjUserDetail = data.prjUserDetail;	
							
							$("#prjUserId").val(prjUserDetail.puId);
							$("#prjUserName").val(prjUserDetail.uiName);
							$("#prjUserDept").val(prjUserDetail.uiDept);
							$("#prjUserRank").val(prjUserDetail.uiRank);
							$("#prjUserTitle").val(prjUserDetail.piTitle);
							$("#prjUserStatus").val(prjUserDetail.puStatus);
						
						}
					})
				
				}
			
			$("#searchBtn").on("click", function(){
				searchPrjUser();		
			})

			$("#typeInput").on("keypress",function(e){
				if(e.keyCode==13){
					e.preventDefault();
					searchPrjUser();
				}

			});

			function searchPrjUser(){

		
				$.ajax({

					url:"${path}/admin/manager.do?method=prjUserSearch",
					type:"get",
					data: $("#searchForm").serialize(),
					dataType:"json",
					success:function(data) {
						
						$("#listBox").html("");
						let html = "";
						$.each(data.prjUserList, function(idx, sch) {
							
							html += '<tr><td><div class="form-check"><input type="checkbox" class="form-check-input"'+
									'id="customCheck2"><label class="form-check-label" for="customCheck2">&nbsp;</label></div></td>'+
									'<td><h5 class="text-body fw-bold">'+sch.uiName+'</h5></td><td>'+sch.uiDept+
									'</td> <td><p class="mb-0 txt-muted">'+sch.uiRank+'</p></td><td>'+sch.piTitle+
									'</td><td class="statusClr"><h5 class="my-0"><span class="badge badge-info-lighten">'+sch.puStatus+
									'</span></h5></td><td><a href="javascript:void(0);" class="action-icon"'+ 
									'onclick="goPrjUserDetail('+"'"+sch.puId+"'"+')" data-bs-toggle="modal"'+
									'data-bs-target="#signup-modal"> <i class="mdi mdi-square-edit-outline"></i></a></td></tr>';
				
						});		
				
						$("#listBox").append(html);
						let approveMsg = `<span class="badge bg-danger">승인 요청</span>`;

						
						$(".statusClr span").each(function(idx, status){
							if($(status).text() == 2){
								$(status).parent().after(approveMsg);
							}

						})
					
					},
					error:function(err) {
						console.log(err);
					}
			
				})
			}


					
					
				</script>


			</body>

			</html>