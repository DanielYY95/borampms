package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.SessionMethod;
import mvc.service.AppdDocService;
import mvc.vo.APPD_DOC;
import mvc.vo.APPD_DOC_SCH;
import mvc.vo.USER_INFO;


@Controller
@RequestMapping("/appd.do")
public class AppdDocController {

	@Autowired
	private AppdDocService service;

	@Autowired
	private SessionMethod smethod;

	@RequestMapping(params="method=list")
	public String adList(HttpServletRequest request, APPD_DOC_SCH sch, Model d) {

		USER_INFO user=  smethod.getUserSession(request);
		if(user == null) return "main_login//login";
		sch.setUiId(user.getUiId());
		d.addAttribute("adList", service.getADList(sch));
		d.addAttribute("appdDocSch", sch);

		return "appd\\AppdList";
	}
	// http://localhost:7080/borampms/dept.do?method=insertFrm
	// 초기 화면 호출
	@RequestMapping(params="method=insertFrm")
	public String ddInsertFrm(HttpServletRequest request, Model d) {
		// select box 위한 userid 정보들이 필요함.
		USER_INFO user=  smethod.getUserSession(request);
		if(user == null) return "main_login//login";
		d.addAttribute("deptUserList",service.getDeptUserList(user.getUiId()));
		d.addAttribute("uiId",user.getUiId());
		return "appd\\AppdInsert";
	}

	// 부서문서 등록
	@RequestMapping(params="method=insert")
	public String adInsertFrm(HttpServletRequest request, APPD_DOC ins, Model d) {

		USER_INFO user=  smethod.getUserSession(request);
		if(user == null) return "main_login//login";
		ins.setAdWriter(user.getUiId());

		if(ins.getAdId()!=null && !ins.getAdId().equals("")) {
			service.updateAD(ins);
			return "redirect:/appd.do?method=detail&adId="+ins.getAdId();
		}else {
			service.insertAD(ins);
			return "redirect:/appd.do?method=list";
		}
	}

}


