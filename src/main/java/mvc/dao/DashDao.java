package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.PRJ_TASK;

@Repository
public interface DashDao {
	// 업무 목록 불러오기
		public List<PRJ_TASK> taskDashlist();
		public List<PRJ_TASK> getDashUser();
}