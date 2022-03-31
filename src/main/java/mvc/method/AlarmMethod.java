package mvc.method;

import org.springframework.stereotype.Component;

import mvc.vo.Alarm;
import mvc.vo.PRJ_TASK;
import mvc.vo.USER_INFO;

@Component
public class AlarmMethod {

	// 새로운 업무 알림
	public Alarm taskAlarm(USER_INFO user, PRJ_TASK ins, String piId) {
		
		Alarm alarm = new Alarm(user.getUiDept()+user.getUiName(), ins.getPtCharge(), "새 업무를 담당", piId);
		
		
		return alarm;
	}
	
	// 새로운 채팅 알림
	
	
	// 결재 상태 알림
	
	
	
}
