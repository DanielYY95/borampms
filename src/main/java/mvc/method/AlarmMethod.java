package mvc.method;

import java.util.ArrayList;

import org.springframework.stereotype.Component;

import mvc.vo.Alarm;
import mvc.vo.PRJ_TASK;
import mvc.vo.USER_INFO;

@Component
public class AlarmMethod {

	// 새로운 업무 알림
	public ArrayList<Alarm> taskAlarm(USER_INFO user, PRJ_TASK ins, String piId) {
		
		// 업무담당자가 여럿인 경우 알림 메시지가 여러개가 되어야한다. 
		ArrayList<Alarm> alarmList = new ArrayList<Alarm>();
		String[] chargeList = ins.getPtCharge().split(",");
		
		// 업무담당자 수만큼 반복
		for(String charge: chargeList) {
		
			Alarm alarm = new Alarm(user.getUiDept()+user.getUiName(), charge, "새 업무를 담당", piId);
			alarmList.add(alarm);
		
		}
		
		return alarmList;
	}
	
	// 새로운 채팅 알림
	
	
	// 결재 상태 알림
	
	
	
}
