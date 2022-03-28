package mvc.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import mvc.vo.Sch_Calendar;

@Repository
public interface SchCalendarDao {
	public List<Sch_Calendar> getCalendarList();
	public void insertCalendar(Sch_Calendar ins);
	public void updateCalendar(Sch_Calendar upt);
	public void deleteCalendar(int id);	

}