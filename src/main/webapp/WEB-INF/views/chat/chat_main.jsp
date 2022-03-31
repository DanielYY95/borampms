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
	                    <div class="col-12">
	                        <div class="page-title-box">
	                            <div class="page-title-right">
	                                <ol class="breadcrumb m-0">
	                                    <li class="breadcrumb-item"><a href="javascript: void(0);">borampms</a></li>
	                                    <li class="breadcrumb-item active">채팅</li>
	                                </ol>
	                            </div>
	                            <h4 class="page-title">Chat</h4>
	                        </div>
	                    </div>
	                </div>
	                <!-- end page title -->
	
                	<div class="row">
                    	<!-- start chat users-->
	                    <div class="col-xxl-3 col-xl-6 order-xl-1">
	                        <div class="card">
	                            <div class="card-body p-0">
	                                <ul class="nav nav-tabs nav-bordered">
	                                    <li class="nav-item">
	                                        <a href="#allUsers" data-bs-toggle="tab" aria-expanded="false" class="nav-link active py-2">
	                                            All
	                                        </a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a href="#favUsers" data-bs-toggle="tab" aria-expanded="true" class="nav-link py-2">
	                                            Favourties
	                                        </a>
	                                    </li>
	                                    <li class="nav-item">
	                                        <a href="#friendUsers" data-bs-toggle="tab" aria-expanded="true" class="nav-link py-2">
	                                            Friends
	                                        </a>
	                                    </li>
	                                </ul> <!-- end nav-->
	                                <div class="tab-content">
	                                    <div class="tab-pane show active card-body pb-0" id="newpost">
	
	                                        <!-- start search box -->
	                                        <div class="app-search">
	                                            <form>
	                                                <div class="mb-2 position-relative">
	                                                    <input type="text" class="form-control"
	                                                        placeholder="People, groups & messages..." />
	                                                    <span class="mdi mdi-magnify search-icon"></span>
	                                                </div>
	                                            </form>
	                                        </div>
	                                        <!-- end search box -->
	                                    </div>
	
	                                        <!-- users -->
	                                    <div class="row">
	                                        <div class="col">
	                                            <div class="card-body py-0" data-simplebar style="max-height: 562px">
	                                                <a href="javascript:void(0);" class="text-body">
	                                                    <div class="d-flex align-items-start mt-1 p-2">
	                                                        <img src="${path}/tools/project_assets/images/users/avatar-2.jpg" class="me-2 rounded-circle" height="48" alt="Brandon Smith" />
	                                                        <div class="w-100 overflow-hidden">
	                                                            <h5 class="mt-0 mb-0 font-14">
	                                                                <span class="float-end text-muted font-12">4:30am</span>
	                                                                Brandon Smith
	                                                            </h5>
	                                                            <p class="mt-1 mb-0 text-muted font-14">
	                                                                <span class="w-25 float-end text-end"><span class="badge badge-danger-lighten">3</span></span>
	                                                                <span class="w-75">How are you today?</span>
	                                                            </p>
	                                                        </div>
	                                                    </div>
	                                                </a>
	                                                
	                                                <a href="javascript:void(0);" class="text-body">
	                                                    <div class="d-flex align-items-start bg-light p-2">
	                                                        <img src="${path}/tools/project_assets/images/users/avatar-5.jpg" class="me-2 rounded-circle" height="48" alt="Shreyu N" />
	                                                        <div class="w-100 overflow-hidden">
	                                                            <h5 class="mt-0 mb-0 font-14">
	                                                                <span class="float-end text-muted font-12">5:30am</span>
	                                                                Shreyu N
	                                                            </h5>
	                                                            <p class="mt-1 mb-0 text-muted font-14">
	                                                                <span class="w-75">Hey! a reminder for tomorrow's meeting...</span>
	                                                            </p>
	                                                        </div>
	                                                    </div>
	                                                </a>
	                                                
	                                                <a href="javascript:void(0);" class="text-body">
	                                                    <div class="d-flex align-items-start mt-1 p-2">
	                                                        <img src="${path}/tools/project_assets/images/users/avatar-7.jpg" class="me-2 rounded-circle" height="48" alt="Maria C" />
	                                                        <div class="w-100 overflow-hidden">
	                                                            <h5 class="mt-0 mb-0 font-14">
	                                                                <span class="float-end text-muted font-12">Thu</span>
	                                                                Maria C
	                                                            </h5>
	                                                            <p class="mt-1 mb-0 text-muted font-14">
	                                                                <span class="w-25 float-end text-end"><span class="badge badge-danger-lighten">2</span></span>
	                                                                <span class="w-75">Are we going to have this week's planning meeting today?</span>
	                                                            </p>
	                                                        </div>
	                                                    </div>
	                                                </a>
	                                                
	                                                <a href="javascript:void(0);" class="text-body">
	                                                    <div class="d-flex align-items-start mt-1 p-2">
	                                                        <img src="${path}/tools/project_assets/images/users/avatar-10.jpg" class="me-2 rounded-circle" height="48" alt="Rhonda D" />
	                                                        <div class="w-100 overflow-hidden">
	                                                            <h5 class="mt-0 mb-0 font-14">
	                                                                <span class="float-end text-muted font-12">Wed</span>
	                                                                Rhonda D
	                                                            </h5>
	                                                            <p class="mt-1 mb-0 text-muted font-14">
	                                                                <span class="w-75">Please check these design assets...</span>
	                                                            </p>
	                                                        </div>
	                                                    </div>
	                                                </a>
	                                                
	                                                <a href="javascript:void(0);" class="text-body">
	                                                    <div class="d-flex align-items-start mt-1 p-2">
	                                                        <img src="${path}/tools/project_assets/images/users/avatar-3.jpg" class="me-2 rounded-circle" height="48" alt="Michael H" />
	                                                        <div class="w-100 overflow-hidden">
	                                                            <h5 class="mt-0 mb-0 font-14">
	                                                                <span class="float-end text-muted font-12">Tue</span>
	                                                                Michael H
	                                                            </h5>
	                                                            <p class="mt-1 mb-0 text-muted font-14">
	                                                                <span class="w-25 float-end text-end"><span class="badge badge-danger-lighten">6</span></span>
	                                                                <span class="w-75">Are you free for 15 min? I would like to discuss something...</span>
	                                                            </p>
	                                                        </div>
	                                                    </div>
	                                                </a>
	                                                
	                                                <a href="javascript:void(0);" class="text-body">
	                                                    <div class="d-flex align-items-start mt-1 p-2">
	                                                        <img src="${path}/tools/project_assets/images/users/avatar-6.jpg" class="me-2 rounded-circle" height="48" alt="Thomas R" />
	                                                        <div class="w-100 overflow-hidden">
	                                                            <h5 class="mt-0 mb-0 font-14">
	                                                                <span class="float-end text-muted font-12">Tue</span>
	                                                                Thomas R
	                                                            </h5>
	                                                            <p class="mt-1 mb-0 text-muted font-14">
	                                                                <span class="w-75">Let's have meeting today between me, you and Tony...</span>
	                                                            </p>
	                                                        </div>
	                                                    </div>
	                                                </a>
	                                                
	                                                <a href="javascript:void(0);" class="text-body">
	                                                    <div class="d-flex align-items-start mt-1 p-2">
	                                                        <img src="${path}/tools/project_assets/images/users/avatar-8.jpg" class="me-2 rounded-circle" height="48" alt="Thomas J" />
	                                                        <div class="w-100 overflow-hidden">
	                                                            <h5 class="mt-0 mb-0 font-14">
	                                                                <span class="float-end text-muted font-12">Tue</span>
	                                                                Thomas J
	                                                            </h5>
	                                                            <p class="mt-1 mb-0 text-muted font-14">
	                                                                <span class="w-75">Howdy?</span>
	                                                            </p>
	                                                        </div>
	                                                    </div>
	                                                </a>
	                                                
	                                                <a href="javascript:void(0);" class="text-body">
	                                                    <div class="d-flex align-items-start mt-1 p-2">
	                                                        <img src="${path}/tools/project_assets/images/users/avatar-1.jpg" class="me-2 rounded-circle" height="48" alt="Ricky J" />
	                                                        <div class="w-100 overflow-hidden">
	                                                            <h5 class="mt-0 mb-0 font-14">
	                                                                <span class="float-end text-muted font-12">Mon</span>
	                                                                Ricky J
	                                                            </h5>
	                                                            <p class="mt-1 mb-0 text-muted font-14">
	                                                                <span class="w-25 float-end text-end"><span class="badge badge-danger-lighten">28</span></span>
	                                                                <span class="w-75">Are you interested in learning?</span>
	                                                            </p>
	                                                        </div>
	                                                    </div>
	                                                </a>                                                        
	
	                                            </div> <!-- end slimscroll-->
	                                        </div> <!-- End col -->
	                                    </div> <!-- end users -->
	                                </div> <!-- end tab content-->
	                            </div> <!-- end card-body-->
	                        </div> <!-- end card-->
	                    </div>
	                    <!-- end chat users-->
	
	                    <!-- chat area -->
	                    <div class="col-xxl-6 col-xl-12 order-xl-2">
	                        <div class="card">
	                            <div class="card-body px-0 pb-0" id="chatArea"> <!-- p를 사용하면 띄어쓰기 자연스럽게-->
	                                <ul class="conversation-list px-3" id="chatMessageArea" data-simplebar style="max-height: 538px">
	                                    <li class="clearfix">
	                                        <div class="chat-avatar">
	                                            <img src="${path}/tools/project_assets/images/users/avatar-5.jpg" class="rounded" alt="Shreyu N" />
	                                            <i>10:00</i>
	                                        </div>
	                                        <div class="conversation-text">
	                                            <div class="ctext-wrap">
	                                                <i>Shreyu N</i>
	                                                <p>
	                                                    Hello!
	                                                </p>
	                                            </div>
	                                        </div>
	                                        <div class="conversation-actions dropdown">
	                                            <button class="btn btn-sm btn-link" data-bs-toggle="dropdown"
	                                                aria-expanded="false"><i class='uil uil-ellipsis-v'></i></button>
	
	                                            <div class="dropdown-menu dropdown-menu-end">
	                                                <a class="dropdown-item" href="#">Copy Message</a>
	                                                <a class="dropdown-item" href="#">Edit</a>
	                                                <a class="dropdown-item" href="#">Delete</a>
	                                            </div>
	                                        </div>
	                                    </li>
	                                    <li class="clearfix odd">
	                                        <div class="chat-avatar">
	                                            <img src="${path}/tools/project_assets/images/users/avatar-1.jpg" class="rounded" alt="dominic" />
	                                            <i>10:01</i>
	                                        </div>
	                                        <div class="conversation-text">
	                                            <div class="ctext-wrap">
	                                                <i>Dominic</i>
	                                                <p>
	                                                    Hi, How are you? What about our next meeting?
	                                                </p>
	                                            </div>
	                                        </div>
	                                        <div class="conversation-actions dropdown">
	                                            <button class="btn btn-sm btn-link" data-bs-toggle="dropdown"
	                                                aria-expanded="false"><i class='uil uil-ellipsis-v'></i></button>
	
	                                            <div class="dropdown-menu">
	                                                <a class="dropdown-item" href="#">Copy Message</a>
	                                                <a class="dropdown-item" href="#">Edit</a>
	                                                <a class="dropdown-item" href="#">Delete</a>
	                                            </div>
	                                        </div>
	                                    </li>
	                                    
	                                  
	                                </ul>
	
	                                <div class="row px-3 pb-3">
	                                    <div class="col">
	                                        <div class="mt-2 bg-light p-3 rounded">
	                                            <form class="needs-validation" novalidate="" name="chat-form"
	                                                id="chat-form">
	                                                <div class="row">
														<input type="button" class="col-2 btn btn-info" value="채팅입장" id="enterBtn"/>	
														<input type="button" class="col-2 btn btn-danger" value="나가기" id="exitBtn"/>
	                                                    <div class="col mb-2 mb-sm-0">
	                            
	                                                        <input id="msg" class="form-control border-0" placeholder="보낼 메시지 입력하세요" required="" />
															<div class="invalid-feedback">
	                                                            Please enter your messsage
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
	                                            </form>
	                                        </div> 
	                                    </div> <!-- end col-->
	                                </div>
	                                <!-- end row -->
	                            </div> <!-- end card-body -->
	                        </div> <!-- end card -->
	                    </div>
	                    <!-- end chat area-->
	
	                    <!-- start user detail -->
	                    <div class="col-xxl-3 col-xl-6 order-xl-1 order-xxl-2">
	                        <div class="card">
	                            <div class="card-body">
	                                <div class="dropdown float-end">
	                                    <a href="#" class="dropdown-toggle arrow-none card-drop" data-bs-toggle="dropdown" aria-expanded="false">
	                                        <i class="mdi mdi-dots-horizontal"></i>
	                                    </a>
	                                    <div class="dropdown-menu dropdown-menu-end">
	                                        <!-- item-->
	                                        <a href="javascript:void(0);" class="dropdown-item">View full</a>
	                                        <!-- item-->
	                                        <a href="javascript:void(0);" class="dropdown-item">Edit Contact Info</a>
	                                        <!-- item-->
	                                        <a href="javascript:void(0);" class="dropdown-item">Remove</a>
	                                    </div>
	                                </div>
	
	                                <div class="mt-3 text-center">
	                                    <img src="${path}/tools/project_assets/images/users/avatar-5.jpg" alt="shreyu"
	                                        class="img-thumbnail avatar-lg rounded-circle" />
	                                    <h4>Shreyu N</h4>
	                                    <button class="btn btn-primary btn-sm mt-1"><i class='uil uil-envelope-add me-1'></i>Send Email</button>
	                                    <p class="text-muted mt-2 font-14">Last Interacted: <strong>Few hours back</strong></p>
	                                </div>
	
	                                <div class="mt-3">
	                                    <hr class="" />
	
	                                    <p class="mt-4 mb-1"><strong><i class='uil uil-at'></i> Email:</strong></p>
	                                    <p>support@coderthemes.com</p>
	
	                                    <p class="mt-3 mb-1"><strong><i class='uil uil-phone'></i> Phone Number:</strong></p>
	                                    <p>+1 456 9595 9594</p>
	
	                                    <p class="mt-3 mb-1"><strong><i class='uil uil-location'></i> Location:</strong></p>
	                                    <p>California, USA</p>
	
	                                    <p class="mt-3 mb-1"><strong><i class='uil uil-globe'></i> Languages:</strong></p>
	                                    <p>English, German, Spanish</p>
	
	                                    <p class="mt-3 mb-2"><strong><i class='uil uil-users-alt'></i> Groups:</strong></p>
	                                    <p>
	                                        <span class="badge badge-success-lighten p-1 font-14">Work</span>
	                                        <span class="badge badge-primary-lighten p-1 font-14">Friends</span>
	                                    </p>
	                                </div>
	                            </div> <!-- end card-body -->
	                        </div> <!-- end card-->
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
		// 1. 웹 소켓 클라이언트를 통해 웹 서버 연결하기.
		
		$("#enterBtn").click(function(){
			conn();
		});
	

		$("#msg").keyup(function(){
			if(event.keyCode==13) sendMsg();
		});
		$("#sendBtn").click(function(){
			
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

			// hour = new Date().getHours();
			// apm = (hour>11)? '오후':'오전';
			// hour = (hour>11)? hour-12:hour;
			// minute = String(new Date().getMinutes()).padStart(2,"0");
		

			// class="chat-avatar" 는 자동으로 정렬되는 구만...
			// msgbox = '<li class="clearfix odd"><div class="chat-avatar pt-1">'+apm
			// 		+'<i>'+hour +":" + minute
			// 		+'<i></div><div class="conversation-text">'
			// 		+'<div class="ctext-wrap"><i>'+name
			// 		+'</i><p>'+revMsg
			// 		+'</p></div></div></li><br>';

			// $(".simplebar-content").eq(3).append(msgbox);

			// message를 보내는 처리..서버의 handler의  handleTextMessage()와 연동
			wsocket.send("msg:"+name+":"+revMsg);
			$("#msg").val(""); 
			$("#msg").focus();
		}
		
	});
	
	
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
				
				$(".simplebar-content").eq(3).append(msgbox);
						
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



	// $("#sendBtn").click(function(){
	// 	name = "양초명";
	// 	revMsg = $("#msg").val();

	// 	// class="chat-avatar" 는 자동으로 정렬되는 구만...
	// 	msgbox = '<li class="clearfix odd"><div class="chat-avatar"><i>'+new Date().getHours() +":" + new Date().getMinutes()
	// 			+'<i></div><div class="conversation-text">'
	// 			+'<div class="ctext-wrap"><i>'+name
	// 			+'</i><p>'+revMsg
	// 			+'</p></div></div></li><br>';
	



	// 	$(".simplebar-content").append(msgbox);

	// 	$("#msg").val('');
	// })




</script>
	
	
</body>

</html>