package mvc.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import mvc.method.SessionMethod;
import mvc.service.SchGanttService;
import mvc.service.TaskDetailService;
import mvc.vo.PRJ_TASK;
import mvc.vo.TASK_OUTPUT;
import mvc.vo.USER_INFO;


@Controller
@SessionAttributes("prj_task") 
public class TaskDetailController {

	@ModelAttribute("prj_task")
	public PRJ_TASK getPrjTask() {
		return new PRJ_TASK();
	}
	
	@Autowired
	private TaskDetailService service;
	
	@Autowired
	private SchGanttService gservice;
	
	@Autowired
	private SessionMethod smethod; 

	@RequestMapping("/taskDetail.do")
	public String goDetail(@ModelAttribute("prj_task") PRJ_TASK sch, Model d, HttpServletRequest request) {
		// 세션값 잘 불러와진다
		
		d.addAttribute("taskUser", service.getTask(sch.getPtId()));
	
		return "task//taskDetail.jsp";
	}
	
	@RequestMapping("/taskUpt.do") // ptId를 포함한 vo객체 받는다.
	public String taskUpdate(PRJ_TASK task, Model d) {
		
		service.updateTask(task);
		d.addAttribute("msg", "수정완료");
		// 수정하고나서 수정된 정보를 보여줘야하니....
		d.addAttribute("taskUser", service.getTask(task.getPtId()));
		
		
		return "redirect:/taskDetail.do"; 
	}
	
	@RequestMapping("/pwchk.do") //  Controller 메서드의 파라메터를 HttpRequest의 파라메터로 연결해서 사용하려면 @ReqParam 어노테이션을 주고 value도 꼭 주어야 한다
	public String pwchk(HttpServletRequest request, @RequestParam(value="pw") String pw, Model d) {
		USER_INFO sch=  smethod.getUserSession(request);
		
		sch.setUiPw(pw);
		System.out.println(sch.getUiId());
		System.out.println(pw);
		
		d.addAttribute("result", service.pwChk(sch));
		
		return "pageJsonReport";
	}
	
	
	@RequestMapping("/taskDel.do")
	public String taskDel(HttpServletRequest request, Model d) {
		
		String ptId = smethod.getPtid(request);
		

		service.delTask(ptId);
		
		d.addAttribute("msg", "삭제되었습니다!");
		
		
		return "redirect:/task.do?method=list";
	}
	
	@RequestMapping("/taskWbs.do")
	public String taskWbs(HttpServletRequest request, PRJ_TASK pt, Model d) {
		
		String piId = smethod.getPiid(request);
		pt.setPiId(piId);
		
		ArrayList<PRJ_TASK> resultList  = gservice.getGanttList(pt);
		d.addAttribute("result", resultList);
		
		return "task//task_wbs.jsp";
	}
	
	@RequestMapping("/taskIssue.do")
	public String taskIssue() {
		
		
		
		return "task//Issue.jsp";
	}
	
	
	
	@RequestMapping("/toFrm.do")
	public String toFrm(HttpServletRequest request, Model d) {
		
		String ptId = smethod.getPtid(request);
		USER_INFO user = smethod.getUserSession(request);
		PRJ_TASK task = new PRJ_TASK(ptId, user.getUiDept(), user.getUiName());
		d.addAttribute("chargeChk", service.chargeChk(task));
		d.addAttribute("outputList", service.getOutputList(ptId));
		
		
		return "task//taskOutput.jsp";
	}
	
	@PostMapping("/toInsert.do") //post방식이라 forward 적극 활용할 것
	public String toInsert(HttpServletRequest request, TASK_OUTPUT output, Model m) {
		
		String ptId = smethod.getPtid(request);
		output.setPtId(ptId);
		
		// 등록 처리
		m.addAttribute("msg", service.insertOutput(output)); // forward 할 때 요거 넘겨주나?
		
		return "redirect:/toFrm.do";
	}
	
	@RequestMapping("/toDelete.do")
	public String toDelete(String toFile, Model d) {
	
		service.deleteOutput(toFile);
		d.addAttribute("msg", "산출물을 삭제했습니다!");
		
	
		return "redirect:/toFrm.do";
	}
}
