package mvc.dao;

import java.util.ArrayList;

import mvc.vo.DeptInfo;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
import mvc.vo.USER_INFO;
import mvc.vo.UserInfo;

public interface ManagerDao {

	public ArrayList<UserInfo> getUserList();
	
	public USER_INFO getUser(String uiId);
	
	public void uptCustomer(USER_INFO user);
	
	public void delCustomer(String uiId);

	public ArrayList<USER_INFO> searchUser(USER_INFO user);
	
	
	public ArrayList<DeptInfo> getDeptList();
	
	public void addDept(DeptInfo dept);
	
	public void uptDept(DeptInfo dept);
	
	public DeptInfo getDept(String diId);
	
	
	
	public ArrayList<PRJ_INFO> getPrjList();
	
	public void uptPrj(PRJ_INFO prj);
	
	public PRJ_INFO getPrj(String piId);
	
	public ArrayList<PRJ_INFO> searchPrj(PRJ_INFO prj);
	
	
	
	
	
	
	public ArrayList<PRJ_USER> getPrjUserList();
	
	public void uptPrjUser(PRJ_USER sch);
	
	public PRJ_USER getPrjUser(String puId);
	
	public ArrayList<PRJ_USER> searchPrjUser(PRJ_USER sch);
	
}
