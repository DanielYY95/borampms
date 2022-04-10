package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.UserService;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/profile.do")
public class profileController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping(params="method=myProfile")
	public String profile(USER_INFO user) {
		
		return "profile\\profileUpt.jsp";
	}
	@RequestMapping(params="method=userDetail")
	public String userDetail(String uiId, Model d) {
		
		d.addAttribute("editUser", service.getUser(uiId));
		
		return "pageJsonReport";
	}
	@RequestMapping(params="method=profileUpt")
	public String profileUpdate(USER_INFO user, Model d) {
	
		
		service.uptProfile(user);
		
		d.addAttribute("msg", "수정되었습니다.");
		
		return "redirect:/profile.do?method=myProfile";
	}

}

