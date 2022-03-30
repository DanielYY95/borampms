package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import mvc.method.SessionMethod;
import mvc.service.DashService;
import mvc.service.EtcService;
import mvc.service.UserService;
import mvc.vo.PRJ_INFO;
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
		d.addAttribute("prjList", service.getMyPrjList(user.getUiId()));
			
		return "main_login//prjList";
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