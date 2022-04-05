package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.SessionMethod;
import mvc.service.DashService;
import mvc.vo.PRJ_USER;

@Controller
@RequestMapping("/dash.do")
public class DashController {
	@Autowired
	private DashService service;
	@Autowired
	private  SessionMethod SM;
	
	//http://localhost:7090/borampms/dash.do?method=list
	@RequestMapping(params="method=list")
	public String taskList(Model d, HttpServletRequest request, PRJ_USER prj) {
		String piId = SM.getPiid(request);
		prj.setPiId(piId);
		
		d.addAttribute("dashlist", service.gettaskDashlist(piId));
		d.addAttribute("taskDashChart", service.gettaskDashChart(piId));
		d.addAttribute("prjList", service.getPrjList(piId));
		d.addAttribute("userNum", service.getPrjUserNum(prj));
		
		return "/dashboard/TaskDash";
	}
	
		
}