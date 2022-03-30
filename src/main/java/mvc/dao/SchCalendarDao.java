package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.Calendar;

@Repository
public interface SchCalendarDao {
	public List<Calendar> getCalendarList();
	public void insertCalendar(Calendar ins);
	public void updateCalendar(Calendar upt);
	public void deleteCalendar(int id);	

}