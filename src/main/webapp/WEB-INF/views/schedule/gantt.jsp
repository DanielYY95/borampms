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
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<script src="${path}/tools/project_assets/js/dhtmlxgantt.js"></script>
					<link rel="stylesheet" href="${path}/tools/project_assets/css/dhtmlxgantt.css">
					
					<!-- App favicon -->
					<link rel="shortcut icon" href="${path}/tools/project_assets/images/favicon.ico">
					<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css"/>
				
					<!-- App css -->
					<link href="${path}/tools/project_assets/css/icons.min.css" rel="stylesheet" type="text/css" />
					<link href="${path}/tools/project_assets/css/app.min.css" rel="stylesheet" type="text/css" id="app-style" />
					
					<!-- jquery 라이브러리 -->
 					<script src="${path}/tools/jquery-3.6.0.js"></script>
 


				</head>

				<!-- 넘치면 스크롤로 -->
				<!-- 각자 모니터 높이가 다르기 때문에 80vh로 높이 설정. but 듀얼 모니터의 경우, 높이가 다른 경우 왔다갔다 하면 높이가 안돌아옴.. -->
				<!-- 보니까 프로젝트 폴더 옆에 있는 +를 눌러야 같은 프로젝트 내 업무로 등록 -->
				<!-- 2주정도밖에 안 보이네? -->
				<!-- 흠... 프론트에서는 div 하나밖에 없네.... -->
				<!-- 날짜/월 은 바꾸려고 하는데 ㅠㅠ -->
				
				<!-- ## 유효성  -->
					<!-- 프로젝트보다 앞설 수 없고, 늦출 수 없다 -->

				<!-- #Data -->
					<!-- Json에 두어야.... 소요기간은 마감일-시작일+1 로 구해야한다! -->
				
				<!-- 참고사이트: https://docs.dhtmlx.com/gantt/desktop__loading.html
						http://egloos.zum.com/parandiary/v/3020211-->


				<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid"
					data-rightbar-onstart="true">
					<!-- Begin page -->
					<div class="wrapper">


						<jsp:include page="../include/leftBar.jsp" flush="true" />

						<!-- ============================================================== -->
						<!-- Start Page Content here -->
						<!-- ============================================================== -->

						<div class="content-page">
							<div class="content">

								<jsp:include page="../include/headerBar.jsp" flush="true" />


								<!-- Start Content-->
								<div class="container-fluid" style="height: 80vh;">
									<div id="gantt_here" style='width:100%; height:100%;'></div>
									
								</div>
								<!-- container -->

							</div>
							<!-- content -->

							<jsp:include page="../include/rightBar_footer.jsp" flush="true" />

						</div>
					</div><!-- End Wrapper -->

					<!-- 이거 다음은 script 영역이다. 이게 끝 -->


					<!-- JSON 데이터 -->
						<script>
							
							gantt.init("gantt_here");
							getData();
				
			
							function getData(){

								$.ajax({
									url:"${path}/ganttData.do",
									type:"get",
									// data:schdata, => 아마 특정 프로젝트 고유번호가 들어가야겠지?
									dataType:"json",
									success:function(data){
										console.log("수신 성공");
										let dataList = []; 
										let ganttdata = {
											tasks:[],
											links: [
													{ id: 1, source: 1, target: 2, type: "1" },
													{ id: 2, source: 2, target: 3, type: "0" }
												]
										};
										console.log(ganttdata);

										$.each(data.ganttList, function(idx, sch){ // id:"+sch.ptId+",
											ganttdata.tasks.push({ text: sch.ptTitle , start_date: sch.ptStartdate, duration:(calDay(sch.ptDuedate,sch.ptStartdate)+1)});

										});
										dataList = dataList.slice(0,-1); // 맨 마지막 , 빼기
										console.log(dataList);
									


										console.log(ganttdata);
										
										gantt.parse(ganttdata);


									},
									error:function(){
										console.log("에러발생:"+err);
									}

								})
							
							}

							function calDay(firstDate, secondDate){

								// subString이 function 이 아니라는 것은 대상이 문자열이 아니라서!
							

								var Date1 = new Date(firstDate.substring(0,4), firstDate.substring(5,7)-1, firstDate.substring(8,10));
								var Date2 =
									new Date(secondDate.substring(0,4), secondDate.substring(5,7)-1, secondDate.substring(8,10));
								var betweenTime = Math.abs(Date2.getTime() - Date1.getTime());  // 소요기간 절대값으로 구함.
								
								return Math.floor(betweenTime/(1000*60*60*24));
							}




								
					// gantt.parse({
													
						// 	// 여기서 parent가 없는게 분류가 되어야할듯.
						// 		// open:true, progress는 굳이..
						// 		// ajax에서 받아온 데이터들은 {key:value } 형식으로 return 한다. 
						// 		// 여기서 왼쪽 wbs에서의 날짜는 01(날)-02(월)-2022(연도)
						// 	data: [

						// 		//{  text:'연협 회의', start_date: '2022-03-16', duration: 'NaN'},{  text:'요구사항 확인', start_date: '2022-03-24', duration:'NaN'},{  text:'등록 테스트', start_date: '2022-03-14', duration:'NaN'},{  text:'지연 업무 등록', start_date: '2022-03-09', duration:'NaN'},{  text:'페이징 ㅌㅌㅌ', start_date: '2022-03-07', duration:'NaN'},{  text:'페이징 확인용', start_date: '2022-03-01', duration:'NaN'},{  text:'등록 테스트', start_date: '2022-03-18', duration:'NaN'},{  text:'피드백 진행', start_date: '2022-03-22', duration:'NaN'},{  text:'에러 수정', start_date: '2022-03-17', duration:'NaN'},{  text:'우선순위 등록 테스트', start_date: '2022-03-22', duration:'NaN'}

						// 		// { id: 1, text: "5차프로젝트", start_date: "01-02-2022", duration: 18, progress: 0.4, open: true },
						// 		// { id: 2, text: "업무관리", start_date: "02-02-2022", duration: 8, progress: 0.6, parent: 1 },
						// 		// { id: 3, text: "문서관리", start_date: "11-02-2022", duration: 8, progress: 0.6, parent: 1 },
						// 		// { text: "문서관리", start_date: "11-02-2022", duration: 8 }
						// 	],

						// 	links: [
						// 		{ id: 1, source: 1, target: 2, type: "1" },
						// 		{ id: 2, source: 2, target: 3, type: "0" }
						// 	]
						// });

							// {id: 고유번호, text: PT_TITLE, start_data: PT_STARTDATE, duration: PT_DUEDATE-PT_STARTDATE+1, 
								// parent: @@} ==> 일단 계층형 하지말자....
							




						</script>



				</body>

				</html>