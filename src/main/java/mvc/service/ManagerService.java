package mvc.service;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.ManagerDao;
import mvc.vo.DeptInfo;
import mvc.vo.PRJ_INFO;
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
	
	public ArrayList<DeptInfo> getDeptList(){
		
		
		return dao.getDeptList();
	}
	
	public ArrayList<PRJ_INFO> getPrjList(){
		
		
		return dao.getPrjList();
	};
	
	
}