package mvc.dao;

import java.util.ArrayList;

import mvc.vo.PRJ_TASK;
import mvc.vo.TASK_CHECK;
import mvc.vo.TASK_GUIDE;
import mvc.vo.TASK_HISTORY;
import mvc.vo.TASK_OUTPUT;

public interface TaskDao {

	
	
	// ### 업무 등록
	// 1. 업무 등록
	public void insertTask(PRJ_TASK task);
	
	// ### 업무 상세 정보
	// (1) 업무 정보
		// 1. 업무 정보 조회
	public PRJ_TASK getTask(String ptId);
	
		// 2. 수정
	public void updateTask(PRJ_TASK task);
	
		// 3. 삭제
	public void deleteTask(String ptId);
	
	// (2) wbs
		// 1. wbs에 업무 위치 표기
	
	// (3) 산출물
		// 1. 산출물 등록
	public void insertOutput(TASK_OUTPUT output);
	
		// 2. 산출물 리스트 조회
	public ArrayList<TASK_OUTPUT> getOutputList(String ptId);
	
		// 3. 산출물 삭제
	public void deleteOutput(String toId);
	
	
	// (5) 가이드
		// 1. 가이드 내용 등록
	public void insertGuide(PRJ_TASK task);
		
		// 2. 가이드 내용 수정
	public void updateGuide(PRJ_TASK task);
	
		// 3. 체크 사항 등록
	public void insertCheck(TASK_CHECK check);
	
		// 4. 체크 사항 수정
	public void updateCheck(TASK_CHECK check);
	
		// 5. 체크 사항 삭제
	public void deleteCheck(String tcId);
	
		// 6. 첨부파일 추가
	public void insertGuideFile(TASK_GUIDE guide);
	
		// 7. 첨부파일 삭제
	public void deleteGuideFIle(String tgId);
	
	
	// (6) 히스토리
		// 1. 히스토리 등록
	public void insertHistory(TASK_HISTORY history);
	
		// 2. 히스토리 조회
	public ArrayList<TASK_HISTORY> getHistoryList(String ptId);
	
		// 3. 히스토리 수정
	public void updateHistory(TASK_HISTORY history);
	
		// 4. 히스토리 삭제
	public void deleteHistory(String thId);
	
	
	
}
