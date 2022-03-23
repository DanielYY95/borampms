package mvc.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.SchGanttDao;
import mvc.vo.PRJ_TASK;
import mvc.vo.Sch_Gantt;

@Service
public class SchGanttService {
	@Autowired
	private SchGanttDao dao;

	public ArrayList<Sch_Gantt> getSchGanttList(){
		return dao.getSchGanttList();
	}
	
	public ArrayList<PRJ_TASK> getGanttList(){
		
		return dao.getGanttList();
	}
	
}
