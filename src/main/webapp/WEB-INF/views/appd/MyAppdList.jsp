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
		<!-- jstree css -->
		<link href="${path}/tools/main_assets/css/vendor/jstree.min.css" rel="stylesheet" type="text/css">
        <!-- App css -->
        <link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="${path}/tools/main_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style"/>

		<link
		    rel="stylesheet"
		    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"
		  />
		<!-- jquery 라이브러리 -->
 		<script src="${path}/tools/jquery-3.6.0.js"></script>
        <!-- css -->
        <style>
        	#del-btn{
        		border:0;
        		background:white;
        	}
        	#upt-btn{
        		border:0;
        		background:white;
        	}
        	.pagination-margin-top{
        		margin-top:10px;
        	}
        	.btn{
        		float:right;
        	}
        	.jstree-default .jstree-clicked, .jstree-default .jstree-hovered {
			    background: white;
			    -webkit-box-shadow: none;
			    box-shadow: none;
			}
			.jstree-default .jstree-hovered {
			    background: #eef2f7;
			    -webkit-box-shadow: none;
			    box-shadow: none;
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

                    <!-- Start Content-->
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
                                    <h4 class="page-title">문서관리</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">

                            <!-- Right Sidebar -->
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <!-- Left sidebar -->
                                        <div class="page-aside-left">
                                        	<!-- 공유 문서함 -->
                                        	<h4 class="header-title">공유문서함</h4>
											 <div id="jstree-2" class="jstree jstree-1 jstree-default" role="tree" aria-multiselectable="true" tabindex="0" aria-activedescendant="j1_2" aria-busy="false">
											 	<ul class="jstree-container-ul jstree-children" role="group">
											        <li role="none" id="j1_11" class="jstree-node jstree-open"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												        <a class="jstree-anchor" href="javascript:searchDocList('');" tabindex="-1" role="treeitem" aria-selected="false" aria-level="1" aria-expanded="true" id="j1_11_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												        	결재 문서함
												       	</a>
											       		<ul role="group" class="jstree-children" style="">
											       			<li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_12" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												       			<a class="jstree-anchor jstree-clicked" href="javascript:searchDocList('01');" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_12_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												                결재대기
												                </a>
											                </li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_13" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												                <a class="jstree-anchor  jstree-clicked" href="javascript:searchDocList('02');" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_13_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												                반려
												                </a>
											                </li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_14" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												       			<a class="jstree-anchor jstree-clicked" href="javascript:searchDocList('03');" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_14_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												                결재완료
												                </a>
											                </li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_15" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												                <a class="jstree-anchor  jstree-clicked" href="javascript:searchDocList('04');" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_15_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												                내 결재함
												                </a>
											                </li>
											            </ul>
											        </li>
											    </ul>
											 </div>
                                        </div>
                                        <!-- End Left sidebar -->
											<!-- 임의로 만든 표 -->
	                                        <div class="page-aside-right">
	                                            <div class="mt-3">
	                                                <h5 class="mb-3">결재 문서함</h5>
	                                                <ul class="nav nav-tabs nav-bordered mb-3" style="display: flex; justify-content: space-around;">
							                           <li class="nav-item"> <!-- a링크에서  data-bs-toggle="tab" 뺐음-->
							                               <a href="javascript:searchDocList('04')"  aria-expanded="true" class="nav-link active">
							                               	 내 등록 결재
							                               </a>
							                           </li>
							                           <li class="nav-item">
							                               <a href="javascript:searchDocList('05')"  aria-expanded="true" class="nav-link">
							                                 내 담당 결재
							                               </a>
							                           </li>
							                       </ul>
	                                                <form id="frm01" method="post" action="${path}/appd.do?method=list">
	                                                	<input type="hidden" name="searchDocStauts" id="searchDocStauts" value=""/>
	                                                	<input type="hidden" name="curPage" value="1"/>
	                               						<div class="col-lg-4" style="text-align:center;">
	                               						<!-- 작성자 조회 -->
	                               						<div class="input-group">
		                               						<input type="text" id="simpleinput" class="form-control" name="adWriter" value="${appdDocSch.adWriter}" placeholder="작성자">
		                               						<button class="input-group-text btn-primary" type="submit">조회</button>
		                               					</div>
		                               					</div>
	                               					</form>
	                               					<br>
                              						 	<!-- 리스트형 게시물 -->
	    											<div class="table-responsive">
	                                                    <table class="table table-centered table-nowrap mb-0" style="text-align:center;">
	                                                        <thead class="table-light">
	                                                            <tr>
	                                                                <th class="border-0">번호</th>
	                                                                <th class="border-0">문서명</th>
	                                                                <th class="border-0">작성자</th>
	                                                                <th class="border-0">작성일</th>
	                                                                <th class="border-0">결재상태</th>
	                                                            </tr>
	                                                        </thead>
	                                                        <tbody>
	                                                        	<c:forEach var="appddoc" items="${adList}">
	                                                            <tr>
	                                                                <td onclick="detail(${appddoc.adId})">
	                                                                    <span class="ms-2 fw-semibold">${appddoc.adId}</span>
	                                                                </td>
	                                                                <td onclick="detail(${appddoc.adId})">
	                                                                    <span class="font-12"><a href="javascript: void(0);" class="text-reset">${appddoc.adTitle}</a></span>
	                                                                </td>
	                                                                <td onclick="detail(${appddoc.adId})">${appddoc.adWriter}</td>
																	<td onclick="detail(${appddoc.adId})"><fmt:formatDate value="${appddoc.adRegdate}" pattern="yyyy-MM-dd"/></td>
	                                                                <td onclick="detail(${appddoc.adAppd})">${appddoc.adAppd}</td>
	                                                            </tr>
	                                                            </c:forEach>
	                                                        </tbody>
	                                                    </table>
	                                                    <!-- 페이징 처리 -->
														<nav class="pagination-margin-top">
														    <ul class="pagination pagination-rounded mb-0 justify-content-center">
														        <li class="page-item">
														            <a class="page-link" href="javascript:goPage(${appdDocSch.firstBlock!=1?appdDocSch.firstBlock-1:1})" aria-label="Previous">
														                <span aria-hidden="true">&laquo;</span>
														            </a>
														        </li>
														        <c:forEach var="cnt" begin="${appdDocSch.firstBlock}" end="${appdDocSch.lastBlock}">
														        	<li class="page-item ${cnt==appdDocSch.curPage?'active':''}"> <!-- 클릭한 현재 페이지 번호 -->
																	<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
																</c:forEach>
														        <li class="page-item">
														            <a class="page-link" href="javascript:goPage(${appdDocSch.lastBlock!=appdDocSch.pageCount?appdDocSch.lastBlock+1:appdDocSch.lastBlock})" aria-label="Next">
														                <span aria-hidden="true">&raquo;</span>
														            </a>
														        </li>
														    </ul>
														</nav>
														<!-- 문서등록 버튼 -->
														<button id="Doc-regBtn" type="button" class="btn btn-primary">등록</button>
                                                	</div>
                                            	</div>
                                        	</div> <!-- end .mt-3-->

                                        </div>
                                        <!-- end inbox-rightbar-->
                                    </div>
                                    <!-- end card-body -->
                                    <div class="clearfix"></div>
                                </div> <!-- end card-box -->

                            </div> <!-- end Col -->
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
        <!-- END wrapper -->

		<!-- jstree js -->
		<script src="${path}/tools/main_assets/js/vendor/jstree.min.js"></script>
		<script src="${path}/tools/main_assets/js/pages/demo.jstree.js"></script>
		<!-- SimpleMDE js -->
		<script src="${path}/tools/main_assets/js/vendor/simplemde.min.js"></script>
		<!-- SimpleMDE demo -->
		<script src="${path}/tools/main_assets/js/pages/demo.simplemde.js"></script>
    </body>
	<script>
	/* 부서 공유문서함 클릭시 */
	function searchDocList(type){
		$('#searchDocStauts').val(type);
		$('#frm01').submit();
	}
	/* 등록 버튼 클릭 시(등록 페이지로 이동) */
	$("#Doc-regBtn").click(function(){
		location.href="${path}//appd.do?method=insertFrm";
	});
	/* 페이징 처리 */
	function goPage(no){
		$("[name=curPage]").val(no);
		$("#frm01").submit();
	}
	/* 클릭 시, ddId의 값을 controller에 요청값을 전달 */
	function detail(adId){
		location.href="${path}/appd.do?method=detail&adId="+adId;
	}
	</script>
</html>