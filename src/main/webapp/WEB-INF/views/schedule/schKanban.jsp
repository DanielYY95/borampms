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

	</div>

	<!-- end 모달창 -->

	<!-- ========== Left Sidebar Start ========== -->
	<div class="leftside-menu">
		<!-- LOGO -->
		<a href="index.html" class="logo text-center logo-light"> <span class="logo-lg"> <img src="${path}/tools/project_assets/images/logo.png" alt="" height="16" />
		</span> <span class="logo-sm"> <img src="${path}/tools/project_assets/images/logo_sm.png" alt="" height="16" />
		</span>
		</a>

		<!-- LOGO -->
		<a href="index.html" class="logo text-center logo-dark"> <span class="logo-lg"> <img src="${path}/tools/project_assets/images/logo-dark.png" alt="" height="16" />
		</span> <span class="logo-sm"> <img src="${path}/tools/project_assets/images/logo_sm_dark.png" alt="" height="16" />
		</span>
		</a>

		<div class="h-100" id="leftside-menu-container" data-simplebar>
			<!--- Sidemenu -->
			<!-- 왼쪽 사이드바 시작  -->
			<ul class="side-nav">
				<li class="side-nav-item"><a href="../dashboard/prjDash.html" class="side-nav-link"> <i class="fa fa-bar-chart" aria-hidden="true"></i> <span> 대시보드 </span>
				</a></li>
				<li class="side-nav-item"><a href="../schedule/schCalendar.html" class="side-nav-link"> <i class="uil-calender"></i> <span> 캘린더 </span>
				</a></li>

				<li class="side-nav-item"><a data-bs-toggle="collapse" href="#sidebarTasks" aria-expanded="false" aria-controls="sidebarTasks" class="side-nav-link"> <i class="uil-clipboard-alt"></i> <span> 일정관리 </span> <span class="menu-arrow"></span>
				</a>
					<div class="collapse" id="sidebarTasks">
						<ul class="side-nav-second-level">
							<li><a href="../schedule/schGantt.html">WBS/간트차트</a></li>
							<li><a href="../schedule/schKanban.html">칸반보드</a></li>
						</ul>
					</div></li>
				<li class="side-nav-item"><a data-bs-toggle="collapse" href="#sidebarDashboards" aria-expanded="false" aria-controls="sidebarDashboards" class="side-nav-link"> <i class="uil-home-alt"></i> <span> 업무 관리 </span>
				</a>
					<div class="collapse" id="sidebarDashboards">
						<ul class="side-nav-second-level">
							<li><a href="../task/task_list.html">업무 목록</a></li>
							<li><a href="../task/task_issue.html">업무 이슈</a></li>
						</ul>
					</div></li>
				<li class="side-nav-item"><a href="../doc/Doc-Management.html" class="side-nav-link"> <i class="uil-folder-plus"></i> <span> 문서관리 </span>
				</a></li>
			</ul>

			<!-- End Sidebar -->

			<div class="clearfix"></div>
		</div>
		<!-- Sidebar -left -->
	</div>
	<!-- Left Sidebar End -->
	<!-- 왼쪽 사이드바 종료  -->



	<div class="clearfix"></div>
	</div>
	<!-- Sidebar -left -->
	</div>
	<!-- Left Sidebar End -->
	<!-- 왼쪽 사이드바 종료  -->

	<!-- ============================================================== -->
	<!-- Start Page Content here -->
	<!-- ============================================================== -->

	<div class="content-page">
		<div class="content">
			<!-- Topbar Start -->
			<div class="navbar-custom">
				<ul class="list-unstyled topbar-menu float-end mb-0">
					<li class="dropdown notification-list d-lg-none"><a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"> <i class="dripicons-search noti-icon"></i>
					</a>
						<div class="dropdown-menu dropdown-menu-animated dropdown-lg p-0">
							<form class="p-3">
								<input type="text" class="form-control" placeholder="Search ..." aria-label="Recipient's username" />
							</form>
						</div></li>
					<li class="dropdown notification-list topbar-dropdown"><a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"> <img src="${path}/tools/project_assets/images/flags/us.jpg" alt="user-image" class="me-0 me-sm-1" height="12" /> <span class="align-middle d-none d-sm-inline-block">English</span> <i class="mdi mdi-chevron-down d-none d-sm-inline-block align-middle"></i>
					</a>
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu">
							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <img src="${path}/tools/project_assets/images/flags/germany.jpg" alt="user-image" class="me-1" height="12" /> <span class="align-middle">German</span>
							</a>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <img src="${path}/tools/project_assets/images/flags/italy.jpg" alt="user-image" class="me-1" height="12" /> <span class="align-middle">Italian</span>
							</a>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <img src="${path}/tools/project_assets/images/flags/spain.jpg" alt="user-image" class="me-1" height="12" /> <span class="align-middle">Spanish</span>
							</a>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <img src="${path}/tools/project_assets/images/flags/russia.jpg" alt="user-image" class="me-1" height="12" /> <span class="align-middle">Russian</span>
							</a>
						</div></li>

					<li class="dropdown notification-list"><a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"> <i class="dripicons-bell noti-icon"></i> <span class="noti-icon-badge"></span>
					</a>
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg">
							<!-- item-->
							<div class="dropdown-item noti-title px-3">
								<h5 class="m-0">
									<span class="float-end"> <a href="javascript: void(0);" class="text-dark"> <small>Clear All</small>
									</a>
									</span>Notification
								</h5>
							</div>

							<div class="px-3" style="max-height: 300px" data-simplebar>
								<h5 class="text-muted font-13 fw-normal mt-0">Today</h5>
								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item p-0 notify-item card unread-noti shadow-none mb-2">
									<div class="card-body">
										<span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
										<div class="d-flex align-items-center">
											<div class="flex-shrink-0">
												<div class="notify-icon bg-primary">
													<i class="mdi mdi-comment-account-outline"></i>
												</div>
											</div>
											<div class="flex-grow-1 text-truncate ms-2">
												<h5 class="noti-item-title fw-semibold font-14">
													Datacorp <small class="fw-normal text-muted ms-1">1 min ago</small>
												</h5>
												<small class="noti-item-subtitle text-muted">Caleb Flakelar commented on Admin</small>
											</div>
										</div>
									</div>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
									<div class="card-body">
										<span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
										<div class="d-flex align-items-center">
											<div class="flex-shrink-0">
												<div class="notify-icon bg-info">
													<i class="mdi mdi-account-plus"></i>
												</div>
											</div>
											<div class="flex-grow-1 text-truncate ms-2">
												<h5 class="noti-item-title fw-semibold font-14">
													Admin <small class="fw-normal text-muted ms-1">1 hours ago</small>
												</h5>
												<small class="noti-item-subtitle text-muted">New user registered</small>
											</div>
										</div>
									</div>
								</a>

								<h5 class="text-muted font-13 fw-normal mt-0">Yesterday</h5>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
									<div class="card-body">
										<span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
										<div class="d-flex align-items-center">
											<div class="flex-shrink-0">
												<div class="notify-icon">
													<img src="${path}/tools/project_assets/images/users/avatar-2.jpg" class="img-fluid rounded-circle" alt="" />
												</div>
											</div>
											<div class="flex-grow-1 text-truncate ms-2">
												<h5 class="noti-item-title fw-semibold font-14">
													Cristina Pride <small class="fw-normal text-muted ms-1">1 day ago</small>
												</h5>
												<small class="noti-item-subtitle text-muted">Hi, How are you? What about our next meeting</small>
											</div>
										</div>
									</div>
								</a>

								<h5 class="text-muted font-13 fw-normal mt-0">30 Dec 2021</h5>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
									<div class="card-body">
										<span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
										<div class="d-flex align-items-center">
											<div class="flex-shrink-0">
												<div class="notify-icon bg-primary">
													<i class="mdi mdi-comment-account-outline"></i>
												</div>
											</div>
											<div class="flex-grow-1 text-truncate ms-2">
												<h5 class="noti-item-title fw-semibold font-14">Datacorp</h5>
												<small class="noti-item-subtitle text-muted">Caleb Flakelar commented on Admin</small>
											</div>
										</div>
									</div>
								</a>

								<!-- item-->
								<a href="javascript:void(0);" class="dropdown-item p-0 notify-item card read-noti shadow-none mb-2">
									<div class="card-body">
										<span class="float-end noti-close-btn text-muted"><i class="mdi mdi-close"></i></span>
										<div class="d-flex align-items-center">
											<div class="flex-shrink-0">
												<div class="notify-icon">
													<img src="${path}/tools/project_assets/images/users/avatar-4.jpg" class="img-fluid rounded-circle" alt="" />
												</div>
											</div>
											<div class="flex-grow-1 text-truncate ms-2">
												<h5 class="noti-item-title fw-semibold font-14">Karen Robinson</h5>
												<small class="noti-item-subtitle text-muted">Wow ! this admin looks good and awesome design</small>
											</div>
										</div>
									</div>
								</a>

								<div class="text-center">
									<i class="mdi mdi-dots-circle mdi-spin text-muted h3 mt-0"></i>
								</div>
							</div>

							<!-- All-->
							<a href="javascript:void(0);" class="dropdown-item text-center text-primary notify-item border-top border-light py-2"> View All </a>
						</div></li>

					<li class="dropdown notification-list d-none d-sm-inline-block"><a class="nav-link dropdown-toggle arrow-none" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"> <i class="dripicons-view-apps noti-icon"></i>
					</a>
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated dropdown-lg p-0">
							<div class="p-2">
								<div class="row g-0">
									<div class="col">
										<a class="dropdown-icon-item" href="#"> <img src="${path}/tools/project_assets/images/brands/slack.png" alt="slack" /> <span>Slack</span>
										</a>
									</div>
									<div class="col">
										<a class="dropdown-icon-item" href="#"> <img src="${path}/tools/project_assets/images/brands/github.png" alt="Github" /> <span>GitHub</span>
										</a>
									</div>
									<div class="col">
										<a class="dropdown-icon-item" href="#"> <img src="${path}/tools/project_assets/images/brands/dribbble.png" alt="dribbble" /> <span>Dribbble</span>
										</a>
									</div>
								</div>

								<div class="row g-0">
									<div class="col">
										<a class="dropdown-icon-item" href="#"> <img src="${path}/tools/project_assets/images/brands/bitbucket.png" alt="bitbucket" /> <span>Bitbucket</span>
										</a>
									</div>
									<div class="col">
										<a class="dropdown-icon-item" href="#"> <img src="${path}/tools/project_assets/images/brands/dropbox.png" alt="dropbox" /> <span>Dropbox</span>
										</a>
									</div>
									<div class="col">
										<a class="dropdown-icon-item" href="#"> <img src="${path}/tools/project_assets/images/brands/g-suite.png" alt="G Suite" /> <span>G Suite</span>
										</a>
									</div>
								</div>
								<!-- end row-->
							</div>
						</div></li>

					<li class="notification-list"><a class="nav-link end-bar-toggle" href="javascript: void(0);"> <i class="dripicons-gear noti-icon"></i>
					</a></li>

					<li class="dropdown notification-list"><a class="nav-link dropdown-toggle nav-user arrow-none me-0" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="false" aria-expanded="false"> <span class="account-user-avatar"> <img src="${path}/tools/project_assets/images/users/avatar-1.jpg" alt="user-image" class="rounded-circle" />
						</span> <span> <span class="account-user-name">Dominic Keller</span> <span class="account-position">Founder</span>
						</span>
					</a>
						<div class="dropdown-menu dropdown-menu-end dropdown-menu-animated topbar-dropdown-menu profile-dropdown">
							<!-- item-->
							<div class="dropdown-header noti-title">
								<h6 class="text-overflow m-0">Welcome !</h6>
							</div>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="mdi mdi-account-circle me-1"></i> <span>My Account</span>
							</a>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="mdi mdi-account-edit me-1"></i> <span>Settings</span>
							</a>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="mdi mdi-lifebuoy me-1"></i> <span>Support</span>
							</a>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="mdi mdi-lock-outline me-1"></i> <span>Lock Screen</span>
							</a>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="mdi mdi-logout me-1"></i> <span>Logout</span>
							</a>
						</div></li>
				</ul>
				<button class="button-menu-mobile open-left">
					<i class="mdi mdi-menu"></i>
				</button>
				<div class="app-search dropdown d-none d-lg-block">
					<form>
						<div class="input-group">
							<input type="text" class="form-control dropdown-toggle" placeholder="Search..." id="top-search" /> <span class="mdi mdi-magnify search-icon"></span>
							<button class="input-group-text btn-primary" type="submit">Search</button>
						</div>
					</form>

					<div class="dropdown-menu dropdown-menu-animated dropdown-lg" id="search-dropdown">
						<!-- item-->
						<div class="dropdown-header noti-title">
							<h5 class="text-overflow mb-2">
								Found <span class="text-danger">17</span> results
							</h5>
						</div>

						<!-- item-->
						<a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="uil-notes font-16 me-1"></i> <span>Analytics Report</span>
						</a>

						<!-- item-->
						<a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="uil-life-ring font-16 me-1"></i> <span>How can I help you?</span>
						</a>

						<!-- item-->
						<a href="javascript:void(0);" class="dropdown-item notify-item"> <i class="uil-cog font-16 me-1"></i> <span>User profile settings</span>
						</a>

						<!-- item-->
						<div class="dropdown-header noti-title">
							<h6 class="text-overflow mb-2 text-uppercase">Users</h6>
						</div>

						<div class="notification-list">
							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item">
								<div class="d-flex">
									<img class="d-flex me-2 rounded-circle" src="${path}/tools/project_assets/images/users/avatar-2.jpg" alt="Generic placeholder image" height="32" />
									<div class="w-100">
										<h5 class="m-0 font-14">Erwin Brown</h5>
										<span class="font-12 mb-0">UI Designer</span>
									</div>
								</div>
							</a>

							<!-- item-->
							<a href="javascript:void(0);" class="dropdown-item notify-item">
								<div class="d-flex">
									<img class="d-flex me-2 rounded-circle" src="${path}/tools/project_assets/images/users/avatar-5.jpg" alt="Generic placeholder image" height="32" />
									<div class="w-100">
										<h5 class="m-0 font-14">Jacob Deo</h5>
										<span class="font-12 mb-0">Developer</span>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</div>
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
							<h4 class="page-title">칸반보드
						</div>
						<!-- end page  -->
						</h4>
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

								<!--  !!!!카드 시작!!!!  -->
								<c:forEach var="kanban" items="${klist }">
									<div class="card mb-0">
										<div class="card-body p-3">
											<small class="float-end text-muted">${kanban.ptStartdate }</small> <span class="badge bg-danger">${kanban.ptPriority }</span> <span class="badge bg-success">${kanban.ptStatus }</span>

											<h5 class="mt-2 mb-2">
												<a href="#" data-bs-toggle="modal" data-bs-target="#task-detail-modal" class="text-body">${kanban.ptTitle }</a>
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
												<a href="#" data-bs-toggle="modal" data-bs-target="#task-detail-modal" class="text-body">${kanban2.ptTitle }</a>
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
												<a href="#" data-bs-toggle="modal" data-bs-target="#task-detail-modal" class="text-body">${kanban3.ptTitle }</a>
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
												<a href="#" data-bs-toggle="modal" data-bs-target="#task-detail-modal" class="text-body">${kanban4.ptTitle }</a>
											</h5>

											<p class="mb-0">
												<span class="pe-2 text-nowrap mb-2 d-inline-block"> <i class="mdi mdi-briefcase-outline text-muted"></i> ${kanban4.ptType }
												</span>
											</p>
										
											<p class="mb-0">
												<img src="https://s3.ap-northeast-2.amazonaws.com/elasticbeanstalk-ap-northeast-2-176213403491/media/magazine_img/magazine_270/%EC%8D%B8%EB%84%A4%EC%9D%BC.jpg" "
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

