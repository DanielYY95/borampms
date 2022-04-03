package mvc.service;

import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import mvc.dao.UserDao;
import mvc.vo.Mail;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
import mvc.vo.USER_INFO;


@Service
public class UserService {

	@Autowired
	private UserDao dao;
	
	@Autowired
	private JavaMailSender sender;	
	
	// 1. 회원 리스트 조회
	public List<USER_INFO> getUserList(){
		
		return dao.getUserList();
	};
	
	// 2. 회원가입
	public void insertUser (USER_INFO user) {
		
		dao.insertUser(user);
	};
	
	// 3. 아이디 중복 확인
	public int idChk(USER_INFO user) {
		
		return dao.idChk(user);
	};

	// 4. 로그인
	public USER_INFO login(USER_INFO user) {
		
		return dao.login(user);
	};
	
	// 5. 회원정보 수정
	public void updateUser(USER_INFO user) {
		
		dao.updateUser(user);
	};

	
	// 6. 회원정보 불러오기
	public USER_INFO getUser(String uiId) {
		
		return dao.getUser(uiId);
	};
	
	// 7. 회원탈퇴
	public void deleteUser(USER_INFO user) {
		
		dao.deleteUser(user);
	};
	
	// 8. 아이디 찾기
	public String getId(USER_INFO user) {
		
		return dao.getId(user);
	};
	
	// 9. 비밀번호 찾기
	public String getPw(USER_INFO user) {
		
		return dao.getPw(user);
	};
	
	public void updateTempPw(Mail email, USER_INFO user) {
		
		// 서비스로 이동하자
		String tempPw = "";
		int idx = 0;
		char[] charList = new char[] {
				'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 
				'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

		for (int i = 0; i < 8; i++) {

			idx = (int)(Math.random() * 26);
			tempPw += charList[idx];
				
		}
		
		// 새 비밀번호로 설정
		user.setUiPw(tempPw);
		
		// 이메일 주소 가져오기
		String receiver = dao.getEmail(user);
		
		// 메일 발송
		sendMail(email, receiver, tempPw);
		
		
		dao.updateTempPw(user);
	};
	
	public void sendMail(Mail email, String receiever, String tempPw) {
		
		// 멀티미디어형 메일 데이터 전송.
		MimeMessage mmsg = sender.createMimeMessage();
	
		try {
			// 제목 설정
			email.setTitle("BORAM3 PMS 임시비밀번호입니다.");
			mmsg.setSubject(email.getTitle());
			
			// 내용 설정
			String content = "임시비밀번호를 전송합니다. 로그인 후, "
					+ "비밀번호 수정을 진행해주세요. <br>"
					+ "임시비밀번호: <span style='font-weight: 700'>"
					+tempPw +"</span>"
					+ "<br><br> BORAM3 PMS로 "
					+ "<a href='http://13.125.255.115:8080/borampms/'>이동</a>";
			
		
			email.setContent(content);
			// html 태그를 넣어주기 위해
			mmsg.setContent(email.getContent(), "text/html;charset=euc-kr");
						
			// 수신자 설정
			
			email.setReciever(receiever);
			mmsg.setRecipient(RecipientType.TO, new InternetAddress(email.getReciever()));
			
			
			// 발송 처리.
			sender.send(mmsg);
			
		} catch (MessagingException e) {
			
			System.out.println("메일 발송 에러:"+e.getMessage());
		} catch (Exception e) {
			System.out.println("일반 에러 발생:"+e.getMessage());
		}
	
	}
	
	
	// 10. 내 프로젝트 목록 조회
	
	public ArrayList<PRJ_INFO> getMyPrjList(String uiId) {
		
		return dao.getMyPrjList(uiId);
	};
	
	// 11. 참여하지않은 프로젝트 목록 조회
	
	public ArrayList<PRJ_INFO> getNewPrjList(String uiId){
		
		return dao.getNewPrjList(uiId);
	};
	
	public ArrayList<PRJ_INFO> getWaitPrjList(String uiId){
		
		return dao.getWaitPrjList(uiId);
	};
	
	// 12. 프로젝트 참여
	
	public void joinPrj(PRJ_USER user) {
		
		dao.joinPrj(user);
	};

	// 13. 프로젝트 만들기
	
		public void insertPrj(PRJ_INFO sch) {
			
			dao.insertPrj(sch);
		};
		
	
		
	
}
