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
</head>


<!-- 양념한 부분 msg관련 js와 detail.
	양념하고 싶은 거 : taskUser 활용 (조회리스트)
 -->

<script>
	let msg = '${msg}';
	
	if(msg!=''){
		alert(msg+"${task_User.firstBlock}");
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
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">borampms</a></li>
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">업무 관리</a></li>
										<li class="breadcrumb-item active">업무 목록</li>
									</ol>
								</div>
								<h4 class="page-title">내 업무</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div>
                       <ul class="nav nav-tabs nav-bordered mb-3" style="display: flex; justify-content: space-around;">
                           <li class="nav-item"> <!-- a링크에서  data-bs-toggle="tab" 뺐음-->
                               <a href="${path}/mytask.do?method=clist"  aria-expanded="true" class="nav-link active">
                               	 내 담당 업무
                               </a>
                           </li>
                           <li class="nav-item">
                               <a href="${path}/mytask.do?method=wlist"  aria-expanded="true" class="nav-link">
                                 내 등록 업무
                               </a>
                           </li>
             
                       </ul> <!-- end nav-->
                   </div>	



					<!-- start page content -->
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									
									<form class="row gy-2 gx-2 align-items-center justify-content-between" id="listsch" method="post" action="${path}/mytask.do?method=clist">
										<input type="hidden" name="curPage" value="1"/>
										
											<div class="col-auto">
												<div class="row gy-2">
													<div class="col">
														<select class="form-select" id="searchType" >
															<option selected value="${task_User.ptTitle}">제목</option>
															<option value="${task_User.ptCharge}">담당자</option>
														</select>
													</div>
													<div class="col">
														<input type="search" class="form-control" id="typeInput" name="ptTitle" placeholder="내용을 입력하세요" style="width:180px;">
													</div>
												</div>
											</div>
											
											<div class="col-auto">
												<div class="row gy-5">
													<div class="col">
														<label for="startdate-form" class="col-form-label">시작일</label>
													</div>
													<div class="col">
														<input class="form-control" type="date" name="ptStartdate" value="${task_User.ptStartdate}"/>
													</div>
													<div class="col">
															<label for="enddate-form" class="col-form-label">마감일</label>
													</div>
													<div class="col">
														<input class="form-control" type="date" name="ptDuedate" value="${task_User.ptDuedate}"/>
													</div>
													<div class="col">
														<button type="submit" class="btn btn-success" id="isSearchBtn" style="width:63px;">조회</button>
													</div>
													
												</div>
											</div>
											
											
											</form>
											
										
									<!-- end row -->
							
									<div class="row my-3">
										<div class="table-responsive">
											<table class="table table-centered table-nowrap mb-0 text-center">
												<thead class="table-light">
													<tr>
														<th>번호</th>
														<th>제목</th>
														
														<th>업무담당자</th>
														<th>작성일</th>
														<th>마감일</th>
														<th>진행상태</th>
														
													</tr>
											 	</thead>
											 	<tbody id="task-tbody">
													<c:forEach var="task" items="${tasklist}" varStatus="status">
													<tr>
														<td>${task.cnt }</td>
														<td ondblclick="detail('${task.ptId}')">${task.ptTitle }</td>
														<td>${task.ptCharge }</td>
													
														<td>${task.ptStartdate }</td>
														<td>${task.ptDuedate }</td>
														<td>
															<div class="progress">
																<div
																	<c:choose>
																		<c:when test="${task.ptStatus eq '진행 전' }">
																			class="progress-bar bg-secondary"
																			style="width:100%" aria-valuenow="100"
																		</c:when>
																		<c:when test="${task.ptStatus eq '진행 중' }">
																			class="progress-bar bg-info"
																			style="width:70%" aria-valuenow="70"
																		</c:when>
																		<c:when test="${task.ptStatus eq '완료' }">
																			class="progress-bar bg-success"
																			style="width:100%" aria-valuenow="100"
																		</c:when>
																		<c:when test="${task.ptStatus eq '보류' }">
																			class="progress-bar bg-warning"
																			style="width:100%" aria-valuenow="0"
																		</c:when>
																
																	</c:choose>
																		role="progressbar" aria-valuemin="0" aria-valuemax="100">${task.ptStatus }
																</div>
															</div>
														</td>
														
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									
										<!-- 페이징 블록 -->
										<div class="row gy-2">
											<div class="col">
												<ul class="pagination pagination-rounded justify-content-center">
													<li class="page-item">
												  		<a class="page-link" href="javascript:goPage(${task_User.firstBlock != 1 ? task_User.lastBlock-1 : 1})">
												  		<span aria-hidden="true">«</span></a>
												  	</li>
												  	<c:forEach var="cnt" begin="${task_User.firstBlock}" end="${task_User.lastBlock}">
												  	<li class="page-item ${cnt == task_User.curPage ? 'active' : ''}"> <!-- 클릭한 현재 페이지 번호 -->
												  		<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>
												  	</li>
												  	</c:forEach>
												  	<li class="page-item">
												  		<a class="page-link"
												  			href="javascript:goPage(${task_User.lastBlock!= task_User.pageCount ? task_User.lastBlock+1 : task_User.lastBlock})">
												  			<span aria-hidden="true">»</span></a>
												  	</li>
												</ul>
											</div>
											<div class="d-grid gap-2 col-sm-2 col-lg-1 float-end">
												<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#signup-modal">등록</button>
											</div>
										</div>
									
									</div>
									<!-- end row -->
									
								</div>
								<!-- end card body -->
							</div>
							<!-- end card -->
					</div>
					<!-- end row -->
					
				</div>
				<!-- end content -->
				
			</div>
			
			
			<!-- end row -->
			
		</div>
		
		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- Footer Start -->

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
	                        <h4>업무등록</h4>                                                                
	                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                    </div>
	
	                    <div class="modal-body">
	                        <form id="regForm" class="ps-3 pe-3" action="${path}/task.do?method=insert" method="post">
	                        	<input type="hidden" name="uiId" value="${user_info.uiId }">                  
	                            <div class="mb-3">
	                                <label for="username" class="form-label">제목</label>
	                                <input name="ptTitle" class="form-control"  required="" placeholder="제목을 입력해주세요">
	                            </div>
	                            <!-- Autoclose -->
	                            <div style="display:flex; justify-content: space-between;">
	                                <div class="mb-3">
	                                 <label class="form-label">시작일</label>
	                                 <input class="form-control" required=""  type="date" name="ptStartdate">
	                             </div>
	                             <div class="mb-3">
	                                 <label class="form-label">마감일</label>
	                                 <input class="form-control" required=""  type="date" name="ptDuedate">
	                             </div>
	                            </div>
	                            
	                            <!-- Multiple Select -->
	                            <div class="mb-3 position-relative">
	                                <label class="form-label">업무담당자</label>
	                                <select id="chargeUpt"  name="ptCharge" class="select2 form-control select2-multiple" value="${taskUser.ptCharge}" required="" data-toggle="select2" multiple="multiple" data-placeholder="업무담당자 지정">
											<optgroup label="개발1팀">
											<option value="개발1팀 양초명">개발1팀 양초명</option>
											<option value="개발1팀 조민혁">개발1팀 조민혁</option>
										
										</optgroup>
											  <optgroup label="개발2팀">
											<option value="개발2팀 한가람">개발2팀 한가람</option>
											<option value="개발2팀 김효은">개발2팀 김효은</option>
											<option value="개발2팀 전지원">개발2팀 전지원</option>
										
										</optgroup>
										
										 <optgroup label="인사팀">
										
											<option value="인사팀 김소월">인사팀 양초명</option>
											<option value="인사팀 한가람">인사팀 한가람</option>
											<option value="인사팀 김효은">인사팀 김효은</option>
										</optgroup>
										
										<optgroup label="기획팀">
											<option value="기획팀 조민혁">기획팀 양현수</option>
											<option value="기획팀 전지원">기획팀 전지원</option>
										</optgroup>
										
										<optgroup label="디자인팀">
											<option value="디자인팀 조민혁">디자인팀 조민혁</option>
											<option value="디자인팀 전지원">디자인팀 전지원</option>
										</optgroup>
										
										
										<optgroup label="마케팅팀">
											<option value="마케팅팀 양초명">마케팅팀 양초명</option>
											<option value="마케팅팀 양현수">마케팅팀 양현수</option>
										   
										
										</optgroup>
										
										
										</select>
	                            </div>
	                            
	
	                            <div style="display:flex; justify-content: space-between; ">
	                            	<div class="mb-3" style="width: 30%;">
	                                    <label for="example-select" class="form-label">우선순위</label>
	                                    <select class="form-select" id="example-select" name="ptPriority">
	                                        <option>중요</option>
	                                        <option>보통</option>
	                                        <option>낮음</option>
	                                    </select>
	                                </div>
	                                <div class="mb-3" style="width: 30%;">
	                                   <label for="example-select" class="form-label">분류</label> 
											<select class="form-select" id="example-select" name="ptType" value="">
												<option>기획</option>
												<option>설계</option>
												<option>개발</option>
												<option>구현</option>
												<option>테스트</option>
												<option>점검</option>
											</select>
	                                </div>	
	                                <div class="mb-3" style="width: 30%;">
	                                    <label for="example-select" class="form-label">진행상태</label>
	                                    <select class="form-select" id="example-select" name="ptStatus">
	                                        <option>진행 전</option>
	                                        <option>진행 중</option>
	                                        <option>보류</option>
	                                        <option>완료</option>
	                                    </select>
	                                </div>
	                            </div>
	                            <div class="mb-3">
	                                <label for="example-textarea" class="form-label">내용</label>
	                                <textarea class="form-control" id="example-textarea" rows="15" name="ptContent"></textarea>
	                            </div>
	                            <hr>		
	                            <div class="mb-3 text-center" style="display: flex; justify-content: space-between;">
	                                <button class="btn btn-secondary" class="btn-close" data-bs-dismiss="modal" aria-label="Close">취소</button>
	                                <button class="btn btn-primary" type="button" id="regBtn">등록</button>
	                            </div>
	                        </form>
	                    </div>
	                </div><!-- /.modal-content -->
	            </div><!-- /.modal-dialog -->
	        </div><!-- /.modal -->
	    </div> <!-- /.tab-panel -->
	</div> <!-- /.tab-content -->
			
			
	
<script>
	
	
	$(document).ready(function() {
		// 검색이 실행되어 화면이 새로고침되었더라도 검색 키워드가 입력된 상태로 설정
		let schTitle = "${task_User.ptTitle}";
		let schCharge = "${task_User.ptCharge}";
		let schSdate = "${task_User.ptStartdate}";
		let schDdate = "${task_User.ptDuedate}";
		
		if(schTitle != "") {
			$("#listsch [name=ptTitle]").val(schTitle);
		}
		if(schCharge != "") {
			$("#listsch [name=ptCharge]").val(schCharge);
		}
		if(schSdate != "") {
			$("#listsch [name=ptStartdate]").val(schSdate);
		}
		if(schDdate != "") {
			$("#listsch [name=ptDuedate]").val(schDdate);
		}
		
	});

	
	
	// 검색 : 제목 / 담당자
	$("#searchType").change(function() {
		schtype = $("#searchType option:selected").text();
		
		if(schtype=="담당자"){
			$("#typeInput").attr("name","ptCharge");
			
		}else{
			$("#typeInput").attr("name","ptTitle");
		}
		
	});
	

	/// ### 상세정보, 페이징
	
	function detail(ptId){
		// 더블 클릭시, no를 매개변수를 넘기고 controller에 요청값을 전달 처리.
		location.href="${path}/taskDetail.do?ptId="+ptId;
	}
	
	function goPage(no){
		$("[name=curPage]").val(no);
		$("#listsch").submit();
	}
	
	
	
	
	

	
	// 업무 등록
	$("#regBtn").click(function() {
		if(confirm("등록하시겠습니까?")) {
			if($("#regForm").find("[name=ptTitle]").val() == "") {
				alert("제목을 작성해주세요.");
			} else if($("#regForm").find("[name=ptCharge]").val() == "" || $("#regForm").find("[name=ptCharge]").val() == null) {
				alert("업무담당자를 지정해주세요.");			
			} else if($("#regForm").find("[name=ptStartdate]").val() == "" || $("#regForm").find("[name=ptStartdate]").val() == null) {
				alert("업무 시작일을 지정해주세요.");
			} else if($("#regForm").find("[name=ptDuedate]").val() == "" || $("#regForm").find("[name=ptDuedate]").val() == null) {
				alert("업무 마감일을 지정해주세요.");
			} else if($("#regForm").find("[name=ptContent]").val() == "" || $("#regForm").find("[name=ptContent]").val() == null) {
				alert("업무 내용을 입력해주세요.");
			} else {
				$("#regForm").submit();
			}
		}
	});
	
	
	
	// 유효성 검증
	// 1. 업무 등록
	$("#regForm").find("[name=ptTitle]").keyup(function(){
	    if($(this).val().length>30){
	        alert("제목은 최대 30자까지 작성가능합니다.");
	        $(this).val($(this).val().substring(0,29));
	    }
	});
			
	let newDateOptions = {
	        year: "numeric",
	        month: "2-digit",
	        day: "2-digit"
	}
	
	$("#regForm").find("[name=ptStartdate]").change(function(){
	 
	
	    if($("#regForm").find("[name=ptStartdate]").val()>$("#regForm").find("[name=ptDuedate]").val() && $("#regForm").find("[name=ptDuedate]").val()!=""){
	        alert("시작일은 마감일보다 이후로 설정할 수 없습니다.");
	        $(this).val('');
	    }
	});
	
	$("#regForm").find("[name=ptDuedate]").change(function(){
	
	    if($("#regForm").find("[name=ptStartdate]").val()>$("#regForm").find("[name=ptDuedate]").val()){
	        alert("마감일은 시작일보다 이전으로 설정할 수 없습니다.");
	        $(this).val('');
	    }
	});
	

	
	
    
</script>


</body>
</html>