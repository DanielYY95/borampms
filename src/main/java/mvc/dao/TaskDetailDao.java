package mvc.dao;

import java.util.ArrayList;
import java.util.List;

import mvc.vo.PRJ_TASK;
import mvc.vo.TASK_OUTPUT;
import mvc.vo.Task_User;
import mvc.vo.USER_INFO;

public interface TaskDetailDao {
	
	public int getMyWTaskCnt(Task_User user);
	public List<Task_User> getMytaskListW(Task_User user);
	
	public int getMyCTaskCnt(Task_User user);
	public List<Task_User> getMytaskListC(Task_User user);
	
	public Task_User getUser(Task_User user);
	
	
	
	
	
	// ### 업무 등록
	// 1. 업무 등록
	public void insertTask(PRJ_TASK task);
	
	// ### 업무 상세 정보
	// (1) 업무 정보
		// 1. 업무 정보 조회
	public Task_User getTask(String ptId);
	
		// 2. 수정
	public void updateTask(PRJ_TASK task);
	
		// 3. 삭제
	public void delTask(String ptId);
	
		// 3-1. 삭제를 위한 비밀번호 확인
	public int pwChk(USER_INFO sch);
	
	
	// (2) wbs
		// 1. wbs에 업무 위치 표기
	
	// (3) 산출물
		// 1. 산출물 등록
	public void insertOutput(TASK_OUTPUT output);
	
		// 2. 산출물 리스트 조회
	public ArrayList<TASK_OUTPUT> getOutputList(String ptId);
	
		// 3. 산출물 삭제
	public void deleteOutput(String toFile);
	
	
	// 업무담당자인지 확인
	public int chargeChk(PRJ_TASK task);
	
	
}
