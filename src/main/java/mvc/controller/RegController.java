package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.UserService;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/regUser.do")
public class RegController {
	
	@Autowired
	private UserService service;
	
	@GetMapping()
	public String regFrm() {
		
		
		return "main_login//reg";
	}
	
	//회원가입 form // post는 다른 url로 바로 갈수없다. 
	@PostMapping(params="method=insert")
	public String insertUser(USER_INFO ins, Model d) {
		int resultId = service.idChk(ins);
		
		if(resultId == 0) {
			service.insertUser(ins);
			d.addAttribute("msg", "회원가입을 축하드립니다!");
		//	d.addAttribute("USER", new USER_INFO()); // 초기화시킴
			
		} else{
			d.addAttribute("msg", "이미 등록된 아이디나 닉네임으로 회원가입할 수 없습니다.");
			return "main_login//reg";
		} 
		
		return "forward:/regUser.do?method=reg";
	}
	
		// 자동으로 로그인=> @ModelAttribute 로 vo객체를 사용하면 그런듯....
	
	@RequestMapping(params="method=idchk")
	public String idchk(USER_INFO ins, Model d) {
		d.addAttribute("result", service.idChk(ins));
		return "pageJsonReport";
	}
	
	
	@RequestMapping(params="method=reg")
	public String goMain() {
		
		
		return "main_login//main";
	}
	
}

