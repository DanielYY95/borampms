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
<!-- ㅊ ㅏ트  -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@3.5.1/dist/chart.min.js"></script>
<!-- jquery 라이브러리 -->
<script src="${path}/tools/jquery-3.6.0.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
<meta content="Coderthemes" name="author" />
<!-- App favicon -->
<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />

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
			<div class="content col-8 mx-auto">
				<!-- Topbar Start -->
				<jsp:include page="../include/headerBar.jsp" flush="true" />

				<!-- Start Content-->
				<div class="container-fluid">

					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right"></div>
								<h4 class="page-title">대시보드</h4>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div class="row">
				
						<div class="col-xl-5 col-lg-6">

								<div class="row">
								
								<!-- end col-->
								<c:forEach var="prj" items="${prjList }">
								<div class="col-sm-6">
									<div class="card widget-flat" style="position:flex;">
										<div class="card-body" style=" text-align: center; height:300px;">
											<i class="fa fa-tasks fa-4x pb-2" aria-hidden="true" style="padding-top:45px;"></i><br>
											<h5 class="text-muted fw-normal mt-0" title="Number of Customers" 
											style="text-align: center; padding-bottom: 10px; font-size:19px; ">${prj.piTitle}</h5>
					
											<div class="text-nowrap" style="text-align: center; padding-bottom: 10px;">
											
												<h5 class="my-0" >시작일: ${prj.piStartdate}</h5><br>
												<h5 class="my-0">마감일: ${prj.piDuedate}</h5>
											</div>
											
										</div>
										<!-- end card-body-->
									</div>
									<!-- end card-->
								</div>
								
								<!-- end col-->
								
								<div class="col-sm-6">
									<div class="card widget-flat">
										<div class="card-body" style="height:300px;">
											<div style="text-align: center; padding-bottom: 10px;">
												<i class="fa-regular fa-clock fa-4x" style="padding-top:45px;"></i>
											</div><br>
											<h5 class="text-muted fw-normal mt-0" title="Number of Customers"
											 style="text-align: center; padding-bottom: 10px;">남은 기간</h5>
											<p class="mb-0 text-muted">
											<div class="text-nowrap" style="text-align: center; padding-bottom: 10px;">${prj.duration}일</div>
											</p>
										</div>
										<!-- end card-body-->
									</div>
									<!-- end card-->
								</div>
								</c:forEach>
								</div>
								
							<!-- end row -->
							<div class="row">

								<div class="col-sm-6">

									<div class="card widget-flat">
										<div class="card-body" style="height:300px;">
											<div style="text-align: center; padding-bottom: 10px;"><br>

												<i class="fa-solid fa-child-reaching fa-4x pb-3" style="padding-top:35px;" ></i><br>
												<h5 class="text-muted fw-normal mt-0 pb-2" title="Number of Customers" 
												style="text-align: center;">프로젝트 구성원</h5>
												
													<div class="text-nowrap" style="text-align: center; padding-bottom: 10px;">
													${userNum} 명</div>
												

											</div>
										</div>
									</div>

								</div>

								<!-- end col-->

								<div class="col-sm-6">
									<div class="card widget-flat" >
										<div class="card-body " style="height:300px;">

											<div style="text-align: center; padding-bottom: 10px;">
												<i class="fa-solid fa-calendar-days fa-4x" style="padding-top:45px;"></i>
											</div><br>

											<h5 class="text-muted fw-normal mt-0" title="Number of Customers"
											 style="text-align: center; padding-bottom: 10px;">총 작업 수</h5>
											<p class="mb-0 text-muted">
												<div class="text-nowrap" style="text-align: center; padding-bottom: 10px;">${dashlist.size() }건</div>
											</p>
										</div>
										<!-- end card-body-->
									</div>
									<!-- end card-->
								</div>
								<!-- end col-->
							</div>
							<!-- end row -->

							<!-- end card-->
						</div>
						<!-- end col-->


						<div class="col-xl-7 col-lg-6">
							<div class="card card-h-100">
								<div class="card-body">
									<div class="d-flex justify-content-between align-items-center mb-2">
										<h4 class="header-title">작업현황</h4>
										<div class="dropdown">
											<a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false"> </a>
										</div>
									</div>
									<form class="chartform">
										<div class="form-body">
											<div style="height: 350px; ">
												<canvas id="taskDashChart" width="300;" height="300;" class="mx-auto"></canvas>
											</div>
										</div>
									</form>
							
									<div class="chart-widget-list px-5">
										<c:forEach var="task" items="${taskDashChart}">
											
											<p>
												<i class=
												<c:choose>
													<c:when test="${task.ptStatus eq '진행 전' }">
														"mdi mdi-square text-warning"
													</c:when>
													<c:when test="${task.ptStatus eq '진행 중' }">
														"mdi mdi-square text-primary"
													</c:when>
													<c:when test="${task.ptStatus eq '완료' }">
														"mdi mdi-square text-success"
													</c:when>
			
													<c:when test="${task.ptStatus eq '보류' }">
														"mdi mdi-square text-danger"
													</c:when>
												</c:choose>
												></i> ${task.ptStatus} <span class="float-end"> ${task.cnt} 건</span>
											</p>
											
					
										</c:forEach>
							
									</div>
								

								</div>
								<!-- end card-body-->
							</div>
							<!-- end card-->

						</div>
					

						</div>
						<!-- end col -->

						<div class="row">
							<div class="col-12">
								<div class="card">
									<div class="card-body">
										<!-- end row -->

										<div class="row my-3">
											<div class="table-responsive">
												<div class="header-title" style="font-size: 20px; padding-bottom: 10px; float: left;">프로젝트 총 작업</div>
												<a href="${path}/task.do?method=list${taskdash.ptId}" style="float: right;">전체작업 보기</a>


												<table class="table table-centered table-nowrap mb-0 text-center">
													<thead class="table-light">
														<tr>

															<th>제목</th>
															<th>부서</th>
															<th>등록자</th>
															<th>시작일</th>
															<th>마감일</th>
															<th>진행상태</th>

														</tr>
													</thead>
													<tbody id="task-tbody">
														<c:forEach var="taskdash" items="${dashlist}" varStatus="status" begin="0" end="4">
															<tr>

																<td>${taskdash.ptTitle }</td>
																<td><c:forEach var="charge" items="${taskdash.ptCharge.split(',') }">
															${charge.split(" ")[0] }<br>
																	</c:forEach></td>
																<td><c:forEach var="charge" items="${taskdash.ptCharge.split(',') }">
															${charge.split(" ")[1] }<br>
																	</c:forEach></td>
																<td>${taskdash.ptStartdate }</td>
																<td>${taskdash.ptDuedate }</td>
																<td>
																	<div class="progress" style="position: relative;">
																		<div
																			class=<c:choose>
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
							
																		<c:when test="${taskdash.ptStatus eq '보류' }">
																			"progress-bar-striped"
																			style="width:0%" aria-valuenow="0"
																		</c:when>
																	</c:choose>
																			role="progressbar" aria-valuemin="0" aria-valuemax="100"
																		></div>
																		<small class="justify-content-center d-flex position-absolute w-100" style="color: white;"> ${taskdash.ptStatus } </small>
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

	<script>
	//상태별 파이차트 
	var taskDashList = [];
	var taskCountList = [];
	
	<c:forEach var="task" items="${taskDashChart}">
	
		taskDashList.push('${task.ptStatus}');
		taskCountList.push('${task.cnt}');
	
	</c:forEach>
	

	
	const tdl = document.getElementById('taskDashChart');
	const taskDashChart = new Chart(tdl, {
		type:'doughnut',
		data : {
			labels : taskDashList,
			datasets : [{
				data : taskCountList,
				backgroundColor: [
					'rgba(80, 80, 255, 1)', //보라 
					'rgba(255, 106, 137, 1)', //핑크 
					'rgba(56, 149, 97, 1)', // 연두
					'rgba(255, 215, 50, 1)' //노랑
				],
				hoverOffset: 4
			}],
		},
 		options: {
			responsive: false,
			maintainAspectRatio: false,
			plugins: {
				legend: {
					position : 'bottom'
				}
			}
		} 
	});
	
	</script>


</body>
</html>