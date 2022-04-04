package mvc.dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_TASK;

@Repository
public interface DashDao {
	// 업무 목록 불러오기
		public List<PRJ_TASK> gettaskDashlist(String piId);
		public List<PRJ_TASK> gettaskDashChart(String piId);
		public ArrayList<PRJ_INFO> getPrjList(String piId);

		
}