package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import mvc.service.SchGanttService;

@Controller
public class SchGanttController {

	@Autowired
	private SchGanttService service;

	@GetMapping("/schGantt.do")
	public String SchGanttList() {

		return "schedule//schGantt";
	}
}