package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.DashDao;
import mvc.vo.PRJ_TASK;

@Service
public class DashService {

	@Autowired
	private DashDao dao;
	public List<PRJ_TASK> gettaskDashlist(){
		return dao.gettaskDashlist();
		
	}
	public List<PRJ_TASK> gettaskDashChart(){
		return dao.gettaskDashChart();
	}
}