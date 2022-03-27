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
	<title>업무 목록 - borampms</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
	<meta content="Coderthemes" name="author" />
	<!-- App favicon -->
	<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>

	<!-- App css -->
	<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
	<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />

	<script src="${path}/a00_com/jquery-3.6.0.js"></script>

    <style>
        tr>th, tr>td{
            text-align: center;

        }
    


    </style>



</head>


<!-- 양념한 부분 msg관련 js와 detail.
	양념하고 싶은 거 : taskUser 활용 (조회리스트)
 -->

<script>
	let msg = '${msg}';
	
	if(msg!=''){
		alert(msg);
	}
	msg='';

</script>

<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid"
	data-rightbar-onstart="true">
	
	
	<!-- Begin page -->
	<div class="wrapper">
		<!-- ========== Left Sidebar Start ========== -->
			<jsp:include page="../include/leftBar.jsp" 
						flush="true"/>
		<!-- ========== Left Sidebar end ========== -->
		
		
		
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">

				<jsp:include page="../include/headerBar.jsp" 
		        				flush="true"/>
				
				<!-- end Topbar -->

				<!-- Start Content-->
				 <div class="row">
                            <div class="col-12">
                                <div class="card">
                                	<h3 class="fw-bold text-center">관리자페이지</h3>
                                    <div class="card-body">
                                    	 <div>
                                            <ul class="nav nav-tabs nav-bordered mb-3" style="display: flex; justify-content: space-around;">
                                                <li class="nav-item"> <!-- a링크에서  data-bs-toggle="tab" 뺐음-->
                                                    <a href="${path}/manager.do?method=user"  aria-expanded="true" class="nav-link">
                                                    	회원관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/manager.do?method=prj"  aria-expanded="true" class="nav-link active">
                                                        프로젝트관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/manager.do?method=dept"  aria-expanded="true" class="nav-link">
                                                        부서관리
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="" aria-expanded="true" class="nav-link">
                                                        이메일 발송
                                                    </a>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="${path}/project/task/taskGuide.html"  aria-expanded="true" class="nav-link">
                                                        설정
                                                    </a>
                                                </li>
                                              
                                            </ul> <!-- end nav-->
                                        </div>	

										<form class=""  method="post">
											<div class="row d-flex justify-content-between">
											  <div class="d-flex col-3">
												  <div class="">
													<select class="form-select" id="search-select">
														<option selected>프로젝트명</option>
														<option>프로젝트 등록자</option>
													</select>
												  </div>
												  <div class="">
													<input type="search" class="form-control" id="search-word" placeholder="검색">
												  </div>
											  
											  </div>
											  <div class="d-flex justify-content-between col-3">
												  
												  <div>
													<label for="startdate-form" class="col-form-label">시작일</label>
												  </div>
												  <div>
													<input class="form-control" type="date" />
												  </div>
												  <div>
													<label for="enddate-form" class="col-form-label">마감일</label>
												  </div>
												  <div >
													<input class="form-control" type="date" />
												  </div>

											  </div>
										  </div>
									  </form>

										<br>
                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                                <thead class="table-light">
                                                    <tr class="column">
                                                        <th style="width: 20px;">
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input" id="customCheck1">
                                                                <label class="form-check-label" for="customCheck1">&nbsp;</label>
                                                            </div>
                                                        </th>
                                                        <th>프로젝트고유번호</th>
                                                         <th>프로젝트 등록자</th>
                                                        <th>프로젝트명</th>
                                                        <th>프로젝트 등록일</th>
                                                        <th>프로젝트 시작일</th>
                                                        <th>프로젝트 마감일</th>
                                                        <th>프로젝트상태</th>  
                                                        <th>수정</th>          	

                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="prj" items="${prjList}">
	                                                    <tr>
	                                                        <td>
	                                                            <div class="form-check">
	                                                                <input type="checkbox" class="form-check-input" id="customCheck2">
	                                                                <label class="form-check-label" for="customCheck2">&nbsp;</label>
	                                                            </div>
	                                                        </td>
	                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">${prj.piId}</a> </td>
	                                                        <td>${prj.piWriter}</td>
	                                                        <td>${prj.piTitle}</td>
	                                                        <td>${prj.piRegdate}</td>
	                                                        <td>
	                                                            <p class="mb-0 txt-muted">${prj.piStartdate}</p>
	                                                        </td>
	                                                        <td>
	                                                            <p class="mb-0 txt-muted">${prj.piDuedate}</p>
	                                                        </td>
	                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">${prj.piStatus}</span></h5></td>
	                                                        <td>
	                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-square-edit-outline"></i></a>
	                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
	                                                        </td>
	                                                    </tr>
                                                    </c:forEach>
                                                    

                                                </tbody>
                                            </table>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div> <!-- end row --> 
			<!-- end row -->
			
		</div>
		
		<!-- ============================================================== -->
		<!-- End Page content -->
		
        <jsp:include page="../include/rightBar_footer.jsp" 
					flush="true"/>
		
	</div>
	</div>
	<!-- wrapper -->



		



			
			


<script>

	
</script>


</body>
</html>