package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mvc.service.SchCalendarService;
import mvc.vo.Calendar;

@Controller
public class SchCalendarController {
	@Autowired
	private SchCalendarService service;
	// http://localhost:7090/borampms/calendar.do
		@GetMapping("calendar.do")
		public String calendar() {
			return "/schedule/schCalendar.jsp";
		}
		// http://localhost:7090/borampms/calList.do
		@RequestMapping("calList.do")
		public String calList(Model d) {
			d.addAttribute("calList", service.getCalendarList());	
			return "pageJsonReport";
		}
		@RequestMapping("insertCalendar")
		public String insertCalendar(Calendar ins){
			service.insertCalendar(ins);
			return "redirect:/calendar.do";
		}
		@RequestMapping("updateCalendar")
		public String updateCalendar(Calendar ins){
			System.out.println("수정 id:"+ins.getId());
			service.updateCalendar(ins);
			return "redirect:/calendar.do";
		}
		@RequestMapping("deleteCalendar")
		public String deleteCalendar(@RequestParam("id") int id){
			System.out.println("삭제 id:"+id);
			service.deleteCalendar(id);
			return "redirect:/calendar.do";
		}	
	}
