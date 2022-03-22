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
	// ������ ���� ���� �����ϴ� �ʵ� ����
	private Map<String, WebSocketSession> users = new ConcurrentHashMap();
	
	// 1. ���� ���� ���� �� ó��
		@Override
		public void afterConnectionEstablished(WebSocketSession session) throws Exception {
			users.put(session.getId(), session);
			log(session.getId()+"�� ����, ���� ������ �� "+users.size()+"��");
		}
		
		
	// 2. ���� ������ �޽��� ���� �� ó��
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		// 1) Ư�� client�κ��� ���޹��� �޽����� ���
		log(session.getId()+"�� ���� �޽��� : "+message.getPayload());
		// 2) ���� ������ ��� client�� �޽����� ����
		for(WebSocketSession ws : users.values()) {
			// 1. ������ client�鿡�� �޽��� ����
			ws.sendMessage(message);
			// 2. ������ ����� �� �޽��� Ȯ��
			log(ws.getId()+"���� ������ �޽��� : "+message.getPayload());
		}
	}

	
	// 3. ���� ���� ���� �� ó��
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		// 1) ���� ���� ��Ͽ��� ����
		users.remove(session.getId());
		log(session.getId()+"�� ���� ����");
	}
	
		
	// 4. ���� �߻� �� ó�� 
	@Override
	public void handleTransportError(WebSocketSession session, Throwable exception) throws Exception {
		log("###"+session.getId()+" ���� ###\n"+exception.getMessage());
		// session.sendMessage(exception.getMessage());
	}
	
	
	// �⺻ �α� ó��
	private void log(String logMsg) {
		System.out.println(new Date()+":"+logMsg);
	}
	
}
