package mvc.util;

import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

@Component("chatHandler")
public class A02_ChatHandler extends TextWebSocketHandler {
	// 접속한 계정 값을 저장하는 필드 선언
	private Map<String, WebSocketSession> users = new ConcurrentHashMap();
	
	// 1. 소켓 서버 접속 시 처리
		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
			users.put(session.getId(), session);
			log(session.getId()+"님 접속, 현재 접속자 수 "+users.size()+"명");
		}
		
		
	// 2. 소켓 서버에 메시지 전송 시 처리
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// 1) 특정 client로부터 전달받은 메시지를 출력
		log(session.getId()+"가 보낸 메시지 : "+message.getPayload());
		// 2) 현재 접속한 모든 client에 메시지를 전달
		for(WebSocketSession ws : users.values()) {
			// 1. 접속한 client들에게 메시지 전달
			ws.sendMessage(message);
			// 2. 전달할 사용자 및 메시지 확인
			log(ws.getId()+"에게 전달할 메시지 : "+message.getPayload());
		}
	}

	
	// 3. 소켓 서버 종료 시 처리
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// 1) 현재 접속 목록에서 제거
		users.remove(session.getId());
		log(session.getId()+"님 접속 종료");
	}
	
		
	// 4. 에러 발생 시 처리 
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		log("###"+session.getId()+" 에러 ###\n"+exception.getMessage());
		// session.sendMessage(exception.getMessage());
	}
	
	
	// 기본 로그 처리
	private void log(String logMsg) {
		System.out.println(new Date()+":"+logMsg);
	}
	
}
