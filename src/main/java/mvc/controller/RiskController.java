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
import mvc.vo.PRJ_ISSUE;
import mvc.vo.prjIssueSch;

@Controller
@RequestMapping("/risk.do")
public class RiskController {
	@Autowired
	private IssueService service;
	
	@Autowired
	private SessionMethod smethod; // 세션 값 가져오는 메서드
	
	
	@RequestMapping(params="method=list")
	public String prjissueList(HttpServletRequest request, prjIssueSch sch, Model d) {
		
		sch.setPiId(smethod.getPiid(request));
		System.out.println("PIID:"+sch.getPiId());
		
		Gson gson = new Gson();
		String jsonlist = gson.toJson(service.getPrjIssueList(sch));
		
		
		
		d.addAttribute("issuelist", service.getPrjIssueList(sch));
		d.addAttribute("jsonlist", jsonlist);
		
		return "task/prj_issue";
	}
	
	@GetMapping(params="method=search")
	public String taskAjaxprjWord(@RequestParam("curPage") int curPage,
				@RequestParam("schContent") String schContent, @RequestParam("schCharge") String schCharge, 
				@RequestParam("schDuedate") String schDuedate, @RequestParam("schPriority") String schPriority,
			   prjIssueSch sch, Model d, HttpServletRequest request) {
		sch.setCurPage(curPage);
		sch.setiContent(schContent);
		sch.setiCharge(schCharge);
		sch.setiDuedate(schDuedate);
		sch.setiPriority(schPriority);
		sch.setPiId(smethod.getPiid(request));
		
		System.out.println("PIID:"+sch.getPiId());
		

		d.addAttribute("schPrjIssuelist", service.getPrjIssueList(sch));
		return "pageJsonReport";
	}
	
	
	@RequestMapping(params="method=insert")
	public String prjinsertIssue(PRJ_ISSUE ins, HttpServletRequest request) {
		
		ins.setiWriter(smethod.getUserSession(request).getUiId());
		ins.setPiId(smethod.getPiid(request));
		
		System.out.println("PIID:"+ins.getPiId());
		
		
		service.insertPrjIssue(ins);
		
		return "redirect:/risk.do?method=list";
	}
	
	@RequestMapping(params="method=update")
	public String updateprjIssue(@RequestParam("iId") String iId,
							  @RequestParam("iContent") String iContent,
							  @RequestParam("iCharge") String iCharge,
							  @RequestParam("iPriority") String iPriority,
							  @RequestParam("iDuedate") String iDuedate,
							  PRJ_ISSUE upt, Model d) {
		upt.setiId(iId);
		upt.setiCharge(iCharge);
		upt.setiContent(iContent);
		upt.setiDuedate(iDuedate);
		upt.setiPriority(iPriority);
		
		service.updatePrjIssue(upt);
		
		return "redirect:/risk.do?method=list";
	}
	
	@RequestMapping(params="method=delete")
	public String deleteprjIssue(String iId) {
		service.deletePrjIssue(iId);
		
		return "redirect:/risk.do?method=list";
	}
	
	@RequestMapping(params="method=detail")
	public String detailPrjIssue(String iId, Model d) {
		

		d.addAttribute("issueDetail", service.getPrjIssue(iId));
		
		return "pageJsonReport";
	}
	
	
	
}