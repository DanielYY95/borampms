package mvc.controller;

import java.util.ArrayList;

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
	

	@RequestMapping(params="method=insert") // 메인->프로젝트 목록 -> 업무목록으로 접근하는게 아니면 자꾸 에러가...
	public String insertTask(HttpServletRequest request, String uiId, PRJ_TASK ins, Model d) {
		
		// 프로젝트 고유번호가 없는 경우 대비

		ins.setPiId(smethod.getPiid(request)); 
		ins.setUiId(uiId); // 세션에서...
		ins.setPtGuidecontent("가이드 콘텐츠"); // 비워두면 안되나?
		
	
		USER_INFO user = smethod.getUserSession(request);
		
		
		ArrayList<Alarm> alarmList = amethod.taskAlarm(user, ins, smethod.getPiid(request)); // 이렇게 주면 구현부에서 알아서 처리된다. 

		// 프로젝트 세션에서 프로젝트 고유번호를 받는다. 
		// 유저 세션에서 dept와 name을 받는다.
		// for 반복문으로 업무 담당자를 지정
		// 쓰여지는 때에 따라 다른 메시지	
		
		for(Alarm a : alarmList) {
			System.out.println("##"+a.getaFrom()+a.getaTo()+a.getaContent()+a.getPiId());
			
			etcservice.insertAlarm(a);
		}
		
		service.insertTask(ins);
		return "forward:/task.do?method=list";
	}
}