package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.TaskDetailService;
import mvc.vo.PRJ_TASK;
import mvc.vo.TASK_OUTPUT;

@Controller
public class TaskDetailController {

	@Autowired
	private TaskDetailService service;
	
	
	@RequestMapping("/taskDetail.do")
	public String goDetail() {
		
		return "task//taskDetail";
	}
	
	@RequestMapping("/taskUpt.do") // ptId를 포함한 vo객체 받는다.
	public String taskUpdate(PRJ_TASK task, Model d) {
		
		service.updateTask(task);
		d.addAttribute("msg", "수정완료");
		
		return "task//taskDetail";
	}
	
	@RequestMapping("/toFrm.do")
	public String toFrm() {
		
		
		return "task//taskOutput";
	}
	
	@RequestMapping("/toInsert.do") //post방식이라 forward 적극 활용할 것
	public String toInsert(TASK_OUTPUT output, Model m) {
		
		output.setToWriter("aaa123");
		output.setPtId("pt00111");
		
		// 등록 처리
		m.addAttribute("msg", service.insertOutput(output)); // forward 할 때 요거 넘겨주나?
		
		return "task//taskOutput";
	}
	
}
