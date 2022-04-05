package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.ManagerService;
import mvc.vo.DeptInfo;
import mvc.vo.Notice;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/admin/manager.do")
public class managerController {
	
		
	
	@Autowired
	private ManagerService service;
	
	@RequestMapping(params="method=user")
	public String managermain(Model d, HttpServletRequest request) {
		
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
		
		return "redirect:/admin/manager.do?method=user";
	}
	
	@RequestMapping(params="method=userDel")
	public String userDelete(String uiId, Model d) {
		
		service.delCustomer(uiId);
		
		d.addAttribute("msg", "삭제되었습니다.");
		
		return "redirect:/admin/manager.do?method=user";
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
		
		return "redirect:/admin/manager.do?method=dept";
	}
	
	@RequestMapping(params="method=deptDetail")
	public String deptDetail(String diId, Model d) {
		
		d.addAttribute("deptDetail", service.getDept(diId));
		
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=deptUpdate")
	public String deptUpdate(DeptInfo dept, Model d) {
		
		service.uptDept(dept);
	
		return "redirect:/admin/manager.do?method=dept";
	}
	
	
	
	

	@RequestMapping(params="method=prj")
	public String managerprj(Model d) {
		
		d.addAttribute("prjList", service.getPrjList());
		
		return "manager/managerPrj";
	}
	
	
	@RequestMapping(params="method=prjDetail")
	public String prjDetail(String piId, Model d) {
		
		d.addAttribute("prjDetail", service.getPrj(piId));
		
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=prjUpdate")
	public String prjUpdate(PRJ_INFO prj, Model d) {
		
		service.uptPrj(prj);
	
		return "redirect:/admin/manager.do?method=prj";
	}
	
	@RequestMapping(params="method=prjSearch")
	public String prjSearch(PRJ_INFO prj, Model d) {
			
		d.addAttribute("prjList", service.searchPrj(prj));
		
		
		return "pageJsonReport";
	}
	
	
	
	
	
	
	
	
	@RequestMapping(params="method=prjUser")
	public String managePrjUser(Model d) {
		
		d.addAttribute("prjUserList", service.getPrjUserList());
		
		return "manager/managerPrjUser";
	}
	

	@RequestMapping(params="method=prjUserDetail")
	public String prjUserDetail(String puId, Model d) {
		
		d.addAttribute("prjUserDetail", service.getPrjUser(puId));
		
		return "pageJsonReport";
	}
	
	@RequestMapping(params="method=prjUserUpdate")
	public String prjUserUpdate(PRJ_USER sch, Model d) {
		
		service.uptPrjUser(sch);
	
		return "redirect:/admin/manager.do?method=prjUser";
	}
	
	
	@RequestMapping(params="method=prjUserSearch")
	public String prjUserSearch(PRJ_USER sch, Model d) {
		
		
		d.addAttribute("prjUserList", service.searchPrjUser(sch));
		
		return "pageJsonReport";
	}
	
	
	// 공지사항
	
	@RequestMapping(params="method=notice")
	public String getNoticeList(Notice sch, Model d) {
		d.addAttribute("ntlist", service.getNoticeList(sch));
		return "manager/managerNotice";
	}
	@RequestMapping(params="method=insertNotice")
	public String insertNotice(Notice ins) {
		service.insertNotice(ins);
		return "redirect:/admin/manager.do?method=notice";
	}

	
	
	
	

}


