package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.UserService;
import mvc.vo.Mail;
import mvc.vo.USER_INFO;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	
	@GetMapping("/findId.do")
	public String getUserIdFrm() {
		
		return "main_login//userId.jsp";
	}
	

	@GetMapping("/findPw.do")
	public String getUserPwFrm() {
		
		return "main_login//userPw.jsp";
	}
	
	@RequestMapping("/getUserId.do")
	public String getUserId(USER_INFO user, Model d) {
		
		d.addAttribute("userId", service.getId(user));
		
		return "pageJsonReport";
	}
	
	@RequestMapping("/getUserPw.do")
	public String getUserPw(USER_INFO user, Mail email, Model d) {
		
		String pw = service.getPw(user);
		
		if(pw==null) {
			
			return "pageJsonReport";
		}
		
		// 랜덤 비밀번호로 변경
		service.updateTempPw(email, user);
		
		
		// 메시지용
		d.addAttribute("userPw", 1);
		
		
		
		
		return "pageJsonReport";
	}
	
	
}
