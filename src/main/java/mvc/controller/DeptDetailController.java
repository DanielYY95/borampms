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
	
	// 부서문서 리스트 번호(ddId)
	@RequestMapping(params="method=detail")
	public String DeptDetail(String ddId, Model d) {
		System.out.println("번호:"+ddId);
		d.addAttribute("deptRowList",service1.getDetailList(ddId));
		return "dept\\DeptDetail";
	}
	@RequestMapping(params="method=upt")
	public String ddUpdate(DeptDoc upt, Model d) {
		service1.updateDept(upt);

		return "forward:board.do?method=detail";
	}
	
}
