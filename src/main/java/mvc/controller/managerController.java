package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.ManagerService;
import mvc.vo.DeptInfo;
import mvc.vo.PRJ_USER;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/manager.do")
public class managerController {
	
	@Autowired
	private ManagerService service;
	
	@RequestMapping(params="method=user")
	public String managermain(Model d) {
		
		d.addAttribute("userList", service.getUserList());
		
		return "manager/managerUser";
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
	
	@RequestMapping(params="method=deptInsert")
	public String deptInsert(DeptInfo dept, Model d) {
		
		service.addDept(dept);
		
		return "manager/managerDept";
	}
	
	@RequestMapping(params="method=deptDetail")
	public String deptDetail(String diId, Model d) {
		
		d.addAttribute("deptDetail", service.getDept(diId));
		
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=deptUpdate")
	public String deptUpdate(DeptInfo dept, Model d) {
		
		service.uptDept(dept);
	
		return "forward:/manager.do?method=dept";
	}
	
	
	
	

	@RequestMapping(params="method=prj")
	public String managerprj(Model d) {
		
		d.addAttribute("prjList", service.getPrjList());
		
		return "manager/managerPrj";
	}
	
	@RequestMapping(params="method=prjUser")
	public String managePrjUser(Model d) {
		
		d.addAttribute("prjUserList", service.getPrjUserAll());
		
		return "manager/managerPrjUser";
	}
	
	@RequestMapping(params="method=prjUserSearch")
	public String prjUserSearch(PRJ_USER sch, Model d) {
		
		
		d.addAttribute("prjUserList", service.getPrjUserList(sch));
		
		return "pageJsonReport";
	}
	

}


