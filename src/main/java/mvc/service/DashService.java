package mvc.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.DashDao;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_TASK;

@Service
public class DashService {

	@Autowired
	private DashDao dao;
	public List<PRJ_TASK> gettaskDashlist(String piId){
		return dao.gettaskDashlist(piId);
		
	}
	public List<PRJ_TASK> gettaskDashChart(String piId){
		return dao.gettaskDashChart(piId);
	}
	public ArrayList<PRJ_INFO> getPrjList(String piId){
		return dao.getPrjList(piId);
	}
}