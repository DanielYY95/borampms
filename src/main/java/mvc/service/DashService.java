package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.DashDao;
import mvc.dao.TaskDao;
import mvc.vo.PRJ_TASK;
import mvc.vo.TaskSch;

@Service
public class DashService {

	@Autowired
	private DashDao dao;
	public List<PRJ_TASK> taskDashlist(){
		return dao.taskDashlist();
		
	}

}
