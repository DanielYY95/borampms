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

	public ArrayList<PRJ_TASK> getGanttList(PRJ_TASK pt){
		return dao.getGanttList(pt);
	}
	public ArrayList<Sch_Gantt> getSchGanttList(){
		return dao.getSchGanttList();
	}

	public void saveSchGantt(PRJ_TASK pt){
		dao.saveSchGantt(pt);
	}

	public void updateSchGantt(PRJ_TASK pt){
		dao.updateSchGantt(pt);
	}

	public void deleteSchGantt(PRJ_TASK pt){
		dao.deleteSchGantt(pt);
	}

}