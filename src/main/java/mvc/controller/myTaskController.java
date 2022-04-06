package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.SessionMethod;
import mvc.service.TaskDetailService;
import mvc.vo.Task_User;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/mytask.do")
public class myTaskController {
	
	@Autowired
	private TaskDetailService service;
	
	@Autowired
	private SessionMethod smethod; // 항상 필요하니...
	
	@RequestMapping(params="method=clist") // Task_User가 task_User로 모델데이터 활용된다
	public String mytaskListCharge(HttpServletRequest request,Model d, Task_User ins) {
		
		USER_INFO sch=  smethod.getUserSession(request);
		String piId = smethod.getPiid(request);
		
		ins.setUiId(sch.getUiId());
		ins.setPiId(piId);
		
		Task_User user = service.getUser(ins); // 세션에있는 유저 vo객체의 id로 다시 한번 유저정보를 가져온다.
		ins.setUiName(user.getUiName());
		ins.setUiDept(user.getUiDept());
	
		
		d.addAttribute("tasklist", service.getMytaskListC(ins)); // vo객체를 가지고 자신의 업무들을 가져온다. 
		
		return "task/mytaskCharge";
	}
	
	@RequestMapping(params="method=wlist")
	public String mytaskListWriter(HttpServletRequest request,Model d, Task_User ins) {

		USER_INFO sch=  smethod.getUserSession(request);
		String piId = smethod.getPiid(request);
		
		ins.setUiId(sch.getUiId());
		ins.setPiId(piId);
		
		d.addAttribute("tasklist", service.getMytaskListW(ins)); // vo객체를 가지고 자신의 업무들을 가져온다. 
		
		return "task/mytaskWriter";
	}
	

}