package mvc.method;

import org.springframework.stereotype.Component;

import mvc.vo.Alarm;
import mvc.vo.PRJ_TASK;
import mvc.vo.USER_INFO;

@Component
public class AlarmMethod {

	public Alarm taskAlarm(USER_INFO user, PRJ_TASK ins, String piId) {
		
		Alarm alarm = new Alarm(user.getUiDept()+user.getUiName(), ins.getPtCharge(), "새 업무를 담당", piId);
		
		
		return alarm;
	}
	
	
	
}
