package mvc.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.AlarmMethod;
import mvc.method.SessionMethod;
import mvc.service.EtcService;
import mvc.service.KanbanService;
import mvc.vo.Alarm;
import mvc.vo.KanbanVo;
import mvc.vo.PRJ_TASK;
import mvc.vo.USER_INFO;

@Controller
@RequestMapping("/kanban.do")
public class KanbanController {
	@Autowired
	private KanbanService service;
	
	@Autowired
	private EtcService etcservice;

	@Autowired
	private SessionMethod smethod;

	@Autowired
	private AlarmMethod amethod;
	
	// http://localhost:7090/borampms/kanban.do?method=list
	@RequestMapping(params="method=list")
	public String kanbanMain(HttpServletRequest request, Model d) {
		String piId = smethod.getPiid(request);
		d.addAttribute("klist",service.getKlist(piId));
		d.addAttribute("klist2",service.getKlist2(piId));
		d.addAttribute("klist3",service.getKlist3(piId));
		d.addAttribute("klist4",service.getKlist4(piId));
		return "/schedule/schKanban.jsp";
	}
	
	@RequestMapping(params="method=insert")
	public String insertKanban(HttpServletRequest request, PRJ_TASK ins, Model d) {

		ins.setPiId(smethod.getPiid(request)); 
		ins.setUiId(smethod.getUserSession(request).getUiId()); // 세션에서...


		USER_INFO user = smethod.getUserSession(request);
		String piId = smethod.getPiid(request);


		ArrayList<Alarm> alarmList = amethod.taskAlarm(user, ins, smethod.getPiid(request)); // 이렇게 주면 구현부에서 알아서 처리된다. 

		// 프로젝트 세션에서 프로젝트 고유번호를 받는다. 
		// 유저 세션에서 dept와 name을 받는다.
		// for 반복문으로 업무 담당자를 지정
		// 쓰여지는 때에 따라 다른 메시지	

		for(Alarm a : alarmList) {
			System.out.println("##"+a.getaFrom()+a.getaTo()+a.getaContent()+a.getPiId());

			etcservice.insertAlarm(a);
		}


		d.addAttribute("msg", service.insertKanban(ins));
		 return "redirect:/kanban.do?method=list";


	}

	@RequestMapping(params="method=update")
	public String updateKanban(KanbanVo sch, Model d) {

		service.KBupdate(sch);

		d.addAttribute("msg", "칸반보드가 수정되었습니다.");
		 return "redirect:/kanban.do?method=list";


	}

}