<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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


				<!-- Begin page -->
				<div class="wrapper">
					<!-- ========== Left Sidebar Start ========== -->
					<jsp:include page="../include/leftBar.jsp" flush="true" />
					<!-- ========== Left Sidebar end ========== -->



					<!-- Start Page Content here -->
					<!-- ============================================================== -->

					<div class="content-page">
						<div class="content">

							<jsp:include page="../include/headerBar.jsp" flush="true" />

							<!-- end Topbar -->

							<!-- Start Content-->
							<div class="row">
								<div class="col-12">
									<div class="card">
										<h3 class="fw-bold text-center">관리자페이지</h3>
										<div class="card-body">
											<div>
												<ul class="nav nav-tabs nav-bordered mb-3"
													style="display: flex; justify-content: space-around;">
													<li class="nav-item">
														<!-- a링크에서  data-bs-toggle="tab" 뺐음-->
														<a href="${path}/manager.do?method=user" aria-expanded="true"
															class="nav-link active">
															회원관리
														</a>
													</li>
													<li class="nav-item">
														<a href="${path}/manager.do?method=prj" aria-expanded="true"
															class="nav-link">
															프로젝트관리
														</a>
													</li>
													<li class="nav-item">
														<a href="${path}/manager.do?method=dept" aria-expanded="true"
															class="nav-link">
															부서관리
														</a>
													</li>
													<li class="nav-item">
														<a href="" aria-expanded="true" class="nav-link">
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

											<form id="searchForm" method="post" action="${path}/manager.do?method=userSearch">
												<div class="row d-flex justify-content-between">
													<div class="d-flex col-3">
														<div class="">
															<select class="form-select " id="type">
																<option selected value="name">이름</option>
																<option value="id">아이디</option>
																<option value="email">이메일</option>
																<option value="phone">연락처</option>
															</select>
														</div>
														<!--왜 한글말고 다른건 입력이 안되는겨....-->
													
												  <div class="">
													<input type="search" name="uiName" class="form-control" id="typeInput" placeholder="검색">
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
															<label class="pt-1">직급</label>
														</div>
														<div>
															<select class="form-select" name="uiRank">
																<option value='' selected>전체</option>
																<option value="실장">실장</option>
																<option value="팀장">팀장</option>
																<option value="부장">부장</option>
																<option value="차장">차장</option>
																<option value="과장">과장</option>
																<option value="대리">대리</option>
																<option value="주임">주임</option>
																<option value="사원">사원</option>
															</select>
														</div>
														<div>
															<label class="pt-1 ">진행상태</label>
														</div>
														<div>
															<select class="form-select" name="uiStatus">
																<option value="" selected>전체</option>
																<option value="0">재직</option>
																<option value="1">퇴사</option>
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
													<tbody id="listBox">
														<c:forEach var="user" items="${userList}">
															<tr>
																<td>
																	<div class="form-check">
																		<input type="checkbox" class="form-check-input"
																			id="customCheck2">
																		<label class="form-check-label"
																			for="customCheck2">&nbsp;</label>
																	</div>
																</td>
																<td><a href="apps-ecommerce-orders-details.html"
																		class="text-body fw-bold">${user.uiId}</a> </td>
																<td>${user.uiName}</td>
																<td>${user.uiDept}</td>
																<td>
																	<p class="mb-0 txt-muted">${user.uiRank}</p>
																</td>
																<td>${user.uiEmail}</td>
																<td>${user.uiPhone}</td>
																<td>
																	<h5 class="my-0"><span
																			class="badge badge-info-lighten">${user.uiStatus}</span>
																	</h5>
																	<c:if test="${user.uiStatus eq 2}">
                                                                            <span class="badge bg-danger">승인 요청</span>
                                                                     </c:if>
																</td>
																<td>
																	<a href="javascript:void(0);" class="action-icon"
																		onclick="editUserDetail('${user.uiId}')"
																		data-bs-toggle="modal"
																		data-bs-target="#signup-modal"> <i
																			class="mdi mdi-square-edit-outline"></i></a>
																	<a href="javascript:void(0);" class="action-icon"
																		onclick="deleteUser('${user.uiName}','${user.uiId}')">
																		<i class="mdi mdi-delete"></i></a>
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
										<form id="uptForm" class="ps-3 pe-3" action="${path}/manager.do?method=userUpt"
											method="post">
											<div class="row g-2">
												<div class="col mb-3">
													<label for="username" class="form-label">아이디</label>
													<input id="id" name="uiId" class="form-control" required="" readonly> 
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
											<!-- Autoclose -->
											<div class="row g-2">
												
													<div class="col mb-3">
													<label for="fullname" class="form-label">이름</label>
													<input class="form-control" type="text" id="name" name="uiName"
														value="${editUser.uiName}" required>

												</div>
												
												
												
												<div class="col mb-3">
													<label for="userStatus" class="form-label">회원상태</label>
													<select class="form-select" id="userStatus" name="uiStatus">
														<option value="0">재직</option>
														<option value="1">퇴사</option>
														<option value="2">승인대기</option>
														<option value="3">반려</option>
													</select>
				
												</div>
											</div>
											
										


											<div class="mb-3 position-relative">
												<label for="emailaddress" class="form-label">이메일</label>
												<input class="form-control" type="email" id="email" name="uiEmail"
													value="${editUser.uiEmail}">

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
											<hr>
											<div class="mb-3 text-center"
												style="display: flex; justify-content: space-between;">
												<button class="btn btn-secondary" class="btn-close"
													data-bs-dismiss="modal" aria-label="Close" type="button">취소</button>
												<button class="btn btn-primary" type="button" id="uptBtn">수정</button>
											</div>
										</form>
									</div>
								</div><!-- /.modal-content -->
							</div><!-- /.modal-dialog -->
						</div><!-- /.modal -->
					</div> <!-- /.tab-panel -->
				</div> <!-- /.tab-content -->


				<script>

					    // 폼 제출
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
						
				

					// ajax로 상세정보 가져옴
					function editUserDetail(uiId) {

						$.ajax({
							url: "${path}/manager.do?method=userDetail",
							type: "get",
							dataType: "json",
							data: "uiId=" + uiId,
							success: function (data) {
								editUser = data.editUser;
								$("#id").val(editUser.uiId);
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

							}
						});
					}
					    
					    
					    

		
					
					function deleteUser(uiName, uiId){
						
						if(confirm(uiName+" 회원을 삭제하시겠습니까?")){
							location.href="${path}/manager.do?method=userDel&uiId="+uiId;
						}
					}
					
					let type= "";
					
					$("#searchBtn").on("click", function(){
						searchUser();		
					})

					$("#typeInput").on("keypress",function(e){
						if(e.keyCode==13){
							e.preventDefault();
							searchUser();
						}

					});

			
					function searchUser(){

						if($("#type").val()!="name"){
							type= ($("#type").val()=="id")? "uiId":(($("#type").val()=="phone")? "uiPhone": "uiEmail");
							$("#typeInput").attr("name",type);
						}
						
						$.ajax({
				
							url:"${path}/manager.do?method=userSearch",
							type:"get",
							data: $("#searchForm").serialize(),
							dataType:"json",
							success:function(data) {
								
								$("#listBox").html("");
								let html = "";
								$.each(data.userList, function(idx, sch) {
									
									html += '<tr><td><div class="form-check"><input type="checkbox" class="form-check-input"'+
											'id="customCheck2"><label class="form-check-label"for="customCheck2">&nbsp;</label></div></td>'+
											'<td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">'+
												sch.uiId+'</a></td><td>'+sch.uiName+'</td><td>'+sch.uiDept+
												'</td><td><p class="mb-0 txt-muted">'+sch.uiRank+'</p></td><td>'+
												sch.uiEmail+'</td><td>'+sch.uiPhone+
												'</td><td class="statusClr"><h5 class="my-0"><span class="badge badge-info-lighten">'+
												sch.uiStatus+'</span></h5></td><td><a href="javascript:void(0);" class="action-icon"'+
												'onclick="editUserDetail('+"'"+sch.uiId+"'"+')" data-bs-toggle="modal" data-bs-target="#signup-modal">'+
												' <i class="mdi mdi-square-edit-outline"></i></a><a href="javascript:void(0);" class="action-icon"'+
												'onclick="deleteUser('+"'"+sch.uiName+"','"+sch.uiId+"'"+')"><i class="mdi mdi-delete"></i></a></td></tr>'
						
								});	
								
								//JSTL과 JAVASCRIPT는 실행되는 시점이 다르기 때문에...	 서버는 JAVA>JSTL>HTML>Javascript 순서로 동작

								//JSTL이 먼저 실행되고 JAVASCRIPT는 이후에 실행됩니다. => badge 붙여주는게 어려울 듯... 
								
								$("#listBox").append(html);
								let approveMsg = `<span class="badge bg-danger">승인 요청</span>`;

								// id는 하나만 가져온다. 여러 개의 경우에는 class 등을 사용할 것!
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