package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.SchGanttService;

@Controller
public class SchGanttController {

	@Autowired
	private SchGanttService service;

	@GetMapping("/schGantt.do")
	public String SchGanttList() {

		return "schedule//schGantt";
	}
	
	@RequestMapping("/gantt.do")
	public String gantt() {
		
		
		return "schedule//gantt";
	}
	
	@RequestMapping("/ganttData.do")
	public String getGanttList(Model d) {
		
		
		d.addAttribute("ganttList", service.getGanttList());
		
		return "pageJsonReport";
	}
		
	
}