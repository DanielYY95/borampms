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
											 		<li role="none" id="j1_1" class="jstree-node jstree-open"><i class="jstree-icon jstree-ocl" role="presentation"></i>
											 			<a onclick="deptDoc('')" class="jstree-anchor" href="#" tabindex="-1" role="treeitem" aria-selected="false" aria-level="1" aria-expanded="true" id="j1_1_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
											            부서 공유문서함
											            </a>
											            <ul role="group" class="jstree-children" style="">
											            	<li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_2" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												            	<a onclick="devel1('개발1팀')" class="jstree-anchor jstree-clicked" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_2_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												               	개발1팀 
												               	</a>
											                </li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_3" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												                <a onclick="devel2('개발2팀')" class="jstree-anchor  jstree-clicked" href="javascript:;" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_3_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												                개발2팀 
												               	</a>
											               	</li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_4" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												               	<a onclick="person('인사팀')" class="jstree-anchor  jstree-clicked" href="javascript:;" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_4_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												               	인사팀 
												               	</a>
											                </li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_5" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												                <a onclick="plan('기획팀')" class="jstree-anchor  jstree-clicked" href="javascript:;" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_5_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												                기획팀 
												               	</a>
											                </li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_6" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												               	<a onclick="design('디자인팀')" class="jstree-anchor  jstree-clicked" href="javascript:;" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_6_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												              	디자인팀 
												               	</a>
											               	</li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_7" class="jstree-node  jstree-leaf jstree-last"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												               	<a onclick="marketing('마케팅팀')" class="jstree-anchor  jstree-clicked" href="javascript:;" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_7_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												            	마케팅팀 
												               	</a>
											               	</li>
											               </ul>
											        </li>
											        <li role="none" id="j1_8" class="jstree-node jstree-open"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												        <a class="jstree-anchor" href="#" tabindex="-1" role="treeitem" aria-selected="false" aria-level="1" aria-expanded="true" id="j1_8_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												        	공통 문서함
												       	</a>
											       		<ul role="group" class="jstree-children" style="">
											       			<li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_9" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												       			<a class="jstree-anchor jstree-clicked" href="javascript:;" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_9_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												                대외문서함 
												                </a>
											                </li>
											                <li role="none" data-jstree="{ &quot;selected&quot; : true }" id="j1_10" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
												                <a class="jstree-anchor  jstree-clicked" href="javascript:;" tabindex="-1" role="treeitem" aria-selected="true" aria-level="2" id="j1_10_anchor"><i class="jstree-icon jstree-themeicon dripicons-folder text-warning jstree-themeicon-custom" role="presentation"></i>
												                대내문서함 
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
	                                                <h5 class="mb-3">부서 공유문서함</h5>
		                                                <!-- 게시물 조회 -->
		                                                <form id="frm01" method="post" action="${path}/dept.do?method=list">
		                                                	<input type="hidden" name="curPage" value="1"/>
		                               						<div class="col-lg-4" style="text-align:center;">
		                               						<!-- 작성자 조회 -->
		                               						<div class="input-group">
			                               						<input type="text" id="simpleinput" class="form-control" name="ddWriter" value="${deptDocSch.ddWriter}" placeholder="작성자">
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
		                                                                <th class="border-0">제목</th>
		                                                                <th class="border-0">부서명</th>
		                                                                <th class="border-0">작성자</th>
		                                                                <th class="border-0">작성일</th>
		                                                                <th class="border-0">수정/삭제</th>
		                                                            </tr>
		                                                        </thead>
		                                                        <tbody>
		                                                        	<c:forEach var="deptdoc" items="${ddList}">
		                                                            <tr>
		                                                                <td onclick="detail(${deptdoc.ddId})">
		                                                                    <span class="ms-2 fw-semibold">${deptdoc.ddId}</span>
		                                                                </td>
		                                                                <td onclick="detail(${deptdoc.ddId})">
		                                                                    <span class="font-12"><a href="javascript: void(0);" class="text-reset">${deptdoc.ddTitle}</a></span>
		                                                                </td>
		                                                                <td onclick="detail(${deptdoc.ddId})">${deptdoc.ddDept}</td>
		                                                                <td onclick="detail(${deptdoc.ddId})">${deptdoc.ddWriter}</td>
		                                                                <td onclick="detail(${deptdoc.ddId})"><fmt:formatDate value="${deptdoc.ddRegdate}" pattern="yyyy-MM-dd"/></td>
		                                                            	<c:choose>
																			<c:when test="${deptdoc.ddDept=='개발1팀'&&deptdoc.ddWriter=='조민혁'}">
																				<td>
							 														<button onclick="update(${deptdoc.ddId})" id="upt-btn"><i class="dripicons-pencil"></i></button> |
																					<button onclick="delete1(${deptdoc.ddId})" id="del-btn"><i class="dripicons-trash"></i></button>
																				</td>
																			</c:when>
																		</c:choose>
		                                                            </tr>
		                                                            </c:forEach>
		                                                        </tbody>
		                                                    </table>
		                                                    <!-- 페이징 처리 -->
															<nav class="pagination-margin-top">
															    <ul class="pagination pagination-rounded mb-0 justify-content-center">
															        <li class="page-item">
															            <a class="page-link" href="javascript:goPage(${deptDocSch.firstBlock!=1?deptDocSch.firstBlock-1:1})" aria-label="Previous">
															                <span aria-hidden="true">&laquo;</span>
															            </a>
															        </li>
															        <c:forEach var="cnt" begin="${deptDocSch.firstBlock}" end="${deptDocSch.lastBlock}">
																		<li class="page-item ${cnt==deptDocSch.curPage?'active':''}"> <!-- 클릭한 현재 페이지 번호 -->
																			<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a></li>
																	</c:forEach>
															        <li class="page-item">
															            <a class="page-link" href="javascript:goPage(${deptDocSch.lastBlock!=deptDocSch.pageCount?deptDocSch.lastBlock+1:deptDocSch.lastBlock})" aria-label="Next">
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


        </div>
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
	/* 휴지통 버튼(삭제) 클릭 시 */
	function delete1(ddId){
		if(!confirm("삭제할 경우 복구가 불가능합니다. \n삭제하시겠습니까?")){
			location.href="${path}/dept.do?method=list";
		}
		else{
			location.href="${path}/dept.do?method=del&ddId="+ddId;	
		}
	}
	/* 부서 공유문서함 클릭시 */
	function deptDoc(deptDoc){
		location.href="${path}/dept.do?method=list&ddDept="+deptDoc;
	}
	/* 개발1팀 클릭시 */
	function devel1(devel1){
		location.href="${path}/dept.do?method=list&ddDept="+devel1;
	}
	/* 개발2팀 클릭시 */
	function devel2(devel2){
		location.href="${path}/dept.do?method=list&ddDept="+devel2;
	}
	/* 인사팀 클릭시 */
	function person(person){
		location.href="${path}/dept.do?method=list&ddDept="+person;
	}
	/* 기획팀 클릭시 */
	function plan(plan){
		location.href="${path}/dept.do?method=list&ddDept="+plan;
	}
	/* 디자인 클릭시 */
	function design(design){
		location.href="${path}/dept.do?method=list&ddDept="+design;
	}
	/* 마케팅 클릭시 */
	function marketing(marketing){
		location.href="${path}/dept.do?method=list&ddDept="+marketing;
	}
	/* 등록 버튼 클릭 시(등록 페이지로 이동) */
	$("#Doc-regBtn").click(function(){
		location.href="${path}//dept.do?method=insertFrm";
	});	
	/* 페이징 처리 */
	function goPage(no){
		$("[name=curPage]").val(no);
		$("#frm01").submit();
	}
	/* 클릭 시, ddId의 값을 controller에 요청값을 전달 */
	function detail(ddId){
		location.href="${path}/dept.do?method=detail&ddId="+ddId;
	}
	/* 연필 버튼(수정) 클릭 */
	function update(ddId){
		location.href="${path}/dept.do?method=uptPage&ddId="+ddId;
	}
	
	</script>
</html>