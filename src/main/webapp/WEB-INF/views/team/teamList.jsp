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
<!-- third party css -->
<link href="${path}/tools/project_assets/css/vendor/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
<!-- third party css end -->

<!-- App css -->
<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />

<!-- jquery 라이브러리 -->
<script src="${path}/tools/jquery-3.6.0.js"></script>
<style>
	.inbox-widget .inbox-item .inbox-item-img img {
   		width: 54px;
	}
	.modal {
		position: absolute;
		top: 0;
		left: 0;
		width: 100%;
		height: 100%;
		display: none;
		background-color: rgba(0, 0, 0, 0.4);
	}
	.header-title {
		font-size: 30px;
	}
</style>


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
								<h4 class="page-title">팀 페이지</h4>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body">
									<div class="row my-3">
										<div class="header-title" style="font-size:20px; padding-bottom:5px; float:left;">팀소개
											<textarea id="txt_content" style="width:100%; height:170px;" readonly>${team.piContent}</textarea>
											<div style="text-align:right;">
												<button id="docList-btn" onclick="uptText()" type="button" class="btn btn-primary">편집</button>
												<button id="docList-btn1" onclick="saveText('${team.piId}')" type="button" class="btn btn-primary" style="display:none;">저장</button>
                                            </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-lg-6" style="float:left; width:30%;">
						<div class="card card-h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center mb-2">
                                   	<h4 class="header-title">팀원</h4>
                           		</div>
								<div class="inbox-widget" style="height:500px;overflow-x:hidden; overflow-y:scroll;">
                                    <c:forEach var="user" items="${tuser}" varStatus="status">
                                    	<div class="inbox-item">
	                                        <div class="inbox-item-img"><img src="${path}/tools/main_assets/images/users/profile.png" class="rounded-circle" alt=""></div>
	                                        <p class="inbox-item-author">${user.uiName}</p>
	                                        <p class="inbox-item-text">${user.uiDept}</p>
	                                        <p class="inbox-item-text">${user.uiEmail}</p>
	                                        <p class="inbox-item-date">
	                                            <button type="button" onclick="selectUserInfo('${user.uiId}')" class="btn btn-sm btn-outline-primary px-1 py-0"> <i class="dripicons-enter font-16"></i> </button>
	                                        </p>
                                    	</div>
                                   </c:forEach>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-7 col-lg-6" style="float:right; width:35%; height:616px; ">
						<div class="card card-h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center mb-2">
									<h4 class="header-title">상세보기</h4>
								</div>
								<div>
									<p id="userInfo_name" style="font-size:25px;">이름  :</p>
									<p id="userInfo_dept" style="font-size:25px;">부서  :</p>
									<p id="userInfo_rank" style="font-size:25px;">직급  :</p>
									<p id="userInfo_email" style="font-size:25px;">이메일 : </p>
									<p id="userInfo_uiphon" style="font-size:25px;">연락처 :</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-7 col-lg-6" style="float:right; width:30%; height:616px; margin-right:2%;">
						<div class="card card-h-100">
							<div class="card-body">
								<div class="d-flex justify-content-between align-items-center mb-2">
									<h4 class="header-title">상세보기</h4>
								</div>
									<div class="inbox-item-img" style="text-align:center;">
										<img src="${path}/tools/main_assets/images/users/profile.png" style="width:100%;" class="rounded-circle" alt="">
									</div>
							</div>
						</div>
					</div>
					<jsp:include page="../include/rightBar_footer.jsp" flush="true" />
				</div>
			</div>
		</div>
	</div>
	<script>
		function uptText(){
			$("#docList-btn1").show();
			$("#docList-btn").hide();
			$('#txt_content').attr("readonly",false);

		}
		function saveText(piId){
			let paramData = {
					piContent : $('#txt_content').val(),
					piId : piId
			}

			$.ajax({
				url:"${path}/teamUpt.do",
				type:"get",
				data:paramData,
				success:function(data){
					alert("처리되었습니다.");
					$("#docList-btn1").hide();
					$("#docList-btn").show();
					$('#txt_content').attr("readonly",true);
				}
			})
		}
		function selectUserInfo(uiId){
	    	$('#userInfo_name'  ).text("이름  : ");
	    	$('#userInfo_dept'  ).text("부서  : ");
	    	$('#userInfo_rank'  ).text("직급  : ");
	    	$('#userInfo_email' ).text("이메일 : ");
	    	$('#userInfo_uiphon').text("연락처 : ");
			let paramData = {
					uiId : uiId,
				}// 화면에서 입력한 값 = 저장할 값.
				$.ajax({
				    url:"${path}/teamUserInfo.do",
				    type:"get",
				    data: paramData,
				    dataType:"json",
				    success:function(data){
					  /*uiBirth: "1995-01-23"
			    		uiDept: "개발1팀"
			    		uiEmail: "asrs02041@naver.com"
			    		uiId: "daniel95"
			    		uiIntro: null
			    		uiName: "양초명"
			    		uiPhone: "01011111111"
			    		uiPic: null
			    		uiPw: "1234"
			    		uiRank: "실장"
			    		uiRegDate: 1647997699000
			    		uiStatus: "0" */
				    	$('#userInfo_name'  ).text("이름  : "   +data.userInfo.uiName);
				    	$('#userInfo_dept'  ).text("부서  : "   +data.userInfo.uiDept);
				    	$('#userInfo_rank'  ).text("직급  : "   +data.userInfo.uiRank);
				    	$('#userInfo_email' ).text("이메일 : "  +data.userInfo.uiEmail);
				    	$('#userInfo_uiphon').text("연락처 : "  +data.userInfo.uiPhone);
				    }

				})
		}
	</script>
</body>
</html>