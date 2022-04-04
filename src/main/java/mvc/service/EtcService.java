package mvc.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.EtcDao;
import mvc.vo.Alarm;
import mvc.vo.Task_User;

@Service
public class EtcService {

	@Autowired
	private EtcDao dao;
	
	public void insertAlarm(Alarm alarm) {
		
		dao.insertAlarm(alarm);
		
	};
	
	
	public ArrayList<Alarm> getAlarmList(Task_User user){
		
		
		return dao.getAlarmList(user);
	};
	
	public void uptAlarm(String aid) {
		
		dao.uptAlarm(aid);
	};
	
	
	public void delAlarm(String aid) {
		
		dao.delAlarm(aid);
	};
	
	
	
}