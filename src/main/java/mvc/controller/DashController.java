package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.DashService;

@Controller
@RequestMapping("/dash.do")
public class DashController {
	@Autowired
	private DashService service;
	
	//http://localhost:7090/borampms/dash.do?method=list
	@RequestMapping(params="method=list")
	public String taskList(Model d) {
		d.addAttribute("dashlist", service.taskDashlist());
		return "/dashboard/TaskDash";
	}

	
}