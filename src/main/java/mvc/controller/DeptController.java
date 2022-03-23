package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.DeptService;
import mvc.vo.DeptDoc;
import mvc.vo.DeptDocSch;


@Controller
@RequestMapping("/dept.do")
public class DeptController {

	@Autowired
	private DeptService service;
	
	// 부서문서 리스트 
	// http://localhost:7080/borampms/dept.do?method=list
	@RequestMapping(params="method=list")
	public String ddList(DeptDocSch sch, Model d) {
		d.addAttribute("ddList", service.getDDList(sch));
		
		return "dept\\Doc-Management";
	}
	
	// 부서문서 등록
	// http://localhost:7080/borampms/dept.do?method=insert
	@RequestMapping(params="method=insert")
	public String boardInsertFrm(DeptDoc ins, Model d) {
		System.out.println("확인:"+ins.getDdTitle());
		System.out.println("확인:"+ins.getDdWriter());
		System.out.println("확인:"+ins.getDdDept());
		System.out.println("확인:"+ins.getDdContent());
		System.out.println("확인:"+ins.getReport());
		d.addAttribute("msg",service.insertDD(ins));
		return "redirect:/dept.do?method=list"; 
	}
}