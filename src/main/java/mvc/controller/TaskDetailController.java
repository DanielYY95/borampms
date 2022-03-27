package mvc.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import mvc.service.TaskDetailService;
import mvc.vo.PRJ_TASK;
import mvc.vo.TASK_OUTPUT;


@Controller
@SessionAttributes("prj_task") 
public class TaskDetailController {

	@ModelAttribute("prj_task")
	public PRJ_TASK getPrjTask() {
		return new PRJ_TASK();
	}
	
	@Autowired
	private TaskDetailService service;

	
	@RequestMapping("/taskDetail.do")
	public String goDetail(@ModelAttribute("prj_task") PRJ_TASK sch, Model d, HttpServletResponse response) {
		
		d.addAttribute("taskUser", service.getTask(sch.getPtId()));
		Cookie cookie = new Cookie("ptid", sch.getPtId()); 
		
		response.addCookie(cookie);
		
		return "task//taskDetail";
	}
	
	@PostMapping("/taskUpt.do") // ptId를 포함한 vo객체 받는다.
	public String taskUpdate(PRJ_TASK task, Model d) {
		
		service.updateTask(task);
		d.addAttribute("msg", "수정완료");
		// 수정하고나서 수정된 정보를 보여줘야하니....
		d.addAttribute("taskUser", service.getTask(task.getPtId()));
		
		
		return "task//taskDetail";
	}
	
	@RequestMapping("/toFrm.do")
	public String toFrm(String ptId, Model d) {
		
		d.addAttribute("ptId", ptId);
		
		return "task//taskOutput";
	}
	
	@PostMapping("/toInsert.do") //post방식이라 forward 적극 활용할 것
	public String toInsert(TASK_OUTPUT output, Model m) {
		
		output.setPtId("pt00111");
		
		// 등록 처리
		m.addAttribute("msg", service.insertOutput(output)); // forward 할 때 요거 넘겨주나?
		
		return "task//taskOutput";
	}
	
	@RequestMapping("/taskDel.do")
	public String taskDel(String ptId, Model d) {
		
		service.delTask(ptId);
		d.addAttribute("msg", "삭제되었습니다!");
		
		
		return "forward:/task.do?method=list";
	}
	
}
