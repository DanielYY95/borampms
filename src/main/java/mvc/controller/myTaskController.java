package mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.TaskDetailService;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/mytask.do")
public class myTaskController {
	
	@Autowired
	private TaskDetailService service;
	
	@RequestMapping(params="method=list")
	public String mytaskList(HttpServletRequest request,Model d) {

		HttpSession session = request.getSession(); // 이런식으로 세션값을 가져온다.
		USER_INFO sch= (USER_INFO)session.getAttribute("user_info"); // 세션에 있던 것은 vo객체였으니...

		sch = service.getUser(sch.getUiId()); // 세션에있는 유저 vo객체의 id로 다시 한번 유저정보를 가져온다.

		d.addAttribute("tasklist", service.getMytaskList(sch)); // vo객체를 가지고 자신의 업무들을 가져온다. 
		
		return "task/mytask";
	}

}