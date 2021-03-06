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

	<style>
		.side-nav .side-nav-link{
			padding: 35px;
			font-size: 1.2rem;

		}

		.side-nav-link, .menu-arrow{
			font-size: 1.2rem;
		}



	</style>

	<script>
		// 프로젝트 참여자가 아니라면 돌아간다.
		isInPrj();

		function isInPrj(){

			$.ajax({
				url: "${path}/isInPrj.do",
				type: "get",
				dataType: "json",
				success: function (data) {
					ischecked = data.isChecked;
					if(ischecked == 0){
						alert("프로젝트 참여자만 이용가능합니다.");
						location.href="${path}/prjList.do";
					}

				},
				error:function(err) {
					console.log(err);
				}
			})

		}


	</script>

		<!-- ========== Left Sidebar Start ========== -->
		<div class="leftside-menu">
			<!-- LOGO -->
			<a href="${path}/main.do" class="logo text-center logo-light">
				<span class="logo-lg">
					<img src="${path}/tools/project_assets/images/boram_dark.png" alt="" height="45">
				</span>
				<span class="logo-sm">
					<img src="${path}/tools/project_assets/images/boram_sm_dark.png" alt="" height="35">
				</span>
			</a>
			<!-- LOGO -->
			<a href="${path}/main.do" class="logo text-center logo-dark">
				<span class="logo-lg">
					<img src="${path}/tools/project_assets/images/boram_light.png" alt="" height="45">
				</span>
				<span class="logo-sm">
					<img src="${path}/tools/project_assets/images/boram_sm_light.png" alt="" height="35">
				</span>
			</a>
			<div class="h-100" id="leftside-menu-container" data-simplebar>
				<!--- Start Sidemenu -->
				<ul class="side-nav">
					<li class="side-nav-item">
						<a href="${path}/dash.do?method=list" class="side-nav-link">
             				<i class="fa fa-bar-chart" aria-hidden="true"></i>
              				<span> 대시보드 </span>
           				</a>
         			</li>

          			<li class="side-nav-item">
          				<a data-bs-toggle="collapse" href="#sidebarTasks"
            				aria-expanded="false" aria-controls="sidebarTasks" class="side-nav-link">
              				<i class=" uil-schedule"></i>
              				<span> 일정관리 </span>
              				<span class="menu-arrow"></span>
            			</a>
            			<div class="collapse" id="sidebarTasks">
              				<ul class="side-nav-second-level">
              					<li><a href="${path}/calendar.do">캘린더</a></li>
                				<li><a href="${path}/schGantt.do">WBS/간트차트</a></li>
                				<li><a href="${path}/kanban.do?method=list">칸반보드</a></li>

              				</ul>
            			</div>
          			</li>
          			<li class="side-nav-item">
                        <a href="${path}/chat.do?method=main" class="side-nav-link">
                            <i class="uil-comment-dots"></i>
                            <span> 소통관리 </span>
                        </a>
                    </li>
        			<li class="side-nav-item">
           				<a data-bs-toggle="collapse" href="#sidebarDashboards" aria-expanded="false"
							aria-controls="sidebarDashboards" class="side-nav-link">
							<i class="dripicons-document-edit"></i>
							<span> 업무 관리 </span>
							<span class="menu-arrow"></span>
						</a>
						<div class="collapse" id="sidebarDashboards">
							<ul class="side-nav-second-level">
								<li><a href="${path}/task.do?method=list">업무 목록</a></li>
								<li><a href="${path}/mytask.do?method=clist">내 업무</a></li>
							</ul>
						</div>
					</li>
                    <li class="side-nav-item">
                        <a href="${path}/dept.do?method=list" class="side-nav-link">
                            <i class="dripicons-folder-open"></i>
                            <span> 문서관리 </span>
                        </a>
                    </li>
                     <li class="side-nav-item">
                        <a href="${path}/appd.do?method=list" class="side-nav-link">
                            <i class="dripicons-clipboard"></i>
                            <span> 결재관리 </span>
                        </a>
                    </li>
                    <li class="side-nav-item">
                        <a href="${path}/risk.do?method=list" class="side-nav-link">
                            <i class="dripicons-warning"></i>
                            <span> 리스크관리 </span>
                        </a>
                    </li>

                   <li class="side-nav-item">
                        <a href="${path}/notice.do?method=list" class="side-nav-link">
                            <i class="dripicons-broadcast"></i>
                            <span> 공지사항 </span>
                        </a>
                    </li>


                    <li class="side-nav-item">

                        <a href="${path}/team.do" class="side-nav-link">
                            <i class="dripicons-user-group"></i>
                            <span> 팀 페이지 </span>
                        </a>
                    </li>

                </ul>
				<!-- End Sidemeniu -->

				<div class="clearfix"></div>

			</div>
			<!-- Sidebar -left -->

		</div>
		<!-- ========== Left Sidebar end ========== -->

</html>