package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.ManagerService;

@Controller
@RequestMapping("/manager.do")
public class managerController {
	
	@Autowired
	private ManagerService service;
	
	@RequestMapping(params="method=user")
	public String managermain(Model d) {
		
		d.addAttribute("userList", service.getUserList());
		
		return "manager/managerMain";
	}
	
	@RequestMapping(params="method=userDetail")
	public String userDetail(String uiId, Model d) {
		
		d.addAttribute("editUser", service.getUser(uiId));
		
		return "pageJsonReport";
	}
	
	
	@RequestMapping(params="method=dept")
	public String managerdept(Model d) {
		
		d.addAttribute("deptList", service.getDeptList());
		
		return "manager/managerDept";
	}

	@RequestMapping(params="method=prj")
	public String managerprj(Model d) {
		
		d.addAttribute("prjList", service.getPrjList());
		
		return "manager/managerPrj";
	}


}


