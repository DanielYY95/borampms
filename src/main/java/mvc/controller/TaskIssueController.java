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
import mvc.vo.IssueSch;
import mvc.vo.TASK_ISSUE;

@Controller
@RequestMapping("/issue.do")
public class TaskIssueController {
	@Autowired
	private IssueService service;
	
	@Autowired
	private SessionMethod smethod; // 세션 값 가져오는 메서드
	
	
	@RequestMapping(params="method=list")
	public String issueList(HttpServletRequest request, IssueSch sch, Model d) {
		
		sch.setPtId(smethod.getPtid(request));
		System.out.println("PTID:"+sch.getPtId());
		
		Gson gson = new Gson();
		String jsonlist = gson.toJson(service.getIssueList(sch));
		
		
		
		d.addAttribute("issuelist", service.getIssueList(sch));
		d.addAttribute("jsonlist", jsonlist);
		
		return "task/task_issue";
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