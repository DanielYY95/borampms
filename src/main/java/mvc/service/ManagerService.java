package mvc.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.ManagerDao;
import mvc.vo.DeptInfo;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
import mvc.vo.USER_INFO;
import mvc.vo.UserInfo;


@Service
public class ManagerService {

	@Autowired
	private ManagerDao dao;
	
	public ArrayList<UserInfo> getUserList(){
		
		
		return dao.getUserList();
	};
	
	public USER_INFO getUser(String uiId) {
		
		return dao.getUser(uiId);
	};
	
	public void uptCustomer(USER_INFO user) {
		
		
		dao.uptCustomer(user);
	};
	
	public void delCustomer(String uiId) {
		
		dao.delCustomer(uiId);
	};
	
	public ArrayList<USER_INFO> searchUser(USER_INFO user){
		
		if(user.getUiDept().equals("전체")) user.setUiDept("");
		if(user.getUiRank().equals("전체")) user.setUiRank("");

		return dao.searchUser(user);
	};
	
	
	
	
	
	public ArrayList<DeptInfo> getDeptList(){
		
		
		return dao.getDeptList();
	}
	
	public void addDept(DeptInfo dept) {
		
		dao.addDept(dept);
	}
	
	public void uptDept(DeptInfo dept) {
		
		dao.uptDept(dept);
	};
	
	public DeptInfo getDept(String diId) {
		
		return dao.getDept(diId);
	};
	
	
	
	
	
	public ArrayList<PRJ_INFO> getPrjList(){
		
		
		return dao.getPrjList();
	};
	
	public void uptPrj(PRJ_INFO prj) {
		
		dao.uptPrj(prj);
	};
	
	public PRJ_INFO getPrj(String piId) {
		
		
		return dao.getPrj(piId);
	};
	
	public ArrayList<PRJ_INFO> searchPrj(PRJ_INFO prj){
		
		return dao.searchPrj(prj);
	};
	
	
	





	
	public ArrayList<PRJ_USER> getPrjUserList(){
		
	
		return dao.getPrjUserList();
	};
	
	public void uptPrjUser(PRJ_USER sch) {
		
		dao.uptPrjUser(sch);
	};
	
	public PRJ_USER getPrjUser(String puId) {
		
		return dao.getPrjUser(puId);
	};
	
	public ArrayList<PRJ_USER> searchPrjUser(PRJ_USER sch){
		
		if(sch.getUiDept() != null && sch.getUiDept().equals("전체")) {
			
				sch.setUiDept("");
		}
		

		
		return dao.searchPrjUser(sch);
	};
	
	
}