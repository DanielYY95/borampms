<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="utf-8" />
<title>Kanban Board | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
<meta content="Coderthemes" name="author" />
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<!-- App favicon -->
<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<!-- App css -->

<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />
</head>

<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
	<!-- Begin page -->
	<div class="wrapper">

		<!-- 업무 등록 modal -->
		<div class="tab-content">
			<div class="tab-pane show active" id="modal-pages-preview">
				<!-- Signup modal content -->
				<div id="signup-modal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">

							<div class="modal-header">
								<h4>업무등록</h4>
								<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							</div>

							<div class="modal-body">
								<form id="regForm" class="ps-3 pe-3" action="${path}/kanban.do?method=insert" method="post">
									<div class="mb-3">
										<label for="username" class="form-label">제목</label> <input name="ptTitle" class="form-control" required="" placeholder="제목을 입력해주세요">
									</div>
									<!-- Autoclose -->
									<div style="display: flex; justify-content: space-between;">
										<div class="mb-3">
											<label class="form-label">시작일</label> <input class="form-control" required="" type="date" name="ptStartdate">
										</div>
										<div class="mb-3">
											<label class="form-label">마감일</label> <input class="form-control" required="" type="date" name="ptDuedate">
										</div>
									</div>

									<!-- Multiple Select -->
									<div class="mb-3 position-relative">
										<label class="form-label">업무담당자</label> <select name="ptCharge" class="select2 form-control select2-multiple" required="" data-toggle="select2" multiple="multiple" data-placeholder="업무담당자 지정">
											<optgroup label="IT팀">
												<option value="IT팀 조민혁">IT팀 조민혁</option>
												<option value="IT팀 전지원">IT팀 전지원</option>
											</optgroup>
											<optgroup label="인사팀">
												<option value="인사팀 김파월">인사팀 김파월</option>
												<option value="인사팀 김소월">인사팀 김소월</option>
												<option value="인사팀 한가람">인사팀 한가람</option>
												<option value="인사팀 김효은">인사팀 김효은</option>
											</optgroup>
											<optgroup label="마케팅팀">
												<option value="마케팅팀 양초명">마케팅팀 양초명</option>
												<option value="마케팅팀 양현수">마케팅팀 양현수</option>
												<option value="마케팅팀 양광">마케팅팀 양광</option>

											</optgroup>
										</select>
									</div>


									<div style="display: flex; justify-content: space-between;">
										<div class="mb-3" style="width: 30%;">
											<label for="example-select" class="form-label">우선순위</label> <select class="form-select" id="example-select" name="ptPriority">
												<option>중요</option>
												<option>보통</option>
												<option>낮음</option>
											</select>
										</div>
										<div class="mb-3" style="width: 30%;">
											<label for="example-select" class="form-label">분류</label> <select class="form-select" id="example-select" name="ptType" value="">
												<option>요구사항 도출</option>
												<option>요구사항 분석</option>
												<option>요구사항 명확</option>
												<option>요구사항 확인</option>
												<option>개발</option>
											</select>
										</div>
										<div class="mb-3" style="width: 30%;">
											<label for="example-select" class="form-label">진행상태</label> <select class="form-select" id="example-select" name="ptStatus">
												<option>진행 전</option>
												<option>진행 중</option>
												<option>지연</option>
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
						</div>
						<!-- /.modal-content -->
					</div>
					<!-- /.modal-dialog -->
				</div>
				<!-- /.modal -->
			</div>
			<!-- /.tab-panel -->
		</div>
		<!-- /.tab-content -->



	</div>

	

	<!-- end 모달창 -->

	<!-- ========== Left Sidebar Start ========== -->
	<jsp:include page="../include/leftBar.jsp" 
						flush="true"/>
	
	<!-- 왼쪽 사이드바 종료  -->

	<!-- ============================================================== -->
	<!-- Start Page Content here -->
	<!-- ============================================================== -->

	<div class="content-page">
		<div class="content">
			<jsp:include page="../include/headerBar.jsp" 
		        				flush="true"/>
			<!-- end Topbar -->

			<!-- Start Content-->
			<!-- 칸반 시작-->
			<div class="container-fluid">
				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box">
							<div class="page-title-right">
								<ol class="breadcrumb m-0">
									<li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
									<li class="breadcrumb-item"><a href="javascript: void(0);">일정관리</a></li>
									<li class="breadcrumb-item active">칸반보드</li>
								</ol>
							</div>
							<h4 class="page-title">칸반보드</h4>
						</div>
						<!-- end page  -->
						
					</div>
				</div>
			</div>
			<!-- end page title -->

			<!-- !!!칸반 리스트 start!!!  -->
			<div class="row">
				<div class="col-12">


					<div class="board">
						<div class="tasks" data-plugin="dragula" data-containers='["task-list-one", "task-list-two", "task-list-three", "task-list-four"]'>
							<h5 class="mt-0 task-header">진행 전 (${klist.size() })</h5>



							<div id="task-list-one" class="task-list-items">
								<!-- Task Item -->


							<!--  a 태그에 있던 data 관련된거 싹다 지움 -->

								<!--  !!!!카드 시작!!!!  -->
								<c:forEach var="kanban" items="${klist }">
									<div class="card mb-0">
										<div class="card-body p-3">
											<small class="float-end text-muted">${kanban.ptStartdate }</small> <span class="badge bg-danger">${kanban.ptPriority }</span> <span class="badge bg-success">${kanban.ptStatus }</span>

											<h5 class="mt-2 mb-2">
												<a href="${path}/taskDetail.do?ptId=${kanban.ptId}" class="text-body">${kanban.ptTitle }</a>
											</h5>

											<p class="mb-0">
												<span class="pe-2 text-nowrap mb-2 d-inline-block"> <i class="mdi mdi-briefcase-outline text-muted"></i> ${kanban.ptType }
												</span>
											</p>
											<p class="mb-0">
												<img src="https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-176213403491/media/magazine_img/magazine_270/%EC%8D%B8%EB%84%A4%EC%9D%BC.jpg" alt="user-img" class="avatar-xs rounded-circle me-1" /> 
												<span class="align-middle">${kanban.ptCharge }</span>
											</p>
										</div>

									</div>
									<!-- Task Item End -->
								</c:forEach>

								<!-- Task Item End -->

							</div>
							<!-- end company-list-1-->

						</div>

						<div class="tasks">
							<h5 class="mt-0 task-header text-uppercase">진행 중 (${klist2.size() })</h5>

							<div id="task-list-two" class="task-list-items">
								<!-- Task Item -->
								<!--  !!!!카드 시작!!!!  -->
								<c:forEach var="kanban2" items="${klist2 }">
									<div class="card mb-0">
										<div class="card-body p-3">
											<small class="float-end text-muted">${kanban2.ptStartdate }</small> <span class="badge bg-secondary text-light">${kanban2.ptPriority }</span> <span class="badge bg-success">${kanban2.ptStatus }</span>

											<h5 class="mt-2 mb-2">
												<a href="${path}/taskDetail.do?ptId=${kanban2.ptId}" class="text-body">${kanban2.ptTitle }</a>
											</h5>

											<p class="mb-0">
												<span class="pe-2 text-nowrap mb-2 d-inline-block"> <i class="mdi mdi-briefcase-outline text-muted"></i> ${kanban2.ptType }
												</span>
											</p>
											<p class="mb-0">
												<img src="https://mblogthumb-phinf.pstatic.net/MjAxNzA2MTZfNTAg/MDAxNDk3NTc5NDc4NTQ2.Ufe2TjvMYJsI_IZnN80Gcs8bR7cZpLRz3o7ayFCVncAg.-aOmnvQ5n4VVDGDkydd06yxMZfHS6-YvGmkd400oM9og.JPEG.gatoblancokr/Cat-Cool-Summer.jpg?type=w2" alt="user-img" class="avatar-xs rounded-circle me-1" />
												 <span class="align-middle">${kanban2.ptCharge }</span>
											</p>
										</div>
										<!-- end card-body -->
									</div>
									<!-- Task Item End -->
								</c:forEach>
								<!-- Task Item End -->
							</div>
							<!-- end company-list-2-->
						</div>

						<div class="tasks">
							<h5 class="mt-0 task-header text-uppercase">보류 (${klist3.size() })</h5>
							<div id="task-list-three" class="task-list-items">
								<!-- Task Item -->

								<!-- Task Item -->
								<!--  !!!!카드 시작!!!!  -->
								<c:forEach var="kanban3" items="${klist3 }">
									<div class="card mb-0">
										<div class="card-body p-3">
											<small class="float-end text-muted">${kanban3.ptStartdate }</small> <span class="badge bg-danger">${kanban3.ptPriority }</span> <span class="badge bg-success">${kanban3.ptStatus }</span>

											<h5 class="mt-2 mb-2">
												<a href="${path}/taskDetail.do?ptId=${kanban3.ptId}" class="text-body">${kanban3.ptTitle }</a>
											</h5>

											<p class="mb-0">
												<span class="pe-2 text-nowrap mb-2 d-inline-block"> <i class="mdi mdi-briefcase-outline text-muted"></i>${kanban3.ptType }
												</span>
											</p>
															<p class="mb-0">
												<img src="${path}/tools/project_assets/images/users/avatar-4.jpg" alt="user-img" class="avatar-xs rounded-circle me-1" /> <span class="align-middle">${kanban3.ptCharge }</span>
											</p>
										</div>
										<!-- end card-body -->
									</div>
									<!-- Task Item End -->
								</c:forEach>
							</div>
							<!-- end company-list-3-->
						</div>

						<div class="tasks">
							<h5 class="mt-0 task-header text-uppercase">완료 (${klist4.size() })</h5>
							<div id="task-list-four" class="task-list-items">
								<!-- Task Item -->
								<!--  !!!!카드 시작!!!!  -->
								<c:forEach var="kanban4" items="${klist4 }">
									<div class="card mb-0">
										<div class="card-body p-3">
											<small class="float-end text-muted">${kanban4.ptStartdate }</small> <span class="badge bg-success">${kanban4.ptPriority }</span> <span class="badge bg-success">${kanban4.ptStatus }</span>

											<h5 class="mt-2 mb-2">
												<a href="${path}/taskDetail.do?ptId=${kanban4.ptId}" class="text-body">${kanban4.ptTitle }</a>
											</h5>

											<p class="mb-0">
												<span class="pe-2 text-nowrap mb-2 d-inline-block"> <i class="mdi mdi-briefcase-outline text-muted"></i> ${kanban4.ptType }
												</span>
											</p>
										
											<p class="mb-0">
												<img src="https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-176213403491/media/magazine_img/magazine_270/%EC%8D%B8%EB%84%A4%EC%9D%BC.jpg" 
                              alt="user-img" class="avatar-xs rounded-circle me-1" /> <span class="align-middle">${kanban4.ptCharge }</span>
											</p>
										</div>
										<!-- end card-body -->
									</div>
									<!-- Task Item End -->
								</c:forEach>
								<!-- Start Content-->

								<!-- end company-list-4-->
							</div>
						</div>
						<!-- end .board-->
					</div>
					<!--  칸반 반복 end..?-->

					<!-- end col -->
				</div>

				<!-- end row-->
				<div class="container-fluid">
					<br> <br>
					<button type="button" class="btn btn-success btn-sm ms-3" data-bs-toggle="modal" data-bs-target="#signup-modal">새 업무 등록</button>

				</div>
			</div>
			<!-- container -->
		</div>

		<!-- content -->

		<!-- Footer Start -->
		<footer class="footer">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6">
						<script>
                  document.write(new Date().getFullYear());
                </script>
						© Hyper - Coderthemes.com
					</div>
					<div class="col-md-6">
						<div class="text-md-end footer-links d-none d-md-block">
							<a href="javascript: void(0);">About</a> <a href="javascript: void(0);">Support</a> <a href="javascript: void(0);">Contact Us</a>
						</div>
					</div>
				</div>
			</div>
		</footer>
		<!-- end Footer -->
	</div>

	<!-- ============================================================== -->
	<!-- End Page content -->
	<!-- ============================================================== -->
	</div>
	<!-- END wrapper -->

	<!-- Right Sidebar -->
	<div class="end-bar">
		<div class="rightbar-title">
			<a href="javascript:void(0);" class="end-bar-toggle float-end"> <i class="dripicons-cross noti-icon"></i>
			</a>
			<h5 class="m-0">Settings</h5>
		</div>

		<div class="rightbar-content h-100" data-simplebar>
			<div class="p-3">
				<div class="alert alert-warning" role="alert">
					<strong>Customize </strong> the overall color scheme, sidebar menu, etc.
				</div>

				<!-- Settings -->
				<h5 class="mt-3">Color Scheme</h5>
				<hr class="mt-1" />

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="color-scheme-mode" value="light" id="light-mode-check" checked /> <label class="form-check-label" for="light-mode-check">Light Mode</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="color-scheme-mode" value="dark" id="dark-mode-check" /> <label class="form-check-label" for="dark-mode-check">Dark Mode</label>
				</div>

				<!-- Width -->
				<h5 class="mt-4">Width</h5>
				<hr class="mt-1" />
				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="width" value="fluid" id="fluid-check" checked /> <label class="form-check-label" for="fluid-check">Fluid</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="width" value="boxed" id="boxed-check" /> <label class="form-check-label" for="boxed-check">Boxed</label>
				</div>

				<!-- Left Sidebar-->
				<h5 class="mt-4">Left Sidebar</h5>
				<hr class="mt-1" />
				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="theme" value="default" id="default-check" /> <label class="form-check-label" for="default-check">Default</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="theme" value="light" id="light-check" checked /> <label class="form-check-label" for="light-check">Light</label>
				</div>

				<div class="form-check form-switch mb-3">
					<input class="form-check-input" type="checkbox" name="theme" value="dark" id="dark-check" /> <label class="form-check-label" for="dark-check">Dark</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact" value="fixed" id="fixed-check" checked /> <label class="form-check-label" for="fixed-check">Fixed</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact" value="condensed" id="condensed-check" /> <label class="form-check-label" for="condensed-check">Condensed</label>
				</div>

				<div class="form-check form-switch mb-1">
					<input class="form-check-input" type="checkbox" name="compact" value="scrollable" id="scrollable-check" /> <label class="form-check-label" for="scrollable-check">Scrollable</label>
				</div>

				<div class="d-grid mt-4">
					<button class="btn btn-primary" id="resetBtn">Reset to Default</button>

					<a href="https://themes.getbootstrap.com/product/hyper-responsive-admin-dashboard-template/" class="btn btn-danger mt-3" target="_blank"><i class="mdi mdi-basket me-1"></i> Purchase Now</a>
				</div>
			</div>
			<!-- end padding-->
		</div>
	</div>

	<div class="rightbar-overlay"></div>
	<!-- /End-bar -->

	<!--  Add new task modal -->
	<div class="modal fade task-modal-content" id="add-new-task-modal" tabindex="-1" role="dialog" aria-labelledby="NewTaskModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="NewTaskModalLabel">Create New Task</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form class="p-2">
						<div class="mb-3">
							<label class="form-label">Project</label> <select class="form-select form-control-light">
								<option>Select</option>
								<option>Hyper - Admin Dashboard</option>
								<option>CRM - Design & Development</option>
								<option>iOS - App Design</option>
							</select>
						</div>

						<div class="row">
							<div class="col-md-8">
								<div class="mb-3">
									<label for="task-title" class="form-label">Title</label> <input type="text" class="form-control form-control-light" id="task-title" placeholder="Enter title" />
								</div>
							</div>

							<div class="col-md-4">
								<div class="mb-3">
									<label for="task-priority2" class="form-label">Priority</label> <select class="form-select form-control-light" id="task-priority2">
										<option>Low</option>
										<option>Medium</option>
										<option>High</option>
									</select>
								</div>
							</div>
						</div>

						<div class="mb-3">
							<label for="task-description" class="form-label">Description</label>
							<textarea class="form-control form-control-light" id="task-description" rows="3"></textarea>
						</div>

						<div class="row">
							<div class="col-md-6">
								<div class="mb-3">
									<label for="task-title" class="form-label">Assign To</label> <select class="form-select form-control-light" id="task-priority">
										<option>Coderthemes</option>
										<option>Robert Carlile</option>
										<option>Louis Allen</option>
										<option>Sean White</option>
										<option>Riley Steele</option>
										<option>Zak Turnbull</option>
									</select>
								</div>
							</div>

							<div class="col-md-6">
								<div class="mb-3">
									<label for="task-priority" class="form-label">Due Date</label> <input type="text" class="form-control form-control-light" id="birthdatepicker" data-toggle="date-picker" data-single-date-picker="true" />
								</div>
							</div>
						</div>

						<div class="text-end">
							<button type="button" class="btn btn-light" data-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-primary">Create</button>
						</div>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->

	<script>
	
	function godetail(ptId){
		// 더블 클릭시, no를 매개변수를 넘기고 controller에 요청값을 전달 처리.
		location.href="${path}/taskDetail.do?ptId="+ptId;
	}
	
/* 등록 모달 스크립트 start */
 
 // 업무 등록
	$("#regBtn").click(function() {
		if(confirm("등록하시겠습니까?")) {
			if($("[name=ptTitle]").val() == "") {
				alert("제목을 작성해주세요.");
			} else if($("[name=ptCharge]").val() == "" || $("[name=ptCharge]").val() == null) {
				alert("업무담당자를 지정해주세요.");			
			} else if($("[name=ptStartdate]").val() == "" || $("[name=ptStartdate]").val() == null) {
				alert("업무 시작일을 지정해주세요.");
			} else if($("[name=ptDuedate]").val() == "" || $("[name=ptDuedate]").val() == null) {
				alert("업무 마감일을 지정해주세요.");
			} else if($("[name=ptContent]").val() == "" || $("[name=ptContent]").val() == null) {
				alert("업무 마감일을 지정해주세요.");
			} else {
				$("#regForm").submit();
			}
		}
	});
 
 
$("[name=title]").change(function(){
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

$("[name=startdate]").change(function(){


    // 음.... 깜박하고 그런 경우에는...?
    // if($("[name=startdate]").val()<new Date().toLocaleDateString("en-US", newDateOptions)){
    //     alert("시작일은 오늘 전일로 설정할 수 없습니다.");
    //     $(this).val('');
    // }

    if($("[name=startdate]").val()>$("[name=duedate]").val() && $("[name=duedate]").val()!=""){
        alert("시작일은 마감일 과거일로 설정할 수 없습니다.");
        $(this).val('');
    }
})

$("[name=duedate]").change(function(){
    
    // if($("[name=duedate]").val()<new Date().toLocaleDateString("en-US", newDateOptions)){
    //     alert("마감일은 오늘 전일로 설정할 수 없습니다.");
    //     $(this).val('');
    // }


    if($("[name=startdate]").val()>$("[name=duedate]").val()){
        alert("마감일은 시작일 과거일로 설정할 수 없습니다.");
        $(this).val('');
    }
})


/* 등록 모달 스크립트 end */

 

</script>
	<!-- bundle -->
	<script src="${path}/tools/project_assets/js/vendor.min.js"></script>
	<script src="${path}/tools/project_assets/js/app.min.js"></script>
	<script src="${path}/a00_com/jquery-3.6.0.js"></script>

	<!-- dragula js-->
	<script src="${path}/tools/project_assets/js/vendor/dragula.min.js"></script>

	<!-- demo js -->
	<script src="${path}/tools/project_assets/js/ui/component.dragula.js"></script>
</body>
</html>
