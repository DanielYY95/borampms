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
	<title>공지사항 - borampms</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
	<meta content="Coderthemes" name="author" />
	<!-- App favicon -->
	<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>

	<!-- App css -->
	<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
	<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />
	
	<!-- jQuery -->
	<script src="${path}/tools/jquery-3.6.0.js"></script>
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
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a
											href="javascript: void(0);">borampms</a></li>
										<li class="breadcrumb-item active">공지사항</li>
									</ol>
								</div>
								<h4 class="page-title">공지사항</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<!-- start page content -->
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
                                                    <a href="${path}/admin/manager.do?method=dept"  aria-expanded="true" class="nav-link">
                                                        부서관리
                                                    </a>
                                                </li>
                                               	<li class="nav-item">
														<a href="${path}/admin/manager.do?method=notice" aria-expanded="true" class="nav-link active">
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
							<div class="card">
								<div class="card-body">
									<form class="row gy-2 gx-2 align-items-center justify-content-between"
										id="ntSchForm" method="post" action="${path}/admin/manager.do?method=notice">
										<input type="hidden" name="curPage" value="1"/>
										<input type="hidden" name="ntTitle" value="${notice.ntTitle }"/>
										<input type="hidden" name="ntWriter" value="${user_info.uiId}"/>
										<input type="hidden" name="ntType" value="${notice.ntType}"/>
										<div class="col-auto">
											<div class="row gy-3">
												<div class="col-auto">
													<label for="search-word" class="col-form-label">제목</label>
												</div>
												<div class="col-auto">
													<input type="search" class="form-control" id="ntSchWord" placeholder="Search...">
												</div>
												<div class="col-auto">
													<select class="form-select" id="ntSchSelect">
														<option value="">구분</option>
														<option value="공지">공지</option>
														<option value="점검">점검</option>
													</select>
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
														<th>선택</th>
														<th>번호</th>
														<th>구분</th>
														<th>제목</th>
														<th>등록일</th>
														<th>작성자</th>
													</tr>
											 	</thead>
											 	<tbody id="notice-tbody">
													<c:forEach var="notice" items="${ntlist}" varStatus="status">
													<tr>
														<td><input type="checkbox"/><input type="hidden" value="${notice.ntId }"/></td>
														<td>${notice.cnt }</td>
														<td>${notice.ntType }</td>
														<td onclick="detail('${notice.ntId}')">${notice.ntTitle}</td>
														<td>${notice.ntRegdate }</td>
														<td>${notice.ntWriter }</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									
										<!-- start 페이징 블록 -->
										<div class="row gy-3" id="paging"> 
											<div class="col justify-content-end">
												<ul class="pagination pagination-rounded">
													<li class="page-item">
												  		<a class="page-link" href="javascript:goPage(${notice.firstBlock != 1 ? notice.lastBlock-1 : 1})">Previous</a>
												  	</li>
												  	<c:forEach var="cnt" begin="${notice.firstBlock}" end="${notice.lastBlock}">
												  	<li class="page-item ${cnt == notice.curPage ? 'active' : ''}"> <!-- 클릭한 현재 페이지 번호 -->
												  		<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>
												  	</li>
												  	</c:forEach>
												  	<li class="page-item">
												  		<a class="page-link"
												  			href="javascript:goPage(${notice.firstBlock != notice.pageCount ? notice.lastBlock+1 : notice.lastBlock})">Next</a>
												  	</li>
												</ul>
											</div>
											<div class="d-grid gap-2 col-sm-2 col-mb-2 col-lg-1 float-end">
												<button type="button" class="btn btn-primary" data-bs-toggle="modal"
													data-bs-target="#notice-modal" id="insBtn">등록</button>
											</div>
											<div class="d-grid gap-2 col-sm-2 col-mb-2 col-lg-1 float-end">
												<button type="button" class="btn btn-primary" id="delBtn">삭제</button>
											</div>
										</div>
										<!-- end 페이징 블록 -->
									
									</div>
									<!-- end row -->
									
								</div>
								<!-- end card body -->
									
							</div>
							<!-- end card -->
							
						</div>
						<!-- end col -->
					
					</div>
					<!-- end col -->
				
				</div>
				<!-- end content -->
			
			</div>
			<!-- end container -->
		
		
		</div>
		<!-- ============================================================== -->
		<!-- End Page content -->
		
		
		<!-- start rightBar_footer -->
		<jsp:include page="../include/rightBar_footer.jsp" flush="true"/>
		<!-- end rightBar_footer -->
		
	</div>
	<!-- wrapper -->
	


	<!-- 업무 등록 modal -->
	<div class="tab-content">
	    <div class="tab-pane show active" id="modal-pages-preview" >
	        <!-- Signup modal content --> 
	        <div id="notice-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
	            <div class="modal-dialog">
	                <div class="modal-content" >
	
	                    <div class="modal-header">
	                        <h4>공지 작성</h4>                                                                
	                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                    </div>
	
	                    <div class="modal-body">
	                        <form id="ntRegForm" class="ps-3 pe-3" action="${path}/admin/manager.do?method=insertNotice" method="post">
	                        	<input type="hidden" name="ntWriter" value="${user_info.uiId }">                  
	                            <div class="mb-3">
	                                <label for="username" class="form-label">제목</label>
	                                <input name="ntTitle" class="form-control" required="" placeholder="제목을 입력해주세요">
	                            </div>
	                            <div class="mb-3">
	                                <label for="username" class="form-label">제목</label>
	                                <input class="form-control" value="${user_info.uiName }" disabled>
	                            </div>
	                            <div class="mb-3 position-relative">
	                                <label class="form-label">공지 구분</label>
	                                <select id="select-ntType"  name="ntType" class="form-control" required="" data-placeholder="공지 구분">
										<option value="">구분 선택</option>
										<option value="공지">공지</option>
										<option value="점검">점검</option>
									</select>
	                            </div>
	                            
	                            <div class="mb-3">
	                                <label for="example-textarea" class="form-label">내용</label>
	                                <textarea class="form-control" id="example-textarea" rows="15" name="ntContent"></textarea>
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
	let ntarr = new Array();
	let json = new Object();
	<c:forEach items="${ntlist}" var="notice">
		json.ntId = "${notice.ntId}"
		json.ntTitle = "${notice.ntTitle}";
		json.ntWriter = "${notice.ntWriter}";
		json.ntType = "${notice.ntType}";
		console.log(json);
		ntarr.push(json);
		console.log(ntarr);
	</c:forEach>
	
	
	$(document).ready(function() {
		// 검색이 실행되어 화면이 새로고침되었더라도 검색 키워드가 입력된 상태로 설정
		let schTitle = "${notice.ntTitle}";
		let schType = "${notice.ntType}";
		
		if(schTitle != "") {
			$("#search-word").val(schTitle);
		}
		if(schType != "") {
			$("#ntSchSelect").val(schType).prop("selected", true);
		}
	});
	
	
	// 검색 : 제목 키워드 입력 시
	$("#ntSchWord").keydown(function(key) {
		if(key.keyCode == 13) {
			$("#ntSchForm").find("[name=ntTitle]").val($("#ntSchWord").val());
			$("#ntSchForm").submit();
		}
	});
	// 검색 : 공지 구분
	$("#ntSchSelect").change(function() {
		$("#ntSchForm").find("[name=ntType]").val($("#ntSchSelect option:selected").val());
		$("#ntSchForm").submit();
	});
	
	
	// 공지사항 내용 보기
	function detail(ntid){
		console.log("안");
		console.log(ntarr);
		let ntitem = ntarr.filter(nt => nt.ntId === 'NT1');
		console.log(ntitem);
		$("#ntRegForm").find("[name=ntTitle]").val(ntitem.ntTitle);
		$("#ntRegForm").find("[name=ntWriter]").val(ntitem.ntWriter);
		$("#ntRegForm").find("[name=ntType]").val(ntitem.ntType);
		$("#ntRegForm").find("[name=ntContent]").val(ntitem.ntContent);
		
		$("#insBtn").click();
	}
	function goPage(no){
		$("[name=curPage]").val(no);
		$("#ntSchForm").submit();
	}
	
	

	// 공지 등록
	$("#regBtn").click(function() {
		if(confirm("등록하시겠습니까?")) {
			if($("#ntRegForm").find("[name=ntTitle]").val() == "") {
				alert("제목을 작성해주세요.");
			} else if($("#ntRegForm").find("[name=ntType]").val() == "") {
				alert("구분 항목을 지정해주세요.");	
			} else if($("#ntRegForm").find("[name=ntContent]").val() == "") {
				alert("내용을 입력해주세요.");
			} else {
				$("#ntRegForm").submit();
			}
		}
	});
	
	// 공지 삭제
	$("#delBtn").click(function() {
		if(confirm("삭제하시겠습니까?")) {
			// 반복문, 체크박스 선택된 id 받아서 delete 처리
		}
	});
	

	
	
</script>


</body>