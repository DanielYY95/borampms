package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.SessionMethod;
import mvc.service.AppdDocDetailService;
import mvc.service.AppdDocService;
import mvc.vo.APPD_DOC;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/appd.do")
public class AppdDocDetailController {

	@Autowired
	private AppdDocDetailService service1;

	@Autowired
	private AppdDocService service;

	@Autowired
	private SessionMethod smethod;

	// 수정 화면 호출
	@RequestMapping(params="method=updateFrm")
	public String adInsertFrm(HttpServletRequest request, String adId, Model d) {
		System.out.println("번호:"+adId);
		USER_INFO user=  smethod.getUserSession(request);
		if(user == null) return "main_login//login.jsp";
		d.addAttribute("deptUserList",service.getDeptUserList(user.getUiId()));
		d.addAttribute("appddoc",service1.getDetailList(adId));
		return "appd\\AppdInsert.jsp";
	}
	@RequestMapping(params="method=detail")
	public String appdDocDetail(HttpServletRequest request, String adId, Model d) {
		System.out.println("번호:"+adId);
		USER_INFO user=  smethod.getUserSession(request);
		if(user == null) return "main_login//login.jsp";
		d.addAttribute("deptUserList",service.getDeptUserList(user.getUiId()));
		d.addAttribute("appdRowList",service1.getDetailList(adId));
		d.addAttribute("sessionUserId",user.getUiId());
		return "appd\\AppdDetail.jsp";
	}
	@RequestMapping(params="method=uptPage")
	public String AppdDocUpdate(String adId, Model d) {
		System.out.println("번호:"+adId);
		d.addAttribute("appdRowList",service1.getDetailList(adId));
		return "appd\\AppdUpdate.jsp";
	}
	@RequestMapping(params="method=upt")
	public String adUpdate(APPD_DOC upt, Model d) {
		System.out.println("확인:"+upt.getAdTitle());
		System.out.println("확인:"+upt.getAdContent());
		System.out.println("adid:"+upt.getAdId());
		service1.updateAppdDoc(upt);

		return "redirect:/appd.do?method=list";
	}

	@RequestMapping(params="method=del")
	public String adDelete(String adId) {
		service1.deleteAppdDoc(adId);

		return "redirect:/appd.do?method=list";
	}

	@RequestMapping(params="method=appdDocument")
	public String appdDocument(String adId) {
		service1.appdDocument(adId);
		return "redirect:/appd.do?method=list";
	}
	@RequestMapping(params="method=returnDocument")
	public String returnDocument(String adId) {
		service1.returnDocument(adId);
		return "redirect:/appd.do?method=list";
	}

}