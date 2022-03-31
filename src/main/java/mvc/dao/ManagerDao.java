package mvc.dao;

import java.util.ArrayList;

import mvc.vo.DeptInfo;
import mvc.vo.PRJ_INFO;
import mvc.vo.USER_INFO;
import mvc.vo.UserInfo;

public interface ManagerDao {

	public ArrayList<UserInfo> getUserList();
	
	public USER_INFO getUser(String uiId);
	
	public ArrayList<DeptInfo> getDeptList();
	
	public ArrayList<PRJ_INFO> getPrjList();
}
