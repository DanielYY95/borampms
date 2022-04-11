<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- App favicon -->
        <link rel="shortcut icon" href="${path}/tools/main_assets/images/favicon.ico">
          <!-- App css -->
          <link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
          <link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style"/>

        <!-- SimpleMDE css -->
		<link href="${path}/tools/main_assets/css/vendor/simplemde.min.css" rel="stylesheet" type="text/css" />
		<link
		    rel="stylesheet"
		    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
		  />
		<!-- jquery 라이브러리 -->
 		<script src="${path}/tools/jquery-3.6.0.js"></script>
        <!-- css -->
        <style>
        	.pagination-margin-top{
        		margin-top:10px;
        	}
        </style>
    </head>

    <body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid" data-rightbar-onstart="true">
        <!-- Begin page -->
        <div class="wrapper">
            <!-- ========== Left Sidebar Start ========== -->
            <jsp:include page="../include/leftBar.jsp"/>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                    <!-- Topbar Start -->
                    <jsp:include page="../include/headerBar.jsp"/>
                    <!-- end Topbar -->

                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <div class="page-title-right">
                                        <ol class="breadcrumb m-0">
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Hyper</a></li>
                                            <li class="breadcrumb-item"><a href="javascript: void(0);">Apps</a></li>
                                            <li class="breadcrumb-item active">File Manager</li>
                                        </ol>
                                    </div>
                                    <h4 class="page-title">결재문서등록</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
						<form method="post" enctype="multipart/form-data" action="${path}/appd.do?method=insert">
                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">

                                    <h4 class="header-title">[결재문서함]</h4>

                                    <br>
                                        <div class="tab-content">
                                            <div class="tab-pane show active" id="input-masks-preview">
                                                    <div class="row">
	                                                    <div class="col-lg-6">
		                                                    <div class="mb-3">
															    <label class="form-label">제목</label>
															    <input type="hidden" class="form-control" name="adId" value="${appddoc.adId}">
															    <input type="text" class="form-control" name="adTitle" value="${appddoc.adTitle}">
															    <span class="font-13 text-muted">제목 입력은 필수사항입니다.</span>
															</div>
														</div>
													</div>
													<div class="row">
														<div class="col-lg-6">
															<div class="mb-3">
															    <label class="form-label" >부서</label>
															    <input type="text" class="form-control" name="adDept" value="${user_info.uiDept}" readonly>
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
															    <label class="form-label">작성자</label>
															    <input type="text" class="form-control" name="adWriter" value="${uiId}" readonly>
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
															    <label class="form-label">결재상태</label>
															    <input type="text" class="form-control" name="adAppd" value="결재대기" readonly>
															</div>
														</div>
														<div class="col-lg-6">
															<div class="mb-3">
															    <label class="form-label">결재자</label><br>
															    <input type="hidden" class="form-control" name="adUiId" value="${appddoc.adUiId}" readonly>
															    <select id="selAdUiId">
															    	<c:forEach var="user" items="${deptUserList}">
																    	<c:choose>
																	    	<c:when test="${appddoc.adUiId == user.uiId}">
																				<option value="${user.uiId}" selected="selected" >${user.uiName}(${user.uiId})</option>
																	    	</c:when>
																	    	<c:otherwise>
																				<option value="${user.uiId}">${user.uiName}(${user.uiId})></option>
																	    	</c:otherwise>
																    	</c:choose>
															    	</c:forEach>
															    </select>
															</div>
														</div>
													</div>
													<div class="mb-3">
                                                        <label class="form-label">내용</label>
                                                        <textarea class="form-control" id="example-textarea" name="adContent" rows="5">${appddoc.adContent}</textarea>
                                                    </div>

													<!-- 추가파일 입력란 생성부분 -->
													<div id="articlefileChange">
													</div>
													<!-- 등록/취소 버튼 -->
													<div style="text-align:right;">
														<button id="regBtn" type="button" class="btn btn-primary">등록</button>&nbsp;&nbsp;
														<button id="cancelBtn"type="button" class="btn btn-light">취소</button>
                                                	</div>
                                                <!-- end row -->
                                            </div> <!-- end preview-->

                                            <div class="tab-pane" id="input-masks-code">
                                                <pre class="mb-0">
                                                </pre> <!-- end highlight-->
                                            </div> <!-- end preview code-->
                                        </div>

	                                </div>
	                                <!-- end inbox-rightbar-->
	                             </div>
	                             <!-- end card-body -->
	                             <div class="clearfix"></div>
	                        </div> <!-- end card-box -->

	                    </div> <!-- end Col -->
	                    </form>
	                </div><!-- End row -->


	            </div> <!-- container -->

	         </div> <!-- content -->

                <!-- Footer Start -->
                <jsp:include page="../include/rightBar_footer.jsp"/>
                <!-- end Footer -->

            </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <!-- /End-bar -->

		<!-- jstree js -->
		<script src="${path}/tools/main_assets/js/vendor/jstree.min.js"></script>
		<script src="${path}/tools/main_assets/js/pages/demo.jstree.js"></script>
		<!-- SimpleMDE js -->
		<script src="${path}/tools/main_assets/js/vendor/simplemde.min.js"></script>
		<!-- SimpleMDE demo -->
		<script src="${path}/tools/main_assets/js/pages/demo.simplemde.js"></script>
    </body>
	<script>
	$(document).ready(function(){
		storage.removeItem("smde_simplemde1");
	});
	$(document).ready(function(){
		$("#regBtn").click(function(){
			if(confirm("등록하시겠습니까?")){
				if($("[name=adTitle]").val()==""){
					alert("제목은 필수항목입니다.")
					$("[name=adTitle]").focus();
					return;
				}
				if($("[name=adDept]").val()==""){
					alert("부서는 필수항목입니다.")
					$("[name=adTitle]").focus();
					return;
				}
				if($("[name=adContent]").val()==""){
					alert("내용은 필수항목입니다.")
					$("[name=adContent]").focus();
					return;
				}
				$("[name=adUiId]").val($("#selAdUiId option:selected").val());
				if($("form").submit()){

				}
			}
		});
	});
	$("#cancelBtn").click(function(){
		alert("결재관리 페이지로 이동하시겠습니까?");
		location.href="${path}/appd.do?method=list";
	});
	</script>
</html>