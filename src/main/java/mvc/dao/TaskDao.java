package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.PRJ_TASK;
import mvc.vo.TaskSch;

@Repository
public interface TaskDao {
	// 전체 업무 개수
	public int getTotalCnt(TaskSch sch);
	// 업무 목록 불러오기
	public List<PRJ_TASK> getTaskList(TaskSch sch);
	
	
	// 업무 등록
	public String insertTask(PRJ_TASK ins);
	
}