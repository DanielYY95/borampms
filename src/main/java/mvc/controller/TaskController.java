package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.TaskService;
import mvc.vo.PRJ_TASK;
import mvc.vo.TaskSch;

@Controller
@RequestMapping("/task.do")
public class TaskController {
	@Autowired
	private TaskService service;
	
	@RequestMapping(params="method=list")
	public String taskList(TaskSch sch, Model d) {
		d.addAttribute("tasklist", service.getTaskList(sch));
		return "task/task_list";
	}
	@GetMapping(params="method=ajax")
	public String taskajax(TaskSch sch, Model d) {
		d.addAttribute("tasklist", service.getTaskList(sch));
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=insert")
	public String insertTask(PRJ_TASK ins, Model d) {
		ins.setUiId("asd456");
		ins.setPiId("PI00001");
		ins.setPtGuidecontent("가이드 콘텐츠");
		
		d.addAttribute("msg", service.insertTask(ins));
		return "redirect:/task.do?method=list&ptTitle=''&ptCharge=''";
	}
}