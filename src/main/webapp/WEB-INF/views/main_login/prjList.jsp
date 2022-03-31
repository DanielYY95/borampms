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
        <title>내 프로젝트 목록 - borampms</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="${path}/tools/main_assets/images/favicon.ico">

        <!-- App css -->
        <link href="${path}/tools/main_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="${path}/tools/main_assets/css/app-creative.min.css" rel="stylesheet" type="text/css" id="app-style" />

		 <!-- jquery 라이브러리 -->
		 <script src="${path}/tools/jquery-3.6.0.js"></script>
 
		
    </head>

	
    <body class="loading" data-layout-color="light"  data-layout="topnav" data-layout-mode="fluid" data-rightbar-onstart="true">
        <!-- Begin page -->
        <div class="wrapper">

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                	
                	<div>
                		<a href="${path}/main.do" class="logo text-center logo-light" style="background-color:#313a46">
							<span class="logo-lg">
								<img src="${path}/tools/project_assets/images/boram_dark.png" alt="" height="45">
							</span>
							<span class="logo-sm">
								<img src="${path}/tools/project_assets/images/boram_sm_dark.png" alt="" height="35">
							</span>
						</a>
			                	
                	</div>
                	
                	<jsp:include page="../include/headerBar.jsp" flush="true"/>
				
        			<br>

                    <!-- Start Content-->
                    <div class="container-fluid">

                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                   	
                                    <h4 class="page-title">프로젝트 목록</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->

                        <div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="row mb-2">
                                            <div class="col-xl-9">
                                                <form class=""  method="post">
                                                    <div class="row d-flex justify-content-between">
                                                      <div class="d-flex col-5">
                                                          <div class="">
                                                            <select class="form-select" id="search-select">
                                                                <option selected>프로젝트명</option>
                                                                <option>프로젝트 관리자</option>
                                                            </select>
                                                          </div>
                                                          <div class="">
                                                            <input type="search" class="form-control" id="search-word" placeholder="검색">
                                                          </div>
                                                          <div class="">
                                                           <label class="col-form-label p-1" style="width: 100px;" >프로젝트상태</label>
                                                          </div>
                                                          <div class="">
                                                            <select class="form-select" id="search-select">
                                                                <option selected>전체</option>
                                                                <option>진행전</option>
                                                                <option>진행중</option>
                                                                <option>지연</option>
                                                                <option>진행완료</option>
                                                            </select>
                                                          </div>
                                                      
                                                      </div>
                                                      <div class="d-flex justify-content-between col-3">
                                                          
                                                          <div>
                                                            <label for="startdate-form" class="col-form-label p-1" style="width: 60px;" >시작일</label>
                                                          </div>
                                                          <div>
                                                            <input id="startdate-form" class="form-control" type="date" />
                                                          </div>
                                                          <div>
                                                            <label for="duedate-form" class="col-form-label p-1" style="width: 60px;">마감일</label>
                                                          </div>
                                                          <div >
                                                            <input id="duedate-form" class="form-control" type="date" />
                                                          </div>
        
                                                      </div>
                                                  </div>
                                              </form>
                                            </div>


                                            <div class="col-xl-3">
                                                <div class="text-xl-end mt-xl-0 mt-2">
                                                    <button id="newPrjBtn" type="button" class="btn btn-danger mb-2 me-2"><i class="mdi mdi-basket me-1"></i> 새 프로젝트 등록</button>
                                                 
                                                </div>
                                            </div><!-- end col-->
                                        </div>

                                        <div class="table-responsive">
                                            <table class="table table-centered table-nowrap mb-0">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th style="width: 20px;">
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input" id="customCheck1">
                                                                <label class="form-check-label" for="customCheck1">&nbsp;</label>
                                                            </div>
                                                        </th>
                                                        <th>프로젝트 ID</th>
                                                        <th>제목</th>
                                                        <th>프로젝트 관리자</th>
                                                        <th>생성일/마감일</th>
                                                        <th>프로젝트 상태</th>
                                                        <th style="width: 125px;">탈퇴/삭제</th>
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
	                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">${prj.piId} DB값</a> </td>
	                                                        <td onclick="goToPrj('${prj.piId}')">${prj.piTitle}</td>
	                                                        <td>
	                                                            <div class="d-flex">
	                                                                <div class="d-flex align-items-center">
	                                                                    <div class="flex-shrink-0">
	                                                                        <img src="${path}/tools/main_assets/images/users/avatar-1.jpg" class="rounded-circle avatar-xs" alt="friend">
	                                                                    </div>
	                                                                    <div class="flex-grow-1 ms-2"><h5 class="my-0">${prj.piWriter}</h5></div>
	                                                                </div>
	                                                            </div>
	                                                        </td>
	
	                                                        <td>
	                                                            <h5 class="my-0">${prj.piStartdate}</h5>
	                                                            <p class="mb-0 txt-muted">${prj.piDuedate}</p>
	                                                        </td>
	
	                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">${prj.piStatus}</span></h5></td>
	                                                        <td>
	                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-arrow-top-right-bold-box-outline"></i></a>
	                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
	                                                        </td>
	                                                    </tr>
                                                	
              
                                                	</c:forEach>
                                                
                                                
                                                
                                                    <tr>
                                                        <td>
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input" id="customCheck2">
                                                                <label class="form-check-label" for="customCheck2">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">#PI9708 프론트샘플</a> </td>
                                                        <td onclick="goToPrj()">쌍용 5차 프로젝트</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0">
                                                                        <img src="${path}/tools/main_assets/images/users/avatar-1.jpg" class="rounded-circle avatar-xs" alt="friend">
                                                                    </div>
                                                                    <div class="flex-grow-1 ms-2"><h5 class="my-0">김철수</h5></div>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <h5 class="my-0">2022-03-05</h5>
                                                            <p class="mb-0 txt-muted">2022-12-31</p>
                                                        </td>

                                                        <td><h5 class="my-0"><span class="badge badge-info-lighten">예정</span></h5></td>
                                                        <td>
                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-arrow-top-right-bold-box-outline"></i></a>
                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td>
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input" id="customCheck9">
                                                                <label class="form-check-label" for="customCheck9">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">#PI9701 프론트샘플</a> </td>
                                                         <td onclick="goToPrj()">쌍용 디자인 프로젝트</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0">
                                                                        <img src="${path}/tools/main_assets/images/users/avatar-8.jpg" class="rounded-circle avatar-xs" alt="friend">
                                                                    </div>
                                                                    <div class="flex-grow-1 ms-2"><h5 class="my-0">배철수</h5></div>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <h5 class="my-0">2022-01-20</h5>
                                                            <p class="mb-0 txt-muted">2022-05-10</p>
                                                        </td>

                                                        <td><h5 class="my-0"><span class="badge badge-warning-lighten">지연</span></h5></td>
                                                        <td>
                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-arrow-top-right-bold-box-outline"></i></a>
                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input" id="customCheck10">
                                                                <label class="form-check-label" for="customCheck10">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">#PI9700 프론트샘플</a> </td>
                                                        <td onclick="goToPrj()">쌍용 임베디드 프로젝트</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0">
                                                                        <img src="${path}/tools/main_assets/images/users/avatar-9.jpg" class="rounded-circle avatar-xs" alt="friend">
                                                                    </div>
                                                                    <div class="flex-grow-1 ms-2"><h5 class="my-0">도철수</h5></div>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <h5 class="my-0">2022-02-05</h5>
                                                            <p class="mb-0 txt-muted">2022-09-01</p>
                                                        </td>

                                                        <td><h5 class="my-0"><span class="badge badge-primary-lighten">진행 중</span></h5></td>
                                                        <td>
                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-arrow-top-right-bold-box-outline"></i></a>
                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div class="form-check">
                                                                <input type="checkbox" class="form-check-input" id="customCheck11">
                                                                <label class="form-check-label" for="customCheck11">&nbsp;</label>
                                                            </div>
                                                        </td>
                                                        <td><a href="apps-ecommerce-orders-details.html" class="text-body fw-bold">#PI9699 프론트샘플</a> </td>
                                                        <td onclick="goToPrj()">쌍용 IOS 프로젝트</td>
                                                        <td>
                                                            <div class="d-flex">
                                                                <div class="d-flex align-items-center">
                                                                    <div class="flex-shrink-0">
                                                                        <img src="${path}/tools/main_assets/images/users/avatar-10.jpg" class="rounded-circle avatar-xs" alt="friend">
                                                                    </div>
                                                                    <div class="flex-grow-1 ms-2"><h5 class="my-0">한철수</h5></div>
                                                                </div>
                                                            </div>
                                                        </td>

                                                        <td>
                                                            <h5 class="my-0">2022-01-05</h5>
                                                            <p class="mb-0 txt-muted">2022-04-04</p>
                                                        </td>

                                                        <td><h5 class="my-0"><span class="badge badge-success-lighten">완료</span></h5></td>
                                                        <td>
                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-arrow-top-right-bold-box-outline"></i></a>
                                                            <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div> <!-- end card-body-->
                                </div> <!-- end card-->
                            </div> <!-- end col -->
                        </div> <!-- end row -->

                    </div>
                    <!-- container -->

                </div>
                <!-- content -->


            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->
			<jsp:include page="../include/rightBar_footer.jsp" flush="true"/>
			
			</div>
        </div>
        <!-- END wrapper -->

         
        <script>
        
    		$(".button-menu-mobile").hide();
    		// 여기서는 필요없기에 가려줘야한다.
   
        	$("#newPrjBtn").click(function(){
        		location.href="./prjReg.html";
        	})


        	function goToPrj(piId){
        		location.href="${path}/prjDash.do?piId="+piId;
//        		location.href="${path}/dash.do?method=list";
        	} // 이 방식으로 post로 못 간다 

        </script>

    </body>
</html>