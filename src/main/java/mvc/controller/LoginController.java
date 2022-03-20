package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping("/loginFrm.do") 
	public String loginFrm() {

		return "main_login//login";
	}
	
	@RequestMapping("/regFrm.do")
	public String regFrm(Model d) {
	
		return "main_login//reg";
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
	
	//회원가입 form
	@RequestMapping("/reginsert.do")
	public String insertMembers(USER_INFO ins, Model d) {
		int resultId = service.idChk(ins);
		int resultNick = service.nickChk(ins);
		
		if(resultId == 1 || resultNick == 1) {
			d.addAttribute("msg", "이미 등록된 아이디나 닉네임으로 회원가입할 수 없습니다.");
			return "login_reg_main//reg";
		} else{
			service.insertMembers(ins);
			d.addAttribute("msg", "회원가입을 축하드립니다!");
			d.addAttribute("members", new USER_INFO()); // 초기화시킴
		} 
		
		return "forward:/main.do";
	}
	
	
	// 왜 자동으로 로그인이 되는 건지... => @ModelAttribute 로 vo객체를 사용하면 그런듯....
	
	
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
