package mvc.service;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.SchCalendarDao;
import mvc.vo.Sch_Calendar;

@Service
public class SchCalendarService {
	@Autowired
	private SchCalendarDao dao;
	public List<Sch_Calendar> getCalendarList(){
		return dao.getCalendarList();
	}
	public void insertCalendar(Sch_Calendar ins) {
		dao.insertCalendar(ins);
	}
	public void updateCalendar(Sch_Calendar upt) {
		dao.updateCalendar(upt);
	}
	public void deleteCalendar(int id) {
		dao.deleteCalendar(id);
	}
}
