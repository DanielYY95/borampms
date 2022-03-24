package mvc.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import mvc.service.SchGanttService;
import mvc.vo.PRJ_TASK;

@Controller
public class SchGanttController {

	@Autowired
	private SchGanttService service;

	@GetMapping("/schGantt.do")
	public String SchGanttList(PRJ_TASK pt, Model d) {
		return "schedule//schGantt";
	}

	@GetMapping("/schGanttJson.do")
	public String schGanttJson(PRJ_TASK pt, Model d) {
		ArrayList<PRJ_TASK> resultList  = service.getGanttList(pt);
		d.addAttribute("result", resultList);
		return "pageJsonReport";
	}

	@GetMapping(value = "/saveSchGantt.do")
	public String saveSchGantt(PRJ_TASK pt) {

		ArrayList<PRJ_TASK> map = new ArrayList<PRJ_TASK>();
		service.saveSchGantt(pt);
		return "pageJsonReport";
	}

	@GetMapping(value = "/updateSchGantt.do")
	public String updateSchGantt(PRJ_TASK pt) {

		ArrayList<PRJ_TASK> map = new ArrayList<PRJ_TASK>();
		service.updateSchGantt(pt);
		return "pageJsonReport";
	}

	@GetMapping(value = "/deleteSchGantt.do")
	public String deleteSchGantt(PRJ_TASK pt) {

		ArrayList<PRJ_TASK> map = new ArrayList<PRJ_TASK>();
		service.deleteSchGantt(pt);
		return "pageJsonReport";
	}
}