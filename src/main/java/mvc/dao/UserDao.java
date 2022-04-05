package mvc.dao;

import java.util.ArrayList;
import java.util.List;

import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
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
	public String getId(USER_INFO user);
	
	// 9. 비밀번호 찾기
	public String getPw(USER_INFO user);
	
	public void updateTempPw(USER_INFO user);
	
	public String getEmail(USER_INFO user);
	
	
	// 10. 내 프로젝트 목록 조회
	public ArrayList<PRJ_INFO> getMyPrjList(String uiId);
	
	public ArrayList<PRJ_INFO> mainSearchPrj(PRJ_INFO prj);
	
	// 11. 참여하지않은 프로젝트 목록 조회
	
	public ArrayList<PRJ_INFO> getNewPrjList(String uiId);
	
	public ArrayList<PRJ_INFO> getWaitPrjList(String uiId);
	
	// 12. 프로젝트 참여
	
	public void joinPrj(PRJ_USER user);
	
	// 13. 프로젝트 만들기
	
	public void insertPrj(PRJ_INFO sch);
	
	// 14. 프로젝트 참여여부 확인
	
	public int isInPrj(PRJ_USER user);
	
	// 15. 프로필
		public void uptProfile(USER_INFO user);
	
}
