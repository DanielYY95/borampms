package mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.UserDao;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
import mvc.vo.USER_INFO;


@Service
public class UserService {

	@Autowired
	private UserDao dao;
	
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
	
	// 10. 내 프로젝트 목록 조회
	
	public ArrayList<PRJ_INFO> getMyPrjList(String uiId) {
		
		return dao.getMyPrjList(uiId);
	};
	
	// 11. 참여하지않은 프로젝트 목록 조회
	
	public ArrayList<PRJ_INFO> getNewPrjList(String uiId){
		
		return dao.getNewPrjList(uiId);
	};
	
	// 12. 프로젝트 참여
	
	public void joinPrj(PRJ_USER user) {
		
		dao.joinPrj(user);
	};

	
	
}
