package mvc.dao;

import java.util.ArrayList;

import mvc.vo.Alarm;
import mvc.vo.Task_User;

public interface EtcDao {

	
	public void insertAlarm(Alarm alarm);
	public ArrayList<Alarm> getAlarmList(Task_User user);
	public void uptAlarm(String aid);
	public void delAlarm(String aid);
	
	
	
}
