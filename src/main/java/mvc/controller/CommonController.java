package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.SessionMethod;
import mvc.service.CommonService;
import mvc.vo.CommonDoc;
import mvc.vo.CommonDocSch;


@Controller
@RequestMapping("/common.do")
public class CommonController {

	@Autowired
	private CommonService service;
	@Autowired
	private  SessionMethod SM;
	// 공통문서 리스트 
	// http://localhost:7080/borampms/common.do?method=list
	@RequestMapping(params="method=list")
	public String cdList(HttpServletRequest request, CommonDocSch sch, Model d) {
		System.out.println("부서확인:"+sch.getCdTitle());
		
		String piId = SM.getPiid(request);
		sch.setPiId(piId);
		
		d.addAttribute("cdList", service.getCDList(sch));
		
		return "common\\CommonList.jsp";
	}
	// http://localhost:7080/borampms/common.do?method=insertFrm
	// 초기 화면 호출
	@RequestMapping(params="method=insertFrm")
	public String ddInsertFrm(CommonDoc Common) { 
			
		return "common\\CommonInsert.jsp";
	}

	// 부서문서 등록
	@RequestMapping(params="method=insert")
	public String ddInsertFrm(HttpServletRequest request, CommonDoc ins, Model d) {
		ins.setPiId(SM.getPiid(request)); 
		
		System.out.println("확인:"+ins.getCdTitle());
		System.out.println("확인:"+ins.getCdWriter());
		System.out.println("확인:"+ins.getCdDept());
		System.out.println("확인:"+ins.getCdContent());
		System.out.println("확인:"+ins.getReport());
		System.out.println("확인:"+SM.getPiid(request));
		
		d.addAttribute("msg",service.insertCD(ins));
		return "redirect:/common.do?method=list"; 
	}

}

