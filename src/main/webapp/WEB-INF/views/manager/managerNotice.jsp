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
	
	
	<!-- Begin page -->
	<div class="wrapper">
	
		<!-- ========== Left Sidebar Start ========== -->
		<jsp:include page="../include/leftBar.jsp" flush="true"/>
		<!-- ========== Left Sidebar end ========== -->
		
		
		
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">
			
				<!-- Start headerBar -->
				<jsp:include page="../include/headerBar.jsp" flush="true"/>
				<!-- end headerBar -->

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
								<div class="card-body">
									<form class="row gy-2 gx-2 align-items-center justify-content-between"
										id="ntSchForm" method="post" action="${path}/manager.do?method=notice">
										<input type="hidden" name="curPage" value="1"/>
										<input type="hidden" name="ntTitle" value="${notice.ntTitle }"/>
										<input type="hidden" name="ntId" value="${user_info.uiId}"/>
										<div class="col-auto">
											<div class="row gy-3">
												<div class="col-auto">
													<label for="search-word" class="col-form-label">제목</label>
												</div>
												<div class="col-auto">
													<input type="search" class="form-control" id="search-word" placeholder="Search...">
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
													<tr onclick="detail('${notice.ntId}')">
														<td><input type="checkbox"/><input type="hidden" value="${notice.ntId }"></td>
														<td>${notice.cnt }</td>
														<td>${notice.ntType }</td>
														<td>${notice.ntTitle}</td>
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
											<div class="d-grid gap-2 col-sm-2 col-lg-1 float-end">
												<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#notice-modal">등록</button>
											</div>
											<div class="d-grid gap-2 col-sm-2 col-lg-1 float-end">
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
	                        <form id="ntRegForm" class="ps-3 pe-3" action="${path}/manager.do?method=ntInsert" method="post">
	                        	<input type="hidden" name="uiId" value="${user_info.uiId }">                  
	                            <div class="mb-3">
	                                <label for="username" class="form-label">제목</label>
	                                <input name="ntTitle" class="form-control"  required="" placeholder="제목을 입력해주세요">
	                            </div>
	                            
	                            <div class="mb-3 position-relative">
	                                <label class="form-label">공지 구분</label>
	                                <select id="select-ntType"  name="ntType" class="form-control" value="${notice.ntType}" required="" data-placeholder="공지 구분">
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
	$("#search-word").keydown(function(key) {
		if(key.keyCode == 13) {
			$("#ntSchForm").submit();
		}
	});
	
	
	// 검색 : 공지 구분
	$("#ntSchForm").find("[name=ntType]").change(function() {
		$("#ntSchForm").submit();
	});
	
	
	// 공지사항 보기
	function detail(ntId){
		location.href="${path}/manager.do?ntId="+ntId;
	}
	// 
	function goPage(no){
		$("[name=curPage]").val(no);
		$("#ntSchForm").submit();
	}
	

	// 공지 등록
	$("#regBtn").click(function() {
		if(confirm("등록하시겠습니까?")) {
			if($("#regForm").find("[name=ntTitle]").val() == "") {
				alert("제목을 작성해주세요.");
			} else if($("#regForm").find("[name=ntType]").val() == "" || $("#regForm").find("[name=ptCharge]").val() == null) {
				alert("구분 항목을 지정해주세요.");	
			} else if($("#regForm").find("[name=ntContent]").val() == "" || $("#regForm").find("[name=ntContent]").val() == null) {
				alert("내용을 입력해주세요.");
			} else {
				$("#regForm").submit();
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