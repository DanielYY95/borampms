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
	
	<!-- jQuery -->
	<script src="${path}/tools/jquery-3.6.0.js"></script>

</head>

<body class="loading" data-layout-color="light" data-leftbar-theme="dark" data-layout-mode="fluid"
	data-rightbar-onstart="true">
	
	
	<!-- Begin page -->
	<div class="wrapper">
	
		<!-- ========== Left Sidebar Start ========== -->
		<jsp:include page="../include/leftBar.jsp" flush="true"/>
		<!-- ========== Left Sidebar end ========== -->
		
		
		
		<!-- Start Page Content here -->
		<!-- ============================================================== -->

		<div class="content-page">
			<div class="content">
			
				<!-- Start headerBar -->
				<jsp:include page="../include/headerBar.jsp" flush="true"/>
				<!-- end headerBar -->

				<!-- Start Content-->
				<div class="container-fluid">

	
	                <!-- start page title -->
	                <div class="row">
	                    <div class="col-xxl-6 col-xl-12 order-xl-2 mx-auto">
	                        <div class="page-title-box">
	                            <div class="page-title-right">
	                                <ol class="breadcrumb m-0">
	                                    <li class="breadcrumb-item"><a href="javascript: void(0);">borampms</a></li>
	                                    <li class="breadcrumb-item active">채팅</li>
	                                </ol>
	                            </div>
	                            <h4 class="page-title">소통관리 <small style="color:red;">※ 새로 고침 시 대화 데이터가 사라지니 주의해주세요.</small></h4>
	                        </div>
	                    </div>
	                </div>
	                <!-- end page title -->
	
                	<div class="row">
                    	
	
	                    <!-- chat area -->
	                    <div class="col-xxl-6 col-xl-12 order-xl-2 mx-auto">
	                        <div class="card">
	                            <div class="card-body px-0 pb-0" id="chatArea"> <!-- p를 사용하면 띄어쓰기 자연스럽게-->
	                                <ul class="conversation-list px-3" id="chatMessageArea" data-simplebar style="height: 50vh">
	                                    
	                                  
	                                </ul>
	
	                                <div class="row px-3 pb-3">
	                                    <div class="col">
	                                        <div class="mt-2 bg-light p-3 rounded">
	                                            
	                                                <div class="row" id="btnList">
														<input type="button" class="col-2 btn btn-info" value="채팅입장" id="enterBtn"/>	
														<input type="button" class="col-2 btn btn-danger" value="나가기" id="exitBtn"/>
	                                                    <div class="col mb-2 mb-sm-0">
	                            
	                                                        <input id="msg" class="form-control border-0" placeholder="보낼 메시지 입력하세요" required="" />
															<div class="invalid-feedback">
	                                                            메시지를 입력해주세요.
	                                                        </div>
	                                                    </div>
	                                                    <div class="col-sm-auto">
	                                                        <div class="btn-group">
	                
	                                                            <div class="d-grid">
	                                                                <button type="button" id="sendBtn" class="btn btn-success chat-send">전송&nbsp;<i class='uil uil-message'></i></button>
	                                                            </div> <!-- 일단 submit 대신 -->
	                                                        </div>
	                                                    </div> <!-- end col -->
	                                                </div> <!-- end row-->
	                                           
	                                        </div> 
	                                    </div> <!-- end col-->
	                                </div>
	                                <!-- end row -->
	                            </div> <!-- end card-body -->
	                        </div> <!-- end card -->
	                    </div>
	                    <!-- end chat area-->
	
	                  
	                    </div> <!-- end col -->
	                    <!-- end user detail -->
	                </div> <!-- end row-->
	
	            </div> <!-- container -->
	
	        </div> <!-- content -->
	
	    </div>
	
	    <!-- ============================================================== -->
	    <!-- End Page content -->
	    <!-- ============================================================== -->
		
		
		<!-- start rightBar_footer -->
		<jsp:include page="../include/rightBar_footer.jsp" flush="true"/>
		<!-- end rightBar_footer -->
	
	
	</div>
	<!-- END wrapper -->
	


	

	<script type="text/javascript">
	
	// 채팅 리스트는 DB에 저장해야한다. https://nowonbun.tistory.com/379
	
	var wsocket;
	$(document).ready(function(){
		
		$("#exitBtn").hide();
		
		// 1. 웹 소켓 클라이언트를 통해 웹 서버 연결하기.
		
		$("#enterBtn").click(function(){
			conn();
		});
	

		$("#msg").keyup(function(event){
			
			
			if(event.keyCode==13){ 
				if($("#msg").val().trim()==""){
					alert("내용을 입력해주세요.")
					return;
				}
				sendMsg();
			}
		});
		$("#sendBtn").click(function(){
			if($("#msg").val().trim()==""){
				alert("내용을 입력해주세요.")
				return;
			}
			
			sendMsg();
		});
		// 접속 종료를 처리했을 시
		$("#exitBtn").click(function(){
			wsocket.send("msg:"+"${user_info.uiName}"+":접속 종료 했습니다!");
			wsocket.close();
		});

		// 메시지는 보내는 기능 메서드
		function sendMsg(){

			name = "${user_info.uiName}";
			revMsg = $("#msg").val();

			wsocket.send("msg:"+name+":"+revMsg);
			$("#msg").val(""); 
			$("#msg").focus();
		}
		
	});
	
	
	$("#btnList").on("click", "#enterBtn", function(){
		$("#enterBtn").hide();
		$("#exitBtn").show();
		
		
	})
	
	$("#btnList").on("click", "#exitBtn", function(){
		$("#exitBtn").hide();
		$("#enterBtn").show();
		
		
	})
	
	
	
	
	
	let msgbox = '';
	let Msg = [];
	let name = '';
	let revMsg = '';
	let hour = 0;
	let minute = 0;
	let apm = '';
	
	function conn(){
		//  원격 접속시에는 고정 ip 할당 받아서 처리..
		// wsocket = new WebSocket("ws:/106.10.23.227:7080/${path}/chat-ws.do");
		// local에서 다른 브라우저로 실행시 처리할 내용..
		wsocket = new WebSocket("ws:/localhost:7080/${path}/chat-ws.do");
		
		// handler :afterConnectionEstablished(WebSocketSession session)와 연결
		// 서버에 접속한 후 이벤트 정의
		wsocket.onopen=function(evt){ 
			console.log(evt);
			wsocket.send("msg:"+'${user_info.uiName}'+":연결 접속했습니다!");
		}
		// handler의  handleTextMessage()
		// 연결되어 있으면 메시지를 push형식으로 서버에서 받을 수 있다.
		// ex) wsocket.send("msg:"+$("#id").val()+":연결 접속했습니다!");
		// push 방식으로 서버에서 전달되어 온 데이터를 받게 처리..
		// 서버에서 Session.send를 이용해서 메시지 전송할 때 수신 이벤트 정의
		wsocket.onmessage=function(evt){
			// 받은 데이터
			var msg = evt.data;
			// msg 내용 삭제 후, 처리
			if(msg.substring(0,4)=="msg:"){
				// 메시지 내용만 전달
				Msg = msg.substring(4).split(":"); //:를 기준으로 아이디와 메시지 내용을 자른다.
				name = Msg[0];
				revMsg = Msg[1];
				
				
				hour = new Date().getHours();
				apm = (hour>11)? '오후':'오전';
				hour = (hour>11)? hour-12:hour;
				minute = String(new Date().getMinutes()).padStart(2,"0");
			

				// class="chat-avatar" 는 자동으로 정렬되는 구만...
				msgbox = '<li class="clearfix" id="'+name+'"><div class="chat-avatar pt-1">'+apm
						+'<i>'+hour +":" + minute
						+'<i></div><div class="conversation-text">'
						+'<div class="ctext-wrap"><i>'+name
						+'</i><p>'+revMsg
						+'</p></div></div></li><br>';
				
				$(".simplebar-content").eq(2).append(msgbox);
						
				if(name=="${user_info.uiName}"){
					$("#"+name+"").attr("class", "clearfix odd");
				}
				

			}
		}


	

		
		// 서버에서 접속 종료한 후 이벤트 정의
		// handler의 afterConnectionClose와 연동
		wsocket.onclose=function(){

			alert('${user_info.uiName}'+'님 접속 종료합니다.')
		}
		
	}





</script>
	
	
</body>

</html>