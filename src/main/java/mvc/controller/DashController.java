package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.SessionMethod;
import mvc.service.DashService;
import mvc.service.TaskService;

@Controller
@RequestMapping("/dash.do")
public class DashController {
	@Autowired
	private DashService service;
	@Autowired
	private  SessionMethod SM;
	
	//http://localhost:7090/borampms/dash.do?method=list
	@RequestMapping(params="method=list")
	public String taskList(Model d, HttpServletRequest request) {
		String piId = SM.getPiid(request);
		System.out.println("piId 확인 "+piId);
		
		d.addAttribute("dashlist", service.gettaskDashlist(piId));
		d.addAttribute("taskDashChart", service.gettaskDashChart(piId));
		d.addAttribute("prjList", service.getPrjList(piId));
		return "/dashboard/TaskDash";
	}
	
		
}