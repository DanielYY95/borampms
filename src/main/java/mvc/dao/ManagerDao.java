package mvc.dao;

import java.util.ArrayList;

import mvc.vo.DeptInfo;
import mvc.vo.Notice;
import mvc.vo.PRJ_INFO;
import mvc.vo.USER_INFO;
import mvc.vo.UserInfo;

public interface ManagerDao {

	public ArrayList<UserInfo> getUserList();
	
	public USER_INFO getUser(String uiId);
	
	public ArrayList<DeptInfo> getDeptList();
	
	public ArrayList<PRJ_INFO> getPrjList();
	
	public void uptCustomer(USER_INFO user);
	
	public void delCustomer(String uiId);

	public ArrayList<USER_INFO> searchUser(USER_INFO user);
	
	public int getTotalCnt(Notice sch);
	public ArrayList<Notice> getNoticeList(Notice sch);
	public void insertNotice(Notice ins);
	
}
