package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import mvc.method.SessionMethod;
import mvc.service.DashService;
import mvc.service.EtcService;
import mvc.service.UserService;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
import mvc.vo.Task_User;
import mvc.vo.USER_INFO;

@Controller
@SessionAttributes("prj_info")
public class MainController {
	
	@Autowired
	private DashService dservice;
	
	@Autowired
	private UserService service;
	
	@Autowired
	private EtcService etcservice;
	
	@Autowired
	private SessionMethod smethod; // 항상 필요하니...
	
	@ModelAttribute("prj_info")
	public PRJ_INFO getPrj() {
		return new PRJ_INFO();
	}
	
	
	@RequestMapping("/main.do")
	public String main() {
		
		return "main_login//main";
	}
	
	@RequestMapping("/loginFrm.do") 
	public String loginFrm(String toURL, Model d) {

		d.addAttribute("toURL", toURL); // 원래 요청 url
		
		return "main_login//login";
	}
	
	@RequestMapping("/prjList.do")
	public String prjList(HttpServletRequest request, Model d) {
		
		USER_INFO user=  smethod.getUserSession(request);
		
		String uiId = user.getUiId();
		
		d.addAttribute("prjList", service.getMyPrjList(uiId));
		d.addAttribute("newPrjList", service.getNewPrjList(uiId));
		d.addAttribute("waitPrjList", service.getWaitPrjList(uiId));
			
		return "main_login//prjList";
	}
	
	@RequestMapping("/joinPrj.do")
	public String joinPrj(HttpServletRequest request, String piId, Model d) {
		
		USER_INFO user=  smethod.getUserSession(request);
		service.joinPrj(new PRJ_USER(piId, user.getUiId()));
		
		
		return "forward:/prjList.do";
	}
	
	
	@GetMapping("/addPrjFrm.do")
	public String addPrj() {
		
		
		return "main_login/addPrj";
	}
	
	@PostMapping("/insertPrj.do")
	public String insertPrj(PRJ_INFO sch) {
		
		service.insertPrj(sch);
		
		
		return "forward:/prjList.do";
	}
	
	
	
	@RequestMapping("/prjDash.do") // 메인->프로젝트 목록 -> 대시보드로 접근하는게 아니면 자꾸 에러가...
	public String prjDash(@ModelAttribute("prj_info") PRJ_INFO pi, Model d) {
		// 이걸로 세션값을 받아온다. Prj_info vo객체에 piId 를 요청값으로 보내줬으니
		

		
		d.addAttribute("dashlist", dservice.taskDashlist());
		
		return "dashboard/TaskDash";
	}
	
	
	@RequestMapping("/alarmList.do")
	public String alarmList(@ModelAttribute("prj_info") PRJ_INFO pi, 
			HttpServletRequest request, Model d) {
		
		USER_INFO user= smethod.getUserSession(request);
		d.addAttribute("alarmList", etcservice.getAlarmList(new Task_User(pi.getPiId(), user.getUiDept(), user.getUiName())));
		
		return "pageJsonReport";
	}
	
	
	
	
}