<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
<fmt:requestEncoding value="utf-8" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>Calendar | Hyper - Responsive Bootstrap 5 Admin Dashboard</title>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
<meta content="Coderthemes" name="author" />
<!-- App favicon -->
<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />

<!-- third party css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<link href="${path}/tools/project_assets/css/vendor/fullcalendar.min.css" rel="stylesheet" type="text/css" />
<!-- third party css end -->

<!-- App css -->
<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />


<script src="${path}/a00_com/jquery-3.6.0.js"></script>
<script src="${path}/tools/project_assets/js/vendor/fullcalendar.min.js"></script>

<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css">
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css">

<link href='${path}/a00_com/lib/main.css' rel='stylesheet' />
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" rel="stylesheet">
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src='${path}/a00_com/lib/main.js'></script>

<!-- fullcalendar ?????? CDN  ?????? ?????? today, month, week, day ?????? ?????????-->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>


<style>
body {

	padding: 0;
	font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 1100px;
	margin: 0 auto;
}
</style>

<script type="text/javascript">
	document.addEventListener(
					'DOMContentLoaded',
					function() {
						var calendarEl = document.getElementById('calendar');

						var calendar = new FullCalendar.Calendar(
								calendarEl,
								{ headerToolbar : {
										left : 'prev,next today',
										center : 'title',
										right : 'dayGridMonth,timeGridWeek,timeGridDay'
									},
									locale: "ko", //????????? ??????????????? ??????
													// ?????? ?????? ??????
									navLinks : true, 
									selectable : true,
									selectMirror : true,
									select : function(arg) {
										console.log("#??????????????? ?????? ??????#")
										console.log(arg)
										$("#exampleModalLongTitle").text("????????????");
										$("#regBtn").show();
										$("#uptBtn").hide();
										$("#delBtn").hide();
										$("#frm01")[0].reset(); 

										$("#modalBtn").click();
	
										console.log("?????????:"
												+ arg.start.toLocaleString())
										console.log("????????????:"
												+ arg.end.toLocaleString())
										console.log("????????????:" + arg.allDay)
	
										$("[name=start]").val(
												arg.start.toISOString())
										
										$("[name=end]").val(
												arg.end.toISOString())
										$("[name=allDay]").val("" + arg.allDay)

										calendar.unselect()
									}, // eventClick, eventDrop, eventResize
									eventClick : function(arg) {
										console.log(arg.event)
										formData(arg.event);
										$("#exampleModalLongTitle")
												.text("????????????");
										$("#regBtn").hide();
										$("#uptBtn").show();
										$("#delBtn").show();
										$("#modalBtn").click();
									},
									eventDrop : function(info) {
										formData(info.event);
										$("#frm01").attr("action",
												"${path}/updateCalendar.do");
										$("#frm01").submit();
									},
									eventResize : function(info) {
										formData(info.event);
										$("#frm01").attr("action",
												"${path}/updateCalendar.do");
										$("#frm01").submit();
									},
									editable : true,
									dayMaxEvents : true, // allow "more" link when too many events
									events : function(info, successCallback,
											failureCallback) {
										// ????????? ?????? json ????????? ????????????, fullcalenar ????????????
										$.ajax({
											type : "post",
											url : "${path}/calList.do",
											dataType : "json",
											success : function(data) {
												console.log(data.calList)
												successCallback(data.calList);
												document.getElementById('script-warning').style.display = 'none';
											},
											error : function(err) {
												console.log(err)
												failureCallback(err);
												document.getElementById('script-warning').style.display = 'block';
											}
										});
									},
									/*
									events: {
									  url: 'php/get-events.php', // controller?????? ajax???????????? ???????????? ??????..
									    failure: function() {
									      document.getElementById('script-warning').style.display = 'block'
									    } 
									}, */
									loading : function(bool) {
										document.getElementById('loading').style.display = bool ? 'block': 'none';
									}
								});
						calendar.setOption('themeSystem', "Bootstrap 5");
						calendar.render();

					});
	function formData(event) {
		$("[name=id]").val(event.id)
		$("[name=title]").val(event.title)
		// ????????? ?????? ????????? ???????????? extendedProps??? ????????? ??????.
		$("[name=content]").val(event.extendedProps.content)
		$("[name=start]").val(event.start.toISOString())
		$("[name=end]").val(event.end.toISOString())
		$("[name=borderColor]").val(event.borderColor)
		$("[name=backgroundColor]").val(event.backgroundColor)
		$("[name=textColor]").val(event.textColor)
		$("[name=allDay]").val("" + event.allDay)
	}

	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
		$("#regBtn").click(function() {
			if (confirm("???????????????????????????????")) {
				$("#frm01").attr("action", "${path}/insertCalendar.do");
				$("#frm01").submit();
			}
		});
		$("#uptBtn").click(function() {
			if (confirm("???????????????????????????????")) {
				$("#frm01").attr("action", "${path}/updateCalendar.do");
				$("#frm01").submit();
			}
		});
		$("#delBtn").click(function() {
			if (confirm("???????????????????????????????")) {
				$("#frm01").attr("action", "${path}/deleteCalendar.do");
				$("#frm01").submit();
			}
		});
	});
</script>
</head>


<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
	<!-- Begin page -->
	<div class="wrapper">
		<!-- ========== Left Sidebar Start ========== -->
		<jsp:include page="../include/leftBar.jsp" flush="true" />

		<!-- ============================================================== -->
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">
				<!-- Topbar Start -->
				<jsp:include page="../include/headerBar.jsp" flush="true" />

				<!-- Start ????????? ?????? !! Content-->
				<div class="container-fluid">
					<!-- start page title -->
					<div class="row">
						<div class="col-12">
							<div class="page-title-box">
								<div class="page-title-right">
									<ol class="breadcrumb m-0">
										<li class="breadcrumb-item"><a href="javascript: void(0);">borampms</a></li>
										<li class="breadcrumb-item"><a href="javascript: void(0);">????????????</a></li>
										<li class="breadcrumb-item active">?????????</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
					<!-- end page title -->

					<div id='calendar'></div>

					<div id='loading'>loading...</div>
					<div id='script-warning'>
						<code>??????</code>
						must be running.
					</div>
					<%--
	$("#modalBtn").click(); // ?????? ???????????? ???????????? ??????????????? ??????.
 --%>
					<button id="modalBtn" data-toggle="modal" data-target="#exampleModalCenter" style="display: none"></button>

					<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLongTitle">????????????</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form id="frm01" class="form" method="post">
										<input type="hidden" name="id" value="0" />
										<div class="row">
											<div class="col">
												<input type="text" class="form-control" placeholder="?????? ??????" name="title">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="text" class="form-control" data-toggle="tooltip" data-placement="buttom" title="?????????" name="start" readonly>
											</div>
											<div class="col">
												<input type="text" class="form-control" data-toggle="tooltip" data-placement="buttom" title="?????????" name="end" readonly>
											</div>
										</div>
										<div class="row">
											<div class="col">
												<textarea class="form-control" name="content" placeholder="??????" cols="10" rows="10"></textarea>
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="color" data-toggle="tooltip" data-placement="buttom" title="????????????" value="#0099cc" class="form-control" name="backgroundColor">
											</div>

											<div class="col">
												<input type="color" class="form-control" data-toggle="tooltip" data-placement="buttom" title="????????????" value="#ccffff" name="textColor">
											</div>
										</div>
										<div class="row">
											<div class="col">
												<input type="color" class="form-control" data-toggle="tooltip" data-placement="buttom" title="???????????????" value="#4b0082" name="borderColor">
											</div>
											<div class="col">
												<select name="allDay" class="form-control" data-toggle="tooltip" data-placement="buttom" title="????????????">
													<option value="true">??? ???</option>
													<option value="false">??? ???</option>
												</select>
											</div>
										</div>
									</form>
									<script>
										
									</script>
								</div>
								<div class="modal-footer">

									<button type="button" id="regBtn" class="btn btn-primary">????????????</button>
									<button type="button" id="uptBtn" class="btn btn-info">????????????</button>
									<button type="button" id="delBtn" class="btn btn-danger">????????????</button>
									<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- end row -->
				</div>
				<!-- container -->
			</div>
			<!-- content -->

			<!-- Footer Start -->
			<jsp:include page="../include/rightBar_footer.jsp" flush="true" />
			<!-- end Footer -->
		</div>

		<!-- ============================================================== -->
		<!-- End Page content -->
		<!-- ============================================================== -->
	</div>
	<!-- END wrapper -->

	

	<!-- dragula js-->
	<script src="${path}/tools/project_assets/js/vendor/dragula.min.js"></script>

	<!-- demo js -->
	<script src="${path}/tools/project_assets/js/ui/component.dragula.js"></script>
</body>
</html>