package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.CommonDetailService;
import mvc.vo.CommonDoc;

@Controller
@RequestMapping("/common.do")
public class CommonDetailController {

	@Autowired
	private CommonDetailService service1;

	// 부서문서 상세보기(ddId)
	@RequestMapping(params="method=detail")
	public String CommonDetail(String cdId, Model d) {
		System.out.println("번호:"+cdId);
		d.addAttribute("commonRowList",service1.getDetailList(cdId));
		return "common\\CommonDetail";
	}
	// 부서문서 수정하기(ddId)
	@RequestMapping(params="method=uptPage")
	public String CommonUpdate(String cdId, Model d) {
		System.out.println("번호:"+cdId);
		d.addAttribute("commonRowList",service1.getDetailList(cdId));
		return "common\\CommonUpdate";
	}
	@RequestMapping(params="method=upt")
	public String cdUpdate(CommonDoc upt, Model d) {
		System.out.println("확인:"+upt.getCdTitle());
		System.out.println("확인:"+upt.getCdContent());
		System.out.println("cdid:"+upt.getCdId());
		service1.updateCommon(upt);

		return "redirect:/common.do?method=list";
	}

	@RequestMapping(params="method=del")
	public String ddDelete(String cdId) {
		service1.deleteCommon(cdId);
		
		return "redirect:/common.do?method=list";
	}
}
