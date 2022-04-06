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
                                    	
							<div class="card">
								<div class="card-body">
									<form class="row gy-2 gx-2 align-items-center justify-content-between"
										id="ntSchForm" method="post" action="${path}/notice.do?method=list">
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
													<input type="search" class="form-control" id="ntSchWord" placeholder="내용을 입력하세요">
												</div>
												<div class="col-auto">
													<label for="type-word" class="col-form-label">구분</label>
												</div>
												<div class="col-auto">
													<select class="form-select" id="ntSchSelect">
														<option value="">전체</option>
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
														
														<td>${notice.cnt }</td>
														<td>${notice.ntType }</td>
														<td onclick="detailNotice('${notice.ntId}')"
															data-bs-toggle="modal" data-bs-target="#notice-modal"
														>${notice.ntTitle}</td>
														<td>${notice.ntRegdate }</td>
														<td>관리자</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
										
									
										<!-- start 페이징 블록 -->
										<div class="row gy-3" id="paging"> 
											<div class="col">
												<ul class="pagination pagination-rounded justify-content-center">
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
												  			href="javascript:goPage(${notice.lastBlock != notice.pageCount ? notice.lastBlock+1 : notice.lastBlock})">Next</a>
												  	</li>
												</ul>
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
	



	<!--  modal -->
	<div class="tab-content">
	    <div class="tab-pane show active" id="modal-pages-preview" >
	        <!-- Signup modal content --> 
	        <div id="notice-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
	            <div class="modal-dialog" style="max-width: 35%; min-width: 400px;">
	                <div class="modal-content" >
						
	                    <div class="modal-header">
	                        <h4 id="noticeTitle">공지 조회</h4>                                                                
	                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	                    </div>
	
	                    <div class="modal-body">
	                        
	                        	 <input name="ntId" hidden/>   
	                            <div class="mb-3">
	                                <label for="username" class="form-label">제목</label>
	                                <input name="ntTitle" class="form-control" required="" placeholder="제목을 입력해주세요"  readonly>
	                            </div>
	                            <div class="mb-3">
	                                <label for="username" class="form-label">작성자</label>
	                                <input class="form-control" name="ntWriter" value="관리자" readonly >
	                            </div>
	                            <div class="mb-3 position-relative">
	                                <label class="form-label">공지 구분</label>
	                                <select id="select-ntType"  name="ntType" class="form-control" required="" data-placeholder="공지 구분">
										<option value="" disabled>구분 선택</option>
										<option value="공지" disabled>공지</option>
										<option value="점검" disabled>점검</option>
									</select>
	                            </div>
	                            
	                            <div class="mb-3">
	                                <label for="example-textarea" class="form-label">내용</label>
	                                <textarea class="form-control" id="example-textarea" rows="15" name="ntContent" readonly></textarea>
	                            </div>
	                            <hr>		
	                            <div class="mb-3 text-center" style="display: flex; justify-content: space-between;">
	                                <button class="btn btn-secondary" class="btn-close" data-bs-dismiss="modal" aria-label="Close">취소</button>
	                                
	                            </div>
	                       
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
			$("#ntSchWord").val(schTitle);
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
	
	
	function detailNotice(ntId){
		

		$.ajax({
			url: "${path}/notice.do?method=getNotice",
			type: "get",
			dataType: "json",
			data: "ntId="+ntId,
			success: function (data) {
				noticeDetail = data.noticeDetail;
			
				$("[name=ntId]").val(noticeDetail.ntId);
				$("[name=ntTitle]").val(noticeDetail.ntTitle);
				$("[name=ntType]").val(noticeDetail.ntType);
				$("[name=ntContent]").val(noticeDetail.ntContent);
				
				$("#notice-modal").click();
			
			}
		});
		
		
	}
	


	function goPage(no){
		$("[name=curPage]").val(no);
		$("#ntSchForm").submit();
	}
	
	

	
	
</script>


</body>