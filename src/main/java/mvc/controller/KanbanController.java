package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.KanbanService;

@Controller
public class KanbanController {
	@Autowired
	KanbanService service;
	
	// http://localhost:7090/borampms/kanbanmain.do
	@RequestMapping("/kanbanmain.do")
	public String kanbanMain(Model d) {
		d.addAttribute("klist",service.getKlist());
		d.addAttribute("klist2",service.getKlist2());
		d.addAttribute("klist3",service.getKlist3());
		d.addAttribute("klist4",service.getKlist4());
		return "/schedule/schKanban";
	}
}
