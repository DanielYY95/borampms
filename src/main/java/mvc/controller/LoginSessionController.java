package mvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import mvc.service.UserService;
import mvc.vo.USER_INFO;

@Controller
@SessionAttributes("user_info") // vo객체 이름이랑 앞글자가 소문자인거 말곤 같아야한다
@RequestMapping("/login.do")
public class LoginSessionController {

	@ModelAttribute("user_info")
	public USER_INFO getUser() {
		return new USER_INFO();
	}
	
	@Autowired
	private UserService service;
	
	//(2)세션 유지 페이지 
	@RequestMapping(params="method=session")
	public String login(@ModelAttribute("user_info") USER_INFO sch, Model d) {
		// 잘 받아온다
		sch = service.login(sch);
		
	
		if(sch!=null) {
			d.addAttribute("loginMsg","로그인 성공!");
			
		}else{
			d.addAttribute("loginMsg","아이디나 비밀번호가 일치하지않습니다.");
		}
		d.addAttribute("user_info",sch); // 이렇게 해야 로그인 실패할때 빈값으로 보내진다.
		// 이름 잘 되는거 체크 했음. System.out.println("이름: "+ sch.getUiName());
		
		return "main_login//login";
	}
	// 로그인 실패해도 계속 빈 객체가 뷰단으로 보내지는 것 같다. => 해결
	 
	@RequestMapping(params="method=login")
		public String golog() {
		
			return "main_login//login";
		}
	
	@RequestMapping(params="method=logout")
	public String logout(@ModelAttribute("user_info") USER_INFO sch, HttpSession session, Model d) {

		// 세션 종료
		session.invalidate(); // 세션은 확실히 없어졌으나, 계속 정보가 남아있는 문제(이것만으로는 로그아웃이 안되네)
		d.addAttribute("user_info", new USER_INFO()); // 새 객체로 만들어준다.
		d.addAttribute("msg", "로그아웃이 되었습니다.");
		
		return "forward:/main.do";
	}

}

