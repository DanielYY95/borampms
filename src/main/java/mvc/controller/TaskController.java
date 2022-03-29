package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mvc.method.AlarmMethod;
import mvc.method.SessionMethod;
import mvc.service.EtcService;
import mvc.service.TaskService;
import mvc.vo.Alarm;
import mvc.vo.PRJ_TASK;
import mvc.vo.TaskSch;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/task.do")
public class TaskController {
	@Autowired
	private TaskService service;
	
	@Autowired
	private EtcService etcservice;
	
	@Autowired
	private SessionMethod smethod;
	
	@Autowired
	private AlarmMethod amethod;
	
	@RequestMapping(params="method=list")
	public String taskList(TaskSch sch, Model d) {
		d.addAttribute("tasklist", service.getTaskList(sch));
		return "task/task_list";
	}
	
	@GetMapping(params="method=search")
	public String taskAjaxWord(@RequestParam("ptTitle") String ptTitle, @RequestParam("ptCharge") String ptCharge, 
							   @RequestParam("ptStartdate") String ptStartdate, @RequestParam("ptDuedate") String ptDuedate,
							   TaskSch sch, Model d) {
		sch.setPtTitle(ptTitle);
		sch.setPtCharge(ptCharge);
		sch.setPtStartdate(ptStartdate);
		sch.setPtDuedate(ptDuedate);
		
		d.addAttribute("schlist", service.getTaskList(sch));
		return "pageJsonReport";
	}
	

	@RequestMapping(params="method=insert")
	public String insertTask(HttpServletRequest request, PRJ_TASK ins, Alarm alarm, Model d) {
		
		
		ins.setPtGuidecontent("가이드 콘텐츠");
		
		smethod.getPiid(request);
		USER_INFO user = smethod.getUserSession(request);
		
		
		alarm = amethod.taskAlarm(user, ins, smethod.getPiid(request)); // 이렇게 주면 구현부에서 알아서 처리된다. 

		// 프로젝트 세션에서 프로젝트 고유번호를 받는다. 
		// 유저 세션에서 dept와 name을 받는다.
		// for 반복문으로 업무 담당자를 지정
		// 쓰여지는 때에 따라 다른 메시지	
		
		System.out.println("##"+alarm.getaFrom()+alarm.getaTo()+alarm.getaContent()+alarm.getPiId());
		
		etcservice.insertAlarm(alarm);
		
		service.insertTask(ins);
		return "forward:/task.do?method=list";
	}
}