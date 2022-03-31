package mvc.dao;

import java.util.ArrayList;
import java.util.List;

import mvc.vo.PRJ_INFO;
import mvc.vo.USER_INFO;



public interface UserDao {
	
	// 1. 회원 리스트 조회
	public List<USER_INFO> getUserList();
	
	// 2. 회원가입
	public void insertUser (USER_INFO user);
	
	// 3. 아이디 중복 확인
	public int idChk(USER_INFO user);

	// 4. 로그인
	public USER_INFO login(USER_INFO user);
	
	// 5. 회원정보 수정
	public void updateUser(USER_INFO user);

	// 6. 회원정보 불러오기
	public USER_INFO getUser(String uiId);
	
	// 7. 회원탈퇴
	public void deleteUser(USER_INFO user);
	
	// 8. 아이디 찾기
	
	
	// 9. 비밀번호 찾기
	
	
	// 10. 내 프로젝트 목록 조회
	public ArrayList<PRJ_INFO> getMyPrjList(String uiId);
	
}
