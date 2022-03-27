package mvc.dao;

import java.util.ArrayList;

import mvc.vo.PRJ_INFO;

public interface PrjDao {
	
	// 프로젝트와 참여자 목록이 있어야....
	public ArrayList<PRJ_INFO> getPrjList();
	
	
}
