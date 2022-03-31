package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.KanbanService;
import mvc.vo.PRJ_TASK;

@Controller
@RequestMapping("/kanban.do")
public class KanbanController {
	@Autowired
	private KanbanService service;
	
	// http://localhost:7090/borampms/kanban.do?method=list
	@RequestMapping(params="method=list")
	public String kanbanMain(Model d) {
		d.addAttribute("klist",service.getKlist());
		d.addAttribute("klist2",service.getKlist2());
		d.addAttribute("klist3",service.getKlist3());
		d.addAttribute("klist4",service.getKlist4());
		return "/schedule/schKanban";
	}
	
	@RequestMapping(params="method=insert")
	public String insertKanban(PRJ_TASK ins, Model d) {
		ins.setUiId("asd456");
		ins.setPiId("PI00001");
		ins.setPtGuidecontent("가이드 콘텐츠");
		System.out.println("제목 : "+ins.getPtTitle());
		
		d.addAttribute("msg", service.insertKanban(ins));
		 return "redirect:/kanban.do?method=list";
		
				
	}
}

