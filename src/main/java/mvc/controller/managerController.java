package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.ManagerService;
import mvc.vo.Notice;
import mvc.vo.USER_INFO;

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
	
	@RequestMapping(params="method=userUpt")
	public String userUpdate(USER_INFO user, Model d) {
	
		
		service.uptCustomer(user);
		
		d.addAttribute("msg", "수정되었습니다.");
		
		return "forward:/manager.do?method=user";
	}
	
	@RequestMapping(params="method=userDel")
	public String userDelete(String uiId, Model d) {
		
		service.delCustomer(uiId);
		
		d.addAttribute("msg", "삭제되었습니다.");
		
		return "forward:/manager.do?method=user";
	}
	
	@RequestMapping(params="method=userSearch")
	public String userSearch(USER_INFO sch, Model d) {
			
		d.addAttribute("userList", service.searchUser(sch));
		
		
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
	
	@RequestMapping(params="method=notice")
	public String getNoticeList(Notice sch, Model d) {
		d.addAttribute("ntlist", service.getNoticeList(sch));
		return "manager/managerNotice";
	}


}


