package mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.EtcService;
import mvc.service.UserService;
import mvc.vo.Task_User;
import mvc.vo.USER_INFO;

@Controller
public class MainController {
	
	@Autowired
	private UserService service;
	
	@Autowired
	private EtcService etcservice;
	
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
		HttpSession session = request.getSession();
		USER_INFO sch= (USER_INFO)session.getAttribute("user_info");
		
		d.addAttribute("prjList", service.getMyPrjList(sch.getUiId()));
			
		return "main_login//prjList";
	}
	
	@RequestMapping("/prjDash.do")
	public String prjDash(HttpServletRequest request, Model d) {
		
		String piId = "PI00001";
		HttpSession session = request.getSession();
		USER_INFO user= (USER_INFO)session.getAttribute("user_info");
		
		System.out.println("##"+piId);
		System.out.println("##"+user.getUiDept());
		System.out.println("##"+user.getUiName());
		
		d.addAttribute("alarmList", etcservice.getAlarmList(new Task_User(piId, user.getUiDept(), user.getUiName())));
		
		return "dashboard//prjDash";
	}
	

	/*
	@RequestMapping("/logout.do") 
	public String loginout(HttpSession session, Model d) {

		// 1. 세션 종료
		session.invalidate();
		
		// 2. 세션 값 변경
		// d.addAttribute("members", new Members()); // 로그인한 요청값을 받을 수 있게 vo객체 만들어준다. 
		
		d.addAttribute("msg", "로그아웃이 되었습니다.");
		
		return "forward:/main.do";
	}
	
	
	
	
	// id 중복확인  mId 
	@RequestMapping("/regcheck.do")
	public String idChk(USER_INFO ins, Model d) {
		System.out.println("확인 : "+ins.getmId());
		d.addAttribute("result", service.idChk(ins));
		return "pageJsonReport";
	}
	
	// 닉네임 중복확인  mNick 
	@RequestMapping("/nickcheck.do")
	public String nickChk(USER_INFO ins, Model d) {
		System.out.println("확인 : "+ins.getmNick());
		d.addAttribute("result", service.nickChk(ins));
		return "pageJsonReport";
	}
	
	


	
	*/
}
