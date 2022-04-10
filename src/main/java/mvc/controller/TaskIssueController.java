package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import mvc.method.SessionMethod;
import mvc.service.IssueService;
import mvc.service.TaskDetailService;
import mvc.vo.IssueSch;
import mvc.vo.PRJ_TASK;
import mvc.vo.TASK_ISSUE;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/issue.do")
public class TaskIssueController {
	@Autowired
	private IssueService service;
	
	@Autowired
	private TaskDetailService tservice;
	
	@Autowired
	private SessionMethod smethod; // 세션 값 가져오는 메서드
	
	
	@RequestMapping(params="method=list")
	public String issueList(HttpServletRequest request, IssueSch sch, Model d) {
		
		sch.setPtId(smethod.getPtid(request));
		System.out.println("PTID:"+sch.getPtId());
		
		Gson gson = new Gson();
		String jsonlist = gson.toJson(service.getIssueList(sch));
		
		String ptId = smethod.getPtid(request);
		USER_INFO user = smethod.getUserSession(request);
		PRJ_TASK task = new PRJ_TASK(ptId, user.getUiDept(), user.getUiName());
		d.addAttribute("chargeChk", tservice.chargeChk(task));
		
		d.addAttribute("issuelist", service.getIssueList(sch));
		d.addAttribute("jsonlist", jsonlist);
		
		return "task/task_issue.jsp";
	}
	
	@GetMapping(params="method=search")
	public String taskAjaxWord(@RequestParam("curPage") int curPage,
				@RequestParam("schContent") String schContent, @RequestParam("schCharge") String schCharge, 
				@RequestParam("schDuedate") String schDuedate, @RequestParam("schPriority") String schPriority,
			   IssueSch sch, Model d, HttpServletRequest request) {
		sch.setCurPage(curPage);
		sch.setTiContent(schContent);
		sch.setTiCharge(schCharge);
		sch.setTiDuedate(schDuedate);
		sch.setTiPriority(schPriority);
		sch.setPtId(smethod.getPtid(request));
		
		System.out.println("PTID:"+sch.getPtId());
		

		d.addAttribute("schIssuelist", service.getIssueList(sch));
		return "pageJsonReport";
	}
	
	
	@RequestMapping(params="method=insert")
	public String insertIssue(TASK_ISSUE ins, HttpServletRequest request) {
		
		ins.setTiWriter(smethod.getUserSession(request).getUiId());
		ins.setPtId(smethod.getPtid(request));
		
		System.out.println("PTID:"+ins.getPtId());
		
		
		service.insertIssue(ins);
		
		return "redirect:/issue.do?method=list";
	}
	
	@RequestMapping(params="method=update")
	public String updateIssue(@RequestParam("tiId") String tiId,
							  @RequestParam("tiContent") String tiContent,
							  @RequestParam("tiCharge") String tiCharge,
							  @RequestParam("tiPriority") String tiPriority,
							  @RequestParam("tiDuedate") String tiDuedate,
							  TASK_ISSUE upt, Model d) {
		upt.setTiId(tiId);
		upt.setTiCharge(tiCharge);
		upt.setTiContent(tiContent);
		upt.setTiDuedate(tiDuedate);
		upt.setTiPriority(tiPriority);
		
		service.updateIssue(upt);
		
		return "redirect:/issue.do?method=list";
	}
	
	@RequestMapping(params="method=delete")
	public String deleteIssue(String tiId) {
		service.deleteIssue(tiId);
		
		return "redirect:/issue.do?method=list";
	}
	
	
	@RequestMapping(params="method=detail")
	public String detailIssue(String tiId, Model d) {
		

		d.addAttribute("issueDetail", service.getIssue(tiId));
		
		return "pageJsonReport";
	}
	
	
}