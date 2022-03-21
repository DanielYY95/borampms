package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.TaskService;
import mvc.vo.TASK_OUTPUT;

@Controller
public class TaskController {

	@Autowired
	private TaskService service;
	
	
	@RequestMapping("/toFrm.do")
	public String toFrm() {
		
		
		return "project//task//taskOutput";
	}
	
	@RequestMapping("/toInsert.do") //post방식이라 forward 적극 활용할 것
	public String toInsert(TASK_OUTPUT output, Model m) {
		
		output.setToWriter("aaa123");
		output.setPtId("pt00111");
		
		// 등록 처리
		m.addAttribute("msg", service.insertOutput(output)); // forward 할 때 요거 넘겨주나?
		
		return "project//task//taskOutput";
	}
	
}
