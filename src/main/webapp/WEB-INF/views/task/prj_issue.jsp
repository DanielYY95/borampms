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

                                                <h4 class="page-title">리스크관리</h4>
                                                
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end page title -->

                                    <div class="row">
                                        <div class="col-12">
                                            <div class="card">
                                                <div class="card-body">
                                      

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
											<input type="hidden" name="iWriter" value="${user_info.uiName }"/>	
											<input type="hidden" name="iId" value=""/>		
											
											<div class="col">
												<label class="form-label col-form-label">이슈 내용</label>
												<input class="form-control" placeholder="이슈 내용" name="iContent" required/>
											</div>
											<div class="col">
												<label class="form-label col-form-label">업무담당자</label> 
											<select id="chargeUpt" name="iCharge" class="select2 form-control select2-multiple"
												 required="" data-toggle="select2"  multiple="multiple" data-placeholder="업무담당자 지정"> 
												 
									
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
												<select class="form-control" name="iPriority" required>
													<option value="">우선순위</option>
													<option value="중요">중요</option>
													<option value="보통">보통</option>
													<option value="낮음">낮음</option>
												</select>
											</div>
											<div class="col">
												<label class="form-label col-form-label">마감일</label>
												<input class="form-control" type="date" name="iDuedate" required/>
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
											<form id="isSchForm" method="post" action="${path}/risk.do?method=list">	
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
														<td>${issue.uiName }</td>
														<td>${issue.iContent }</td>
														<td>
														<c:forEach var="charge" items="${issue.iCharge.split(',') }" varStatus="status">
															${charge }<br>
														</c:forEach>
														</td>
														<td>
															<div class=
																<c:choose>
																	<c:when test="${issue.iPriority eq '중요' }">"badge bg-danger"</c:when>
																	<c:when test="${issue.iPriority eq '보통' }">"badge bg-info"</c:when>
																	<c:when test="${issue.iPriority eq '낮음' }">"badge bg-secondary"</c:when>
																</c:choose> >
																${issue.iPriority }
															</div>
														</td>
														<td>${issue.iDuedate }</td>
														<td>
															<c:if test="${issue.iWriter eq user_info.uiId }">
																<a onclick="javascript:setUpt('${issue.iId }')" class="action-icon">
																	<i class="mdi mdi-square-edit-outline"></i>
																</a>
																<a onclick="javascript:setDel('${issue.iId }')" class="action-icon">
																	<i class="mdi mdi-delete"></i>
																</a>
															</c:if>
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
											  		<a class="page-link" href="javascript:goPage(${prjIssueSch.firstBlock != 1 ? prjIssueSch.lastBlock-1 : 1})">Previous</a>	
											  	</li>	
											  	<c:forEach var="cnt" begin="${prjIssueSch.firstBlock}" end="${prjIssueSch.lastBlock}">	
											  	<li class="page-item ${cnt == prjIssueSch.curPage ? 'active' : ''}">	
											  		<a class="page-link" href="javascript:goPage(${cnt})">${cnt}</a>	
											  	</li>	
											  	</c:forEach>	
											  	<li class="page-item">	
											  		<a class="page-link"	
											  			href="javascript:goPage(${prjIssueSch.firstBlock != prjIssueSch.pageCount ? prjIssueSch.lastBlock+1 : prjIssueSch.lastBlock})">Next</a>	
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


            
       <script>
				let logUiId = "${user_info.uiId}";
				$(document).ready(function() {
					// 검색이 실행되어 화면이 새로고침되었더라도 검색 키워드가 입력된 상태로 설정
					let schContent = "${issueSch.tiContent}";
					let schCharge = "${issueSch.tiCharge}";
					let schPriority = "${issueSch.tiPriority}";
					let schDdate = "${issueSch.tiDuedate}";
					
					if(schContent != "") {
						$("[name=schContent]").val(schContent);
					}
					if(schCharge != "") {
						$("[name=schCharge]").val(schCharge);
					}
					if(schPriority != "") {
						$("[name=schPriority]").val(schPriority);
					}
					if(schDdate != "") {
						$("[name=schDuedate]").val(schDdate);
					}
					
				});
				
				
				// 페이지 블록의 번호를 클릭하여 해당 번호 페이지로 이동
				function goPage(no){		
					$("[name=curPage]").val(no);
					$("#isSchForm").submit();
				}
				
				
				// 검색 키워드 입력 후 엔터 키를 누르거나, 검색일자를 바꾸었을 때 검색 실행
				$("[name=schContent], [name=schCharge]").keyup(function(key) {
					if(key.keyCode == 13) {
						$("#isSchForm").submit();
					}
				});
				$("[name=schPriority], [name=schDuedate]").change(function() {
					$("#isSchForm").submit();
				});
				
				
				// 수정 및 삭제 아이콘 클릭 시 현재 로그인 유저와 등록자가 같은지 확인하고
				// 등록자 본인인 경우 등록 폼 -> 수정 폼으로 스타일 적용
				function setUpt(iId) {
					
					$.ajax({
						url: "${path}/risk.do?method=detail",
						type: "get",
						dataType: "json",
						data: "iId=" + iId,
						success: function (data) {
							issueDetail = data.issueDetail;
		
							$("[name=iContent]").val(issueDetail.iContent);
							$("[name=iPriority]").val(issueDetail.iPriority);
							let iCharge = issueDetail.iCharge;
							
							let chargeList = iCharge.split(",");
							
							$("[name=iCharge]").val(chargeList); // 배열로 만든다음 넣으면 되야하는게 맞는디..
							
							$("[name=iDuedate]").val(issueDetail.iDuedate);
							$("[name=iId]").val(issueDetail.iId);
							
					
						}
					});
					
						$("#form-card-body").addClass("bg-secondary");
						$(".col-form-label").addClass("text-white");
						$("#card-title-reg h4").text("이슈 수정").css("color", "white");
						$("#isRegFormBtn").text("수정").attr("class", "btn btn-warning text-white");
					}
					
				
				
				// 삭제 아이콘 클릭 시, 아이콘이 포함된 이슈 행의 데이터를 삭제
				function setDel(iId) {
					
						if(confirm("삭제하시겠습니까?")) {
							location.href = "${path}/risk.do?method=delete&iId="+iId;
						}
					
				}
				
				// '등록' 버튼인 경우와 '수정' 버튼인 경우의 처리
				$("#isRegFormBtn").click(function() {
					// 등록/수정 전 유효성 검증
					if($("[name=iContent]").val() == null || $("[name=iContent]").val() == "") {
						alert("등록할 이슈 내용을 입력해주세요.");
					} else if($("[name=iCharge]").val() == null || $("[name=iCharge").val() == "") {
						alert("업무담당자를 지정해주세요.");
					} else if($("[name=iDuedate]").val() == null || $("[name=iDuedate]").val() == "") {
						alert("마감일을 지정해주세요.");
					} else if($("[name=iPriority]").val() == null || $("[name=iPriority]").val() == "") {
						alert("우선순위를 지정해주세요.");
					} else {
						// 등록/수정에 따른 form action 설정
						let params = $("#isRegFormBtn").text() == "등록" ? "insert" : "update";
						$("#isRegForm").attr("action", "${path}/risk.do?method="+params);
						
						
						if(confirm($("#isRegFormBtn").text()+"하시겠습니까?")) {
							$("#isRegForm").submit();
						}
					}
				});
				
				
				/* => controller에 남아있다. table body 구성하는 것처럼 페이징 만들어준다. 
				// ajax 활용 검색
				// 검색 키워드 입력, ajax 호출
				$("[name=schContent], [name=schCharge]").keyup(function() {
					setSchdata();	
					search(schdata);
				});
				$("[name=schDuedate], [name=schPriority]").change(function() {
					setSchdata();
					search(schdata);
				});
				// 검색 키워드 json 설정
				function setSchdata() {
					schdata.curPage = $("[name=curPage]").val();
					schdata.schContent = $("[name=schContent]").val();
					schdata.schCharge = $("[name=schCharge]").val();
					schdata.schPriority = $("[name=schPriority]").val();
					schdata.schDuedate = $("[name=schDuedate]").val();
				}
				// 검색(ajax)
				function search(schdata) {
					console.log(schdata);
					
					$.ajax({
						url:"${path}/issue.do?method=search",
						type:"get",
						data:schdata,
						dataType:"json",
						success:function(data) {
							console.log(data.schIssuelist);
							let html = "";
							
					    	$.each(data.schIssuelist, function(idx, sch) {
					    		let tiPriority = sch.tiPriority
					    		let settings = "badge";
					    		
					    		if(tiPriority == "중요") { settings = "badge bg-danger" }
					    		if(tiPriority == "보통") { settings = "badge bg-info" }
					    		if(tiPriority == "낮음") { settings = "badge bg-secondary" }
					    		
					 			html += "<tr>"
					 				+"<td>"+sch.cnt+"</td>"
					 				+"<td>"+sch.tiWriter+"</td>"
					 				+"<td>"+sch.tiContent+"</td>"
					 				+"<td>"+sch.tiCharge+"</td>"
					 				+"<td><div class='"+settings+"'>"+sch.tiPriority+"</div></td>"
					 				+"<td>"+sch.tiDuedate+"</td>"
					 				+"<td><a href='javascript:setUpt('"+sch.tiId+"');' class='action-icon'><i class='mdi mdi-square-edit-outline'></i></a>"
					 				+"<a href='javascript:delIssue('"+sch.tiId+"');' class='action-icon'><i class='mdi mdi-delete'></i></a></td>"
					 				+"</tr>";	
					 				
						 	});	
					 		$("#issue-tbody").html(html);
						},
						error:function(err) {
							console.log(err);
						}
					});
				}
				*/
			</script>



                </body>

                </html>