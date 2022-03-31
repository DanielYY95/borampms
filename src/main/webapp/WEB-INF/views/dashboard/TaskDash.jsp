<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title>Dashboard | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
<meta content="Coderthemes" name="author" />
<!-- App favicon -->
<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<!-- ㅊ ㅏ트  -->
  <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!-- third party css -->
<link href="${path}/tools/project_assets/css/vendor/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
<!-- third party css end -->

<!-- App css -->
<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />

<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
	<!-- Begin page -->
	<div class="wrapper">
		<!-- ========== Left Sidebar Start ========== -->
		<jsp:include page="../include/leftBar.jsp" flush="true" />

		<div class="content-page">
			<div class="content">
				<!-- Topbar Start -->
				<jsp:include page="../include/headerBar.jsp" flush="true" />

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
								
								</div>
								<h4 class="page-title">대시보드</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
						<div class="col-xl-5 col-lg-6">

							<div class="row">
								<div class="col-sm-6">
									<div class="card widget-flat">
										<div class="card-body">
								
											<div style="text-align:center; padding-bottom:10px;">
											<i class="fa-regular fa-clock fa-4x"></i> 
											</div>
											
											<h5 class="text-muted fw-normal mt-0" title="Number of Customers" 
											style="text-align:center; padding-bottom:10px;">남은 기간</h5>
											<p class="mb-0 text-muted">
											 <div class="text-nowrap"  style="text-align:center; padding-bottom:10px;">10일</div>
											</p>
										</div>
										<!-- end card-body-->
									</div>
									<!-- end card-->
								</div>
								<!-- end col-->

								<div class="col-sm-6">
									<div class="card widget-flat">
										<div class="card-body">
								
											<div style="text-align:center; padding-bottom:10px;">
											<i class="fa-solid fa-calendar-days fa-4x"></i>
											</div>
											
											<h5 class="text-muted fw-normal mt-0" title="Number of Customers" 
											style="text-align:center; padding-bottom:10px;">총 작업 수</h5>
											<p class="mb-0 text-muted">
											 <div class="text-nowrap"  style="text-align:center; padding-bottom:10px;">${dashlist.size() }건</div>
											</p>
										</div>
										<!-- end card-body-->
									</div>
									<!-- end card-->
								</div>
								<!-- end col-->
							</div>
							<!-- end row -->

							
								<div class="col-sm-6">

									<div class="card widget-flat" style=" width:100%; hight:40px;">
										<div class="card-body" >
								<div style="text-align:center; padding-bottom:10px;">
									<%-- <c:forEach var="dashUser" items="${DList }"> --%>
										<i class="fa-solid fa-child-reaching fa-4x"></i>
											
											<h5 class="text-muted fw-normal mt-0" title="Number of Customers" 
											style="text-align:center; padding-bottom:10px;">프로젝트 구성원</h5>
					
										<%-- 	<span class="text-nowrap">${DList.ptCharge}</span> --%>
									<p class="mb-0 text-muted">
											 <div class="text-nowrap"  style="text-align:center; padding-bottom:10px;">개발팀 양초명</div>
										
											</p>
									<%-- 	</c:forEach> --%>
										</div>
										</div>
										</div>
									
									</div>
						
									<!-- end card-->
								</div>
								<!-- end col-->


						<div class="col-xl-7 col-lg-6">
							<div class="card card-h-100">
								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center mb-2">
										<h4 class="header-title">작업현황</h4>
										<div class="dropdown">
											<a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
											</a>
										</div>
									</div>
										<div id="myChart" width="300" height="186" class="apex-charts mb-4 mt-3" data-colors="#727cf5,#0acf97,#fa5c7c,#ffbc00">
										
										</div>
										
									<div class="chart-widget-list">
										<p>
											<i class="mdi mdi-square text-primary"></i> 진행 중 <span class="float-end">4건</span>
										</p>
										<p>
											<i class="mdi mdi-square text-danger"></i> 보류 <span class="float-end">8건</span>
										</p>
										<p>
											<i class="mdi mdi-square text-success"></i> 완료 <span class="float-end">2건</span>
										</p>
										<p class="mb-0">
											<i class="mdi mdi-square text-warning"></i> 진행 전 <span class="float-end">15건</span>
										</p>
									</div>


								</div>
								<!-- end card-body-->
							</div>
							<!-- end card-->

						</div>
						<!-- end col -->
											<!-- start page content -->
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<!-- end row -->
							
									<div class="row my-3">
										<div class="table-responsive">
										<div class="header-title" style="font-size:20px; padding-bottom:10px; float:left;">프로젝트 총 작업</div>
											<a href="${path}/task.do?method=list${taskdash.ptId}"  style="float:right;">전체작업 보기</a>
										
										
											<table class="table table-centered table-nowrap mb-0 text-center">
												<thead class="table-light">
													<tr>
														<th>번호</th>
														<th>제목</th>
														<th>부서</th>
														<th>등록자</th>
														<th>시작일</th>
														<th>마감일</th>
														<th>진행상태</th>
												
													</tr>
											 	</thead>
											 	<tbody id="task-tbody">
													<c:forEach var="taskdash" items="${dashlist}" varStatus="status">
													<tr>
														<td>${taskdash.cnt }</td>
														<td>${taskdash.ptTitle }</td>
														<td>
														<c:forEach var="charge" items="${taskdash.ptCharge.split(',') }">
															${charge.split(" ")[0] }<br>
														</c:forEach>
														</td>
														<td>
														<c:forEach var="charge" items="${taskdash.ptCharge.split(',') }">
															${charge.split(" ")[1] }<br>
														</c:forEach>
														</td>
														<td>${taskdash.ptStartdate }</td>
														<td>${taskdash.ptDuedate }</td>
														<td>
															<div class="progress" style="position:relative;">
																<div class=
																	<c:choose>
																		<c:when test="${taskdash.ptStatus eq '진행 전' }">
																			"progress-bar bg-secondary"
																			style="width:100%" aria-valuenow="100"
																		</c:when>
																		<c:when test="${taskdash.ptStatus eq '진행 중' }">
																			"progress-bar-striped bg-info progress-bar-animated"
																			style="width:70%" aria-valuenow="70"
																		</c:when>
																		<c:when test="${taskdash.ptStatus eq '완료' }">
																			"progress-bar bg-success"
																			style="width:100%" aria-valuenow="100"
																		</c:when>
																		<c:when test="${taskdash.ptStatus eq '지연' }">
																			"progress-bar-striped bg-warning progress-bar-animated"
																			style="width:70%" aria-valuenow="70"
																		</c:when>
																		<c:when test="${taskdash.ptStatus eq '보류' }">
																			"progress-bar-striped"
																			style="width:0%" aria-valuenow="0"
																		</c:when>
																	</c:choose>
																		role="progressbar" aria-valuemin="0" aria-valuemax="100">
																</div>
																<small class="justify-content-center d-flex position-absolute w-100" style="color:white;">
																	${taskdash.ptStatus }
																</small>
															</div>
														</td>
												
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
																	
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
					<!-- end row -->

			
			</div>
			<!-- content -->

			<!-- Footer Start -->
			<jsp:include page="../include/rightBar_footer.jsp" flush="true" />

		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->

	</div>
	<!-- END wrapper -->

	<!-- third party js -->

	<script src="${path}/tools/project_assets/js/vendor/apexcharts.min.js"></script>
	<script src="${path}/tools/project_assets/js/vendor/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="${path}/tools/project_assets/js/vendor/jquery-jvectormap-world-mill-en.js"></script>
	<!-- third party js ends -->

	<!-- demo app -->
<!-- 	<script src="${path}/tools/project_assets/js/pages/demo.dashboard.js"></script> -->
	<!-- end demo js-->
</body>
</html>