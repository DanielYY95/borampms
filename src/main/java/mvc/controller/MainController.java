package mvc.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.LocaleResolver;

import mvc.method.SessionMethod;
import mvc.service.DashService;
import mvc.service.EtcService;
import mvc.service.UserService;
import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_USER;
import mvc.vo.Task_User;
import mvc.vo.USER_INFO;

@Controller
@SessionAttributes("prj_info")
public class MainController {
	
	@Autowired(required=false)
	private LocaleResolver localResolver;
	
	@Autowired
	private DashService dservice;
	
	@Autowired
	private UserService service;
	
	@Autowired
	private EtcService etcservice;
	
	@Autowired
	private SessionMethod smethod; // 항상 필요하니...
	
	@ModelAttribute("prj_info")
	public PRJ_INFO getPrj() {
		return new PRJ_INFO();
	}
	
	
	@RequestMapping("/main.do")
	public String main() {
		
		return "main_login//main.jsp";
	}
	
	@RequestMapping("/loginFrm.do") 
	public String loginFrm(String toURL, Model d) {

		d.addAttribute("toURL", toURL); // 원래 요청 url
		
		return "main_login//login.jsp";
	}
	
	@RequestMapping("/choiceLang.do")
	public String choiceLang(@RequestParam("lang") String lang,
			HttpServletRequest request,
			HttpServletResponse response) {

		Locale locale = new Locale(lang);
		localResolver.setLocale(request, response, locale);
		
		return "forward:/loginFrm.do";
	}
	
	
	@RequestMapping("/prjList.do")
	public String prjList(HttpServletRequest request, Model d) {
		
		USER_INFO user=  smethod.getUserSession(request);
		
		String uiId = user.getUiId();
		
		d.addAttribute("prjList", service.getMyPrjList(uiId));
		d.addAttribute("newPrjList", service.getNewPrjList(uiId));
		d.addAttribute("waitPrjList", service.getWaitPrjList(uiId));
			
		return "main_login//prjList.jsp";
	}
	
	@RequestMapping("/mainSearchPrj.do")
	public String mainSearchPrj(HttpServletRequest request, PRJ_INFO prj, Model d) {
		USER_INFO user=  smethod.getUserSession(request);
		prj.setUiId(user.getUiId());
		
		d.addAttribute("searchPrjList", service.mainSearchPrj(prj));
		
		return "pageJsonReport";
	}
	
	@RequestMapping("/joinPrj.do")
	public String joinPrj(HttpServletRequest request, String piId, Model d) {
		
		USER_INFO user=  smethod.getUserSession(request);
		service.joinPrj(new PRJ_USER(piId, user.getUiId()));
		
		
		return "redirect:/prjList.do";
	}
	
	
	@GetMapping("/addPrjFrm.do")
	public String addPrj() {
		
		
		return "main_login/addPrj.jsp";
	}
	
	@PostMapping("/insertPrj.do") 
	public String insertPrj(PRJ_INFO sch) {
		
		service.insertPrj(sch);
		
		
		return "redirect:/prjList.do";
	}
	
	
	
	@RequestMapping("/prjDash.do") // 메인->프로젝트 목록 -> 대시보드로 접근하는게 아니면 자꾸 에러가...
	public String prjDash(@ModelAttribute("prj_info") PRJ_INFO pi, 
			HttpServletRequest request, Model d) {
		// 이걸로 세션값을 받아온다. Prj_info vo객체에 piId 를 요청값으로 보내줬으니
	
		return "forward:/dash.do?method=list";
	}
	
	@RequestMapping("/isInPrj.do")
	public String isInPrj(HttpServletRequest request, PRJ_USER prj, Model d) {
		
		// 세션으로 프로젝트 고유번호를 얻고 들어와서, 체크 후, 조회되면 ok
		String piId = smethod.getPiid(request);
		USER_INFO user = smethod.getUserSession(request);
		
		prj.setPiId(piId);
		prj.setUiId(user.getUiId());
		
		d.addAttribute("isChecked", service.isInPrj(prj));
		
		
		return "pageJsonReport";
	}
	
	
	
	@RequestMapping("/alarmList.do")
	public String alarmList(@ModelAttribute("prj_info") PRJ_INFO pi, 
			HttpServletRequest request, Model d) {
		
		USER_INFO user= smethod.getUserSession(request);
		d.addAttribute("alarmList", etcservice.getAlarmList(new Task_User(pi.getPiId(), user.getUiDept(), user.getUiName())));
		
		return "pageJsonReport";
	}
	
	@RequestMapping("/alarmCheck.do")
	public String alarmCheck(String aId) {
		

		etcservice.uptAlarm(aId);
		
		return "pageJsonReport";
	}
	
	@RequestMapping("/alarmDelete.do")
	public String alarmDelete(String aId) {
		
	
		etcservice.delAlarm(aId);
		
		return "pageJsonReport";
	}
	
	
	
}