package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.SessionMethod;
import mvc.service.DeptService;
import mvc.vo.DeptDoc;
import mvc.vo.DeptDocSch;


@Controller
@RequestMapping("/dept.do")
public class DeptController {

	@Autowired
	private DeptService service;
	@Autowired
	private  SessionMethod SM;
	// 부서문서 리스트 
	// http://localhost:7080/borampms/dept.do?method=list
	@RequestMapping(params="method=list")
	public String ddList(HttpServletRequest request, DeptDocSch sch, Model d) {
		System.out.println("부서확인:"+sch.getDdDept());
		
		String piId = SM.getPiid(request);
		sch.setPiId(piId);
		
		d.addAttribute("ddList", service.getDDList(sch));
		
		return "dept\\DeptList.jsp";
	}
	// http://localhost:7080/borampms/dept.do?method=insertFrm
	// 초기 화면 호출
	@RequestMapping(params="method=insertFrm")
	public String ddInsertFrm(DeptDoc Dept) { 
			
		return "dept\\DeptInsert.jsp";
	}

	// 부서문서 등록
	@RequestMapping(params="method=insert")
	public String ddInsertFrm(HttpServletRequest request, DeptDoc ins, Model d) {
		ins.setPiId(SM.getPiid(request)); 
		
		System.out.println("확인:"+ins.getDdTitle());
		System.out.println("확인:"+ins.getDdWriter());
		System.out.println("확인:"+ins.getDdDept());
		System.out.println("확인:"+ins.getDdContent());
		System.out.println("확인:"+ins.getReport());
		System.out.println("확인:"+SM.getPiid(request));
		
		d.addAttribute("msg",service.insertDD(ins));
		return "redirect:/dept.do?method=list"; 
	}

}
