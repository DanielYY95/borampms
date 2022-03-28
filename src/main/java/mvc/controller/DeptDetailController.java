package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.DeptDetailService;
import mvc.vo.DeptDoc;

@Controller
@RequestMapping("/dept.do")
public class DeptDetailController {

	@Autowired
	private DeptDetailService service1;
	
	// 부서문서 상세보기(ddId)
	@RequestMapping(params="method=detail")
	public String DeptDetail(String ddId, Model d) {
		System.out.println("번호:"+ddId);
		d.addAttribute("deptRowList",service1.getDetailList(ddId));
		return "dept\\DeptDetail";
	}
	// 부서문서 수정하기(ddId)
	@RequestMapping(params="method=uptPage")
	public String DeptUpdate(String ddId, Model d) {
		System.out.println("번호:"+ddId);
		d.addAttribute("deptRowList",service1.getDetailList(ddId));
		return "dept\\DeptUpdate";
	}
	@RequestMapping(params="method=upt")
	public String ddUpdate(DeptDoc upt, Model d) {
		System.out.println("확인:"+upt.getDdTitle());
		System.out.println("확인:"+upt.getDdContent());
		System.out.println("ddid:"+upt.getDdId());
		service1.updateDept(upt);

		return "redirect:/dept.do?method=list";
	}
	
}