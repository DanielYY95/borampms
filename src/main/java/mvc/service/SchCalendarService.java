package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.SchCalendarDao;
import mvc.vo.Calendar;

@Service
public class SchCalendarService {
	@Autowired
	private SchCalendarDao dao;
	public List<Calendar> getCalendarList(){
		return dao.getCalendarList();
	}
	public void insertCalendar(Calendar ins) {
		dao.insertCalendar(ins);
	}
	public void updateCalendar(Calendar upt) {
		dao.updateCalendar(upt);
	}
	public void deleteCalendar(int id) {
		dao.deleteCalendar(id);
	}
}