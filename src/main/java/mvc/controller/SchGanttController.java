package mvc.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.service.SchGanttService;
import mvc.vo.PRJ_TASK;

@Controller
public class SchGanttController {

	@Autowired
	private SchGanttService service;

	@GetMapping("/schGantt.do")
	public String SchGanttList(PRJ_TASK pt, Model d) {
		d.addAttribute("result", service.getGanttList());
		return "project//schedule//schGantt";
	}

	@RequestMapping(value = "/saveSchGantt.do")
	@ResponseBody
	public ArrayList<PRJ_TASK> saveSchGantt() {

		ArrayList<PRJ_TASK> map = new ArrayList<PRJ_TASK>();
		/* map = service.getSchGanttList(); */

		return map;
	}
}