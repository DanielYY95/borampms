<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <c:set var="path" value="${pageContext.request.contextPath }" />
            <fmt:requestEncoding value="utf-8" />
            <!DOCTYPE html>
            <%-- --%>
                <html>

                <head>
                    <meta charset="UTF-8">
                    <title>Insert title here</title>
                    <!-- App favicon -->
                    <link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">

                    <!-- App css -->
                    <link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
                    <link href="${path}/tools/project_assets/css/app-creative.min.css" rel="stylesheet" type="text/css"
                        id="app-style" />

                    <!-- jquery 라이브러리 -->
                    <script src="${path}/tools/jquery-3.6.0.js"></script>



                    <script type="text/javascript">
                        let msg = '${msg}';

                        if (msg != '') {
                            alert(msg);
                        }



                    </script>
                    <style>
                        .container {
                            width: 70%;
                        }

                        .input-group-prepend {
                            width: 20%;
                        }

                        .input-group-text {
                            width: 100%;
                            font-weight: bolder;
                        }
                    </style>

                </head>



                <body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid"
                    data-rightbar-onstart="true">
                    <!-- Begin page -->
                    <div class="wrapper">

                        <!-- ========== Left Sidebar Start ========== -->
                        <jsp:include page="../include/leftBar.jsp" flush="true" />


                        <!-- 왼쪽 사이드바 종료  -->


                        <!-- ============================================================== -->
                        <!-- Start Page Content here -->
                        <!-- ============================================================== -->

                              <div class="content-page">
                            <div class="content">

								  <jsp:include page="../include/headerBar.jsp" flush="true" />

                                    <!-- start page title -->
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="page-title-box">

                                                <h4 class="page-title">업무 상세정보</h4>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end page title -->

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <div>
                                                        <ul class="nav nav-tabs nav-bordered mb-3"
                                                            style="display: flex; justify-content: space-around;">
                                                            <li class="nav-item">
                                                                <!-- a링크에서  data-bs-toggle="tab" 뺐음-->
                                                                <a href="${path}/taskDetail.do" aria-expanded="true"
                                                                    class="nav-link">
                                                                    업무정보
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="${path}/taskWbs.do" aria-expanded="true"
                                                                    class="nav-link">
                                                                    WBS
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="${path}/toFrm.do?" aria-expanded="true"
                                                                    class="nav-link">
                                                                    산출물
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="${path}/taskIssue.do?" aria-expanded="true" class="nav-link active">
                                                                    이슈
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="${path}/project/task/taskGuide.html"
                                                                    aria-expanded="true" class="nav-link">
                                                                    가이드
                                                                </a>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a href="${path}/project/task/taskHistory.html"
                                                                    aria-expanded="true" class="nav-link">
                                                                    히스토리
                                                                </a>
                                                            </li>
                                                        </ul> <!-- end nav-->
                                                    </div>


                                <!-- Start Content-->
                           <div class="container-fluid">
								<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-body" id="form-card-body">
									<div class="card-title" id="card-title-reg"><h4>이슈 등록</h4></div>
						
									<div class="tab-content">	
										<form id="isRegForm" method="post">	
										<div class="row justify-content-between">	
											<input type="hidden" name="uiId" value="${user_info.uiId }"/>	
											<input type="hidden" name="tiWriter" value="${user_info.uiName }"/>	
											
											<div class="col">
												<label class="form-label col-form-label">이슈 내용</label>
												<input class="form-control" placeholder="이슈 내용" name="tiContent" required/>
											</div>
											<div class="col">
												<label class="form-label col-form-label">업무담당자</label>
											<select id="chargeUpt"  name="tiCharge" class="select2 form-control select2-multiple"
												 required="" data-toggle="select2" multiple="multiple" data-placeholder="업무담당자 지정">
												<optgroup label="개발1팀">
											    <option value="개발1팀 양초명">개발1팀 양초명</option>
											    <option value="개발1팀 조민혁">개발1팀 조민혁</option>
											
											</optgroup>
											  	<optgroup label="개발2팀">
											    <option value="개발2팀 한가람">개발2팀 한가람</option>
											    <option value="개발2팀 김효은">개발2팀 김효은</option>
											    <option value="개발2팀 전지원">개발2팀 전지원</option>
											
											</optgroup>
											
											 <optgroup label="인사팀">
											
											    <option value="인사팀 김소월">인사팀 양초명</option>
											    <option value="인사팀 한가람">인사팀 한가람</option>
											    <option value="인사팀 김효은">인사팀 김효은</option>
											</optgroup>
											
											<optgroup label="기획팀">
											    <option value="기획팀 조민혁">기획팀 양현수</option>
											    <option value="기획팀 전지원">기획팀 전지원</option>
											</optgroup>
											
											<optgroup label="디자인팀">
											    <option value="디자인팀 조민혁">디자인팀 조민혁</option>
											    <option value="디자인팀 전지원">디자인팀 전지원</option>
											</optgroup>
											
											
											<optgroup label="마케팅팀">
											    <option value="마케팅팀 양초명">마케팅팀 양초명</option>
											    <option value="마케팅팀 양현수">마케팅팀 양현수</option>
											   
											
											</optgroup>
											
											
											</select>
											</div>
											<div class="col">
												<label class="form-label col-form-label">우선순위</label>
												<select class="form-control" name="tiPriority" required>
													<option value="">우선순위</option>
													<option value="중요">중요</option>
													<option value="보통">보통</option>
													<option value="낮음">낮음</option>
												</select>
											</div>
											<div class="col">
												<label class="form-label col-form-label">마감일</label>
												<input class="form-control" type="date" name="tiDuedate" required/>
											</div>
											<div class="d-grid gap-2 col-sm-2 col-lg-1 float-end">
												<button type="button" class="btn btn-primary" id="isRegFormBtn">등록</button>
											</div>
										</div>
										</form>
									</div>
								</div>
								<!-- end card-body-->
							</div>
							<!-- end card-->
							<div class="card">
								<div class="card-body">
								
									<div class="card-title"><h4>이슈 목록</h4></div>	
										<div class="row">	
											<form id="isSchForm" method="post" action="${path}/issue.do?method=list">	
											<input type="hidden" name="curPage" value="1"/>	
											<div class="row justify-content-between">	
												<div class="col">	
													<div class="input-group">	
														<label class="input-group-text"><i class="fa fa-search"></i></label>	
														<input type="text" class="form-control" placeholder="이슈 내용" name="schContent">	
													</div>	
												</div>	
												<div class="col">	
													<div class="input-group">	
														<label class="input-group-text"><i class="fa fa-search"></i></label>	
														<input type="text" class="form-control" placeholder="담당자" name="schCharge">	
													</div>	
												</div>	
												<div class="col">	
													<div class="input-group">	
														<label class="input-group-text"><i class="fa fa-search"></i></label>	
														<select class="form-control" name="schPriority">	
															<option value="" selected>우선순위</option>	
															<option value="중요">중요</option>	
															<option value="보통">보통</option>	
															<option value="낮음">낮음</option>	
														</select>	
													</div>	
														
												</div>	
												<div class="col">	
													<div class="input-group">	
														<label class="input-group-text"><i class="fa fa-search"></i></label>	
														<input class="form-control" type="date" name="schDuedate"/>	
													</div>	
												</div>	
											</div>	
											</form>	
										</div>
								
								
								
								
									<div class="row my-3">
										<div class="table-responsive">
											<table class="table table-centered table-nowrap mb-0 text-center">
												<thead class="table-light">
													<tr>
														<th>번호</th>
														<th>등록자</th>
														<th>이슈 내용</th>
														<th>담당자</th>
														<th>우선순위</th>
														<th>마감일</th>
														<th style="width: 125px;">수정/삭제</th>
													</tr>
												</thead>
												<tbody id="issue-tbody">
													<c:forEach var="issue" items="${issuelist}">
													<tr>
														<td>${issue.cnt }</td>
														<td>${issue.tiWriter }</td>
														<td>${issue.tiContent }</td>
														<td>
														<c:forEach var="charge" items="${issue.tiCharge.split(',') }" varStatus="status">
															${charge }<br>
														</c:forEach>
														</td>
														<td>
															<div class=
																<c:choose>
																	<c:when test="${issue.tiPriority eq '중요' }">"badge bg-danger"</c:when>
																	<c:when test="${issue.tiPriority eq '보통' }">"badge bg-info"</c:when>
																	<c:when test="${issue.tiPriority eq '낮음' }">"badge bg-secondary"</c:when>
																</c:choose> >
																${issue.tiPriority }
															</div>
														</td>
														<td>${issue.tiDuedate }</td>
														<td>
															<a onclick="javascript:setUpt('${issue.tiWriter}', '${issue.tiId }')" class="action-icon">
																<i class="mdi mdi-square-edit-outline"></i>
															</a>
															<a onclick="javascript:setDel('${issue.tiWriter}', '${issue.tiId }')" class="action-icon">
																<i class="mdi mdi-delete"></i>
															</a>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>	
										</div>	
									</div>	
										
									<!-- 페이징 블록 -->	
									<div class="row gy-1 my-3">	
										<div class="col justify-content-end">	
											<ul class="pagination pagination-rounded"> 	
												<li class="page-item">	
											  		<a class="page-link" href="javascript:goPage(${issueSch.firstBlock != 1 ? issueSch.lastBlock-1 : 1})">Previous</a>	
											  	</li>	
											  	<c:forEach var="cnt" begin="${issueSch.firstBlock}" end="${issueSch.lastBlock}">	
											  	<li class="page-item ${cnt == issueSch.curPage ? 'active' : ''}">	
											  		<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>	
											  	</li>	
											  	</c:forEach>	
											  	<li class="page-item">	
											  		<a class="page-link"	
											  			href="javascript:goPage(${issueSch.firstBlock != issueSch.pageCount ? issueSch.lastBlock+1 : issueSch.lastBlock})">Next</a>	
											  	</li>	
													</ul>	
												</div>	
											</div>	
										</div>	
										<!-- end card-body-->	
									</div>	
									<!-- end card-->	
								</div>	
								<!-- end col -->	
							</div>	
							<!-- end row -->	
						</div>	
						<!-- /.container -->	
										
									
                                 </div>

                             </div> <!-- end padding-->
                         </div>
                     </div>
                 </div>
                 <jsp:include page="../include/rightBar_footer.jsp" flush="true" />

             </div>
         </div><!-- End Wrapper -->


                        <!-- plugin js -->
                        <script src="${path}/tools/project_assets/js/vendor/dropzone.min.js"></script>
                        <!-- init js -->
                        <script src="${path}/tools/project_assets/js/ui/component.fileupload.js"></script>

                        <script>
                            // 파일 유효성 체크
                            function chkFile() {

                                if ($("[name=toReport]").val() != "") {
                                    $("form").submit();
                                    $("[name=toReport]").val("");
                                } else {
                                    alert("파일을 선택해주세요.")
                                    return;
                                }

                            }


          
                            function downFile(fname) {
                                if(confirm("다운로드할 파일:" + fname)){
                                	location.href="${path}/download.do?fname="+fname;
                                }
                            }
                            
                            function deleteFile(fname) {
                                if(confirm("삭제하시겠습니까?")){
                                    location.href="${path}/toDelete.do?toFile="+fname;
                                }
                            }
                            
                            


                        </script>


                </body>

                </html>