package mvc.dao;

import java.util.ArrayList;

import mvc.vo.PRJ_TASK;
import mvc.vo.Sch_Gantt;

public interface SchGanttDao {
	public ArrayList<Sch_Gantt> getSchGanttList();
	
	// 간트용
	public ArrayList<PRJ_TASK> getGanttList();
	
	
}