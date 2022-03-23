package mvc.dao;

import java.util.ArrayList;

import mvc.vo.PRJ_TASK;
import mvc.vo.Sch_Gantt;

public interface SchGanttDao {
	//1. 조회
	public ArrayList<PRJ_TASK> getGanttList();
	public ArrayList<Sch_Gantt> getSchGanttList();
	//2. 등록

	//3. 수정

	//4. 삭제

	//5. 저장

}