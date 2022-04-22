package mvc.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import mvc.service.UserService;
import mvc.vo.USER_INFO;

@Controller
@SessionAttributes("user_info")       // vo객체 이름이랑 앞글자가 소문자인거 말곤 같아야한다
@RequestMapping("/login.do")
public class LoginSessionController {

	@ModelAttribute("user_info")
	public USER_INFO getUser() {
		return new USER_INFO();
	}
	

	
	@Autowired
	private UserService service;
	
	// 로그인이 너무 잘 끊기는 문제...? 
	@RequestMapping(params="method=session")
	public String login(@ModelAttribute("user_info") 
		USER_INFO sch, boolean saveId, HttpServletResponse response, String toURL, Model d) {
		
		sch = service.login(sch); // 세션에서 가져온 유저 vo객체로 로그인 진행 return 값
	
		if(sch!=null) {
			d.addAttribute("loginMsg","로그인 성공!");
			
			// 승인 요청 중인 자는 승인 대기 화면으로
			if(sch.getUiStatus().equals("2")) {
				return "main_login//userApprove.jsp";
			}
			
			// 퇴사자나 승인 반려자는 알림 화면으로
			if(sch.getUiStatus().equals("1") || sch.getUiStatus().equals("3")) {
				return "main_login//userBan.jsp";
			}
			
			
			// 아이디 기억
			if(saveId) {
				// 쿠키 생성해서 아이디속성에 저장 => 사용하려면 EL태그 cookie.id.value로 사용하라
				Cookie cookie = new Cookie("id", sch.getUiId()); 
				//	응답에 저장해서 보내
				response.addCookie(cookie);
			} else {
				// 	쿠키를 삭제
				Cookie cookie = new Cookie("id", sch.getUiId()); 
				cookie.setMaxAge(0); // 쿠키를 삭제
			    
				response.addCookie(cookie);
			}
			
			d.addAttribute("user_info",sch);
		
			if(toURL.equals("")) { // main에서 로그인할 때는, header 쪽에서 주는 toURL이 없으니
				return "main_login//login.jsp";
			}
			
			return "redirect:"+toURL;
			
			
		}else{
			d.addAttribute("loginMsg","아이디나 비밀번호가 일치하지않습니다.");
		}
		d.addAttribute("user_info",sch); // 이렇게 해야 로그인 실패할때 빈값으로 보내진다.

		return "main_login//login.jsp";
	}
	
	
	@RequestMapping(params="method=logout")
	public String logout(@ModelAttribute("user_info") 
		USER_INFO sch, HttpSession session, SessionStatus s, Model d, HttpServletRequest request) {

		// 세션 종료
		session.invalidate(); 
		// @SessionAttritbute를 사용하게되면 session에도 값을 담게 된다. 그래서 session.getAttribute가능
			// but session.invalidate()를 통해 세션 종료해도 계속 값이 남는다. 아마 스프링 컨테이너에 계속 있는듯? 
			// 세션 만료 후에는 세션에서 가져올 때(getAttributes)는 안되지만, 이렇게 @ModelAttribute로 가져오는건 그대로 유지가 되네

		s.setComplete();
		
	
		d.addAttribute("msg", "로그아웃이 되었습니다.");
	
		return "redirect:/main.do";
	}

	
	
	// 로그인 실패해도 계속 빈 객체가 뷰단으로 보내지는 것 같다. => 해결
	 
	@RequestMapping(params="method=login")
		public String golog() {
		
			return "main_login//login.jsp";
		}

}

