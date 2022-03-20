package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService service;
	
	@GetMapping("/main.do")
	public String main() {
		
		return "main_login//main";
	}
	
	@RequestMapping("/loginFrm.do") 
	public String loginFrm() {

		return "main_login//login";
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
