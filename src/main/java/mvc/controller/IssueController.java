package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;

import mvc.service.IssueService;
import mvc.vo.IssueSch;
import mvc.vo.TASK_ISSUE;

@Controller
@RequestMapping("/issue.do")
public class IssueController {
	@Autowired
	private IssueService service;
	
	@RequestMapping(params="method=list")
	public String issueList(IssueSch sch, Model d) {
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
			   IssueSch sch, Model d) {
		sch.setCurPage(curPage);
		sch.setTiContent(schContent);
		sch.setTiCharge(schCharge);
		sch.setTiDuedate(schDuedate);
		sch.setTiPriority(schPriority);

		d.addAttribute("schIssuelist", service.getIssueList(sch));
		return "pageJsonReport";
	}
	
	
	@RequestMapping(params="method=insert")
	public String insertIssue(TASK_ISSUE ins) {
		ins.setTiWriter("테스트봇1");
		ins.setPtId("PT00032");
		
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
}