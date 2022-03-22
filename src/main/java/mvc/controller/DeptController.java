package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.DeptService;


@Controller
public class DeptController {

	@Autowired
	private DeptService service;
	
	// http://localhost:7080/borampms/deptDoc.do
	@RequestMapping("/deptDoc.do")
	public String ddList(Model d) {
		
		d.addAttribute("ddList", service.getDDList());
		
		return "dept\\Doc-Management";
	}
}
