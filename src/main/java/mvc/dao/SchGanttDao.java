package mvc.dao;

import java.util.ArrayList;

import mvc.vo.PRJ_TASK;
import mvc.vo.Sch_Gantt;

public interface SchGanttDao {
	//1. 조회
	public ArrayList<PRJ_TASK> getGanttList(PRJ_TASK pt);
	public ArrayList<Sch_Gantt> getSchGanttList();
	//2. 등록
	public void saveSchGantt(PRJ_TASK pt);
	//3. 수정
	public void updateSchGantt(PRJ_TASK pt);
	//4. 삭제
	public void deleteSchGantt(PRJ_TASK pt);
	//5. 저장

}