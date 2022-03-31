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
	<title>이슈 목록 - borampms</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
	<meta content="Coderthemes" name="author" />
	<!-- App favicon -->
	<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>

	<!-- App css -->
	<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
	<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />
</head>

	<!-- jQuery -->
	<script src="${path}/tools/jquery-3.6.0.js"></script>

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
										<li class="breadcrumb-item">
											<a href="javascript: void(0);">borampms</a>
										</li>
										<li class="breadcrumb-item">
											<a href="javascript: void(0);">업무 관리</a>
										</li>
										<li class="breadcrumb-item active">이슈 목록</li>
									</ol>
								</div>
								
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body" id="form-card-body">
									<div class="card-title" id="card-title-reg"><h4>이슈 등록</h4></div>
									<!--  
									<ul class="nav nav-tabs nav-justified nav-bordered mb-3">
										<li class="nav-item">
											<a href="taskDetail.html" aria-expanded="true" class="nav-link"> 업무정보 </a>
										</li>
										<li class="nav-item"><a href="#input-types-code"
											aria-expanded="true" class="nav-link"> WBS </a></li>
										<li class="nav-item"><a href="taskOutput.html"
											aria-expanded="true" class="nav-link"> 산출물 </a></li>
										<li class="nav-item"><a href="task_issue.html"
											aria-expanded="true" class="nav-link active"> 이슈 </a></li>
										<li class="nav-item"><a href="#input-types-code"
											aria-expanded="true" class="nav-link"> 가이드 </a></li>
										<li class="nav-item"><a href="#input-types-code"
											aria-expanded="true" class="nav-link"> 히스토리 </a></li>
									</ul>
									-->
									<!-- end nav-->
									<div class="tab-content">	
										<form id="isRegForm" method="post">	
										<div class="row justify-content-between">	
											<input type="hidden" name="uiId" value="${user_info.uiId }"/>	
											<input type="hidden" name="tiWriter" value="${user_info.uiName }"/>	
											
											<div class="col">
												<label class="form-label col-form-label">이슈 내용</label>
												<input class="form-control" placeholder="이슈 내용" name="tiContent" required/>
											</div>
											<div class="col">
												<label class="form-label col-form-label">업무담당자</label>
											<select id="chargeUpt"  name="tiCharge" class="select2 form-control select2-multiple"
												 required="" data-toggle="select2" multiple="multiple" data-placeholder="업무담당자 지정">
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
											<div class="col">
												<label class="form-label col-form-label">우선순위</label>
												<select class="form-control" name="tiPriority" required>
													<option value="">우선순위</option>
													<option value="중요">중요</option>
													<option value="보통">보통</option>
													<option value="낮음">낮음</option>
												</select>
											</div>
											<div class="col">
												<label class="form-label col-form-label">마감일</label>
												<input class="form-control" type="date" name="tiDuedate" required/>
											</div>
											<div class="d-grid gap-2 col-sm-2 col-lg-1 float-end">
												<button type="button" class="btn btn-primary" id="isRegFormBtn">등록</button>
											</div>
										</div>
										</form>
									</div>
								</div>
								<!-- end card-body-->
							</div>
							<!-- end card-->
							<div class="card">
								<div class="card-body">
								
									<div class="card-title"><h4>이슈 목록</h4></div>	
										<div class="row">	
											<form id="isSchForm" method="post" action="${path}/issue.do?method=list">	
											<input type="hidden" name="curPage" value="1"/>	
											<div class="row justify-content-between">	
												<div class="col">	
													<div class="input-group">	
														<label class="input-group-text"><i class="fa fa-search"></i></label>	
														<input type="text" class="form-control" placeholder="이슈 내용" name="schContent">	
													</div>	
												</div>	
												<div class="col">	
													<div class="input-group">	
														<label class="input-group-text"><i class="fa fa-search"></i></label>	
														<input type="text" class="form-control" placeholder="담당자" name="schCharge">	
													</div>	
												</div>	
												<div class="col">	
													<div class="input-group">	
														<label class="input-group-text"><i class="fa fa-search"></i></label>	
														<select class="form-control" name="schPriority">	
															<option value="" selected>우선순위</option>	
															<option value="중요">중요</option>	
															<option value="보통">보통</option>	
															<option value="낮음">낮음</option>	
														</select>	
													</div>	
														
												</div>	
												<div class="col">	
													<div class="input-group">	
														<label class="input-group-text"><i class="fa fa-search"></i></label>	
														<input class="form-control" type="date" name="schDuedate"/>	
													</div>	
												</div>	
											</div>	
											</form>	
										</div>
								
								
								
								
									<div class="row my-3">
										<div class="table-responsive">
											<table class="table table-centered table-nowrap mb-0 text-center">
												<thead class="table-light">
													<tr>
														<th>번호</th>
														<th>등록자</th>
														<th>이슈 내용</th>
														<th>담당자</th>
														<th>우선순위</th>
														<th>마감일</th>
														<th style="width: 125px;">수정/삭제</th>
													</tr>
												</thead>
												<tbody id="issue-tbody">
													<c:forEach var="issue" items="${issuelist}">
													<tr>
														<td>${issue.cnt }</td>
														<td>${issue.tiWriter }</td>
														<td>${issue.tiContent }</td>
														<td>
														<c:forEach var="charge" items="${issue.tiCharge.split(',') }" varStatus="status">
															${charge }<br>
														</c:forEach>
														</td>
														<td>
															<div class=
																<c:choose>
																	<c:when test="${issue.tiPriority eq '중요' }">"badge bg-danger"</c:when>
																	<c:when test="${issue.tiPriority eq '보통' }">"badge bg-info"</c:when>
																	<c:when test="${issue.tiPriority eq '낮음' }">"badge bg-secondary"</c:when>
																</c:choose> >
																${issue.tiPriority }
															</div>
														</td>
														<td>${issue.tiDuedate }</td>
														<td>
															<a onclick="javascript:setUpt('${issue.tiWriter}', '${issue.tiId }')" class="action-icon">
																<i class="mdi mdi-square-edit-outline"></i>
															</a>
															<a onclick="javascript:setDel('${issue.tiWriter}', '${issue.tiId }')" class="action-icon">
																<i class="mdi mdi-delete"></i>
															</a>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>	
										</div>	
									</div>	
										
									<!-- 페이징 블록 -->	
									<div class="row gy-1 my-3">	
										<div class="col justify-content-end">	
											<ul class="pagination pagination-rounded"> 	
												<li class="page-item">	
											  		<a class="page-link" href="javascript:goPage(${issueSch.firstBlock != 1 ? issueSch.lastBlock-1 : 1})">Previous</a>	
											  	</li>	
											  	<c:forEach var="cnt" begin="${issueSch.firstBlock}" end="${issueSch.lastBlock}">	
											  	<li class="page-item ${cnt == issueSch.curPage ? 'active' : ''}">	
											  		<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>	
											  	</li>	
											  	</c:forEach>	
											  	<li class="page-item">	
											  		<a class="page-link"	
											  			href="javascript:goPage(${issueSch.firstBlock != issueSch.pageCount ? issueSch.lastBlock+1 : issueSch.lastBlock})">Next</a>	
											  	</li>	
											</ul>	
										</div>	
									</div>	
								</div>	
								<!-- end card-body-->	
							</div>	
							<!-- end card-->	
						</div>	
						<!-- end col -->	
					</div>	
					<!-- end row -->	
				</div>	
				<!-- /.container -->	
			</div>	
			<!-- /.content -->	
		</div>	
		<!-- /.content-page -->	
			
		<!-- start rightBar_footer -->	
		<jsp:include page="../include/rightBar_footer.jsp" flush="true"/>	
		<!-- end rightBar_footer -->	
			
			
	</div>	
	<!-- wrapper -->	

<script>
	let logUiId = "${user_info.uiId}";
	$(document).ready(function() {
		// 검색이 실행되어 화면이 새로고침되었더라도 검색 키워드가 입력된 상태로 설정
		let schContent = "${issueSch.tiContent}";
		let schCharge = "${issueSch.tiCharge}";
		let schPriority = "${issueSch.tiPriority}";
		let schDdate = "${issueSch.tiDuedate}";
		
		if(schContent != "") {
			$("[name=schContent]").val(schContent);
		}
		if(schCharge != "") {
			$("[name=schCharge]").val(schCharge);
		}
		if(schPriority != "") {
			$("[name=schPriority]").val(schPriority);
		}
		if(schDdate != "") {
			$("[name=schDuedate]").val(schDdate);
		}
		
	});
	
	
	// 페이지 블록의 번호를 클릭하여 해당 번호 페이지로 이동
	function goPage(no){		
		$("[name=curPage]").val(no);
		$("#isSchForm").submit();
	}
	
	
	// 검색 키워드 입력 후 엔터 키를 누르거나, 검색일자를 바꾸었을 때 검색 실행
	$("[name=schContent], [name=schCharge]").keyup(function(key) {
		if(key.keyCode == 13) {
			$("#isSchForm").submit();
		}
	});
	$("[name=schPriority], [name=schDuedate]").change(function() {
		$("#isSchForm").submit();
	});
	
	
	// 수정 및 삭제 아이콘 클릭 시 현재 로그인 유저와 등록자가 같은지 확인하고
	// 등록자 본인인 경우 등록 폼 -> 수정 폼으로 스타일 적용
	function setUpt(obj) {
		let uiId = obj.uiId;
		console.log(uiId);
		
		
		/*
		if(logUiId != uiId) {
			alert("등록자만 수정할 수 있습니다.");
		} else if(logUiId === uiId) {
			$("[name=tiContent]").val($(""));
			$("[name=tiPriority]").val("${issue.tiPriority}");
			$("[name=tiDuedate]").val("${issue.tiDuedate}");
			$("[name=tiId]").val(tiId);
			
			$("#form-card-body").addClass("bg-secondary");
			$(".col-form-label").addClass("text-white");
			$("#card-title-reg").text("이슈 수정");
			$("#isRegFormBtn").text("수정").attr("class", "btn btn-warning text-white");
		}
		*/
	}
	
	// 삭제 아이콘 클릭 시, 아이콘이 포함된 이슈 행의 데이터를 삭제
	function setDel(obj) {
		/*
		console.log(tiId);
		if(logUiId != uiId) {
			alert("등록자만 삭제할 수 있습니다.");
		} else if(logUiId === uiId) {
			if(confirm("삭제하시겠습니까?")) {
				location.href = "${path}/issue.do?method=delete&tiId="+tiId;
			}
		}
		*/
	}
	
	// '등록' 버튼인 경우와 '수정' 버튼인 경우의 처리
	$("#isRegFormBtn").click(function() {
		// 등록/수정 전 유효성 검증
		if($("[name=tiContent]").val() == null || $("[name=tiContent]").val() == "") {
			alert("등록할 이슈 내용을 입력해주세요.");
		} else if($("[name=tiCharge]").val() == null || $("[name=tiCharge").val() == "") {
			alert("업무담당자를 지정해주세요.");
		} else if($("[name=tiDuedate]").val() == null || $("[name=tiDuedate]").val() == "") {
			alert("마감일을 지정해주세요.");
		} else if($("[name=tiPriority]").val() == null || $("[name=tiPriority]").val() == "") {
			alert("우선순위를 지정해주세요.");
		} else {
			// 등록/수정에 따른 form action 설정
			let params = $("#isRegFormBtn").text() == "등록" ? "insert" : "update";
			$("#isRegForm").attr("action", "${path}/issue.do?method="+params);
			
			if(confirm($("#isRegFormBtn").text()+"하시겠습니까?")) {
				$("#isRegForm").submit();
			}
		}
	});
	
	
	/*
	// ajax 활용 검색
	// 검색 키워드 입력, ajax 호출
	$("[name=schContent], [name=schCharge]").keyup(function() {
		setSchdata();	
		search(schdata);
	});
	$("[name=schDuedate], [name=schPriority]").change(function() {
		setSchdata();
		search(schdata);
	});
	// 검색 키워드 json 설정
	function setSchdata() {
		schdata.curPage = $("[name=curPage]").val();
		schdata.schContent = $("[name=schContent]").val();
		schdata.schCharge = $("[name=schCharge]").val();
		schdata.schPriority = $("[name=schPriority]").val();
		schdata.schDuedate = $("[name=schDuedate]").val();
	}
	// 검색(ajax)
	function search(schdata) {
		console.log(schdata);
		
		$.ajax({
			url:"${path}/issue.do?method=search",
			type:"get",
			data:schdata,
			dataType:"json",
			success:function(data) {
				console.log(data.schIssuelist);
				let html = "";
				
		    	$.each(data.schIssuelist, function(idx, sch) {
		    		let tiPriority = sch.tiPriority
		    		let settings = "badge";
		    		
		    		if(tiPriority == "중요") { settings = "badge bg-danger" }
		    		if(tiPriority == "보통") { settings = "badge bg-info" }
		    		if(tiPriority == "낮음") { settings = "badge bg-secondary" }
		    		
		 			html += "<tr>"
		 				+"<td>"+sch.cnt+"</td>"
		 				+"<td>"+sch.tiWriter+"</td>"
		 				+"<td>"+sch.tiContent+"</td>"
		 				+"<td>"+sch.tiCharge+"</td>"
		 				+"<td><div class='"+settings+"'>"+sch.tiPriority+"</div></td>"
		 				+"<td>"+sch.tiDuedate+"</td>"
		 				+"<td><a href='javascript:setUpt('"+sch.tiId+"');' class='action-icon'><i class='mdi mdi-square-edit-outline'></i></a>"
		 				+"<a href='javascript:delIssue('"+sch.tiId+"');' class='action-icon'><i class='mdi mdi-delete'></i></a></td>"
		 				+"</tr>";	
		 				
			 	});	
		 		$("#issue-tbody").html(html);
			},
			error:function(err) {
				console.log(err);
			}
		});
	}
	*/
</script>



</body>
</html>