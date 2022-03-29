package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import mvc.service.UserService;
import mvc.vo.USER_INFO;

@Controller
@SessionAttributes("USER")
@RequestMapping("/login.do")
public class LoginSessionController {

	@ModelAttribute("USER")
	public USER_INFO getUser() {
		return new USER_INFO();
	}
	
	@Autowired
	private UserService service;
	
	//(2)세션 유지 페이지 
	@RequestMapping(params="method=session")
	//@RequestMapping("/login.do")
	public String login(@ModelAttribute("USER") USER_INFO sch, Model d) {
		// 잘 받아온다
		sch = service.login(sch);
		
	
		if(sch!=null) {
			d.addAttribute("loginMsg","로그인 성공!");
			
		}else{
			d.addAttribute("loginMsg","로그인 실패~");
		}
		d.addAttribute("USER",sch); // 이렇게 해야 로그인 실패할때 빈값으로 보내진다.
		
		return "forward:/login.do?method=login";
	}
	// 로그인 실패해도 계속 빈 객체가 뷰단으로 보내지는 것 같다. => 해결
	 
	@RequestMapping(params="method=login")
		public String golog() {
		
			return "main_login//login";
		}
	

}

