package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import mvc.service.UserService;
import mvc.vo.USER_INFO;

@Controller
public class RegRestController {
	
	@Autowired
	private UserService service;
	
	
	@GetMapping(value ="/idchk.do")
	@ResponseBody
	public String idchk(USER_INFO ins, Model d) {
		//JsonObj obj = new JsonObj();
		
		System.out.println("아이디:"+ins.getUiId());
		String result = ""; 
		//obj.setResult(result);
		result = service.idChk(ins) +"";
		
		return result;
	}
	
	// 객체형태로 리턴해야한다. responsebody도 괜찮긴 하나, vo객체로 해야 json형태로
	
}


