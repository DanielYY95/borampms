package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mvc.service.SchCalendarService;
import mvc.vo.Sch_Calendar;

@Controller
public class SchCalendarController {
	@Autowired
	private SchCalendarService service;
	// http://localhost:7090/borampms/calendar.do
		@GetMapping("calendar.do")
		public String calendar() {
			return "/schedule/schCalendar";
		}
		// http://localhost:7090/borampms/calList.do
		@RequestMapping("calList.do")
		public String calList(Model d) {
			d.addAttribute("calList", service.getCalendarList());	
			return "pageJsonReport";
		}
		@RequestMapping("insertCalendar")
		public String insertCalendar(Sch_Calendar ins){
			// null 값 확인해보기 
			System.out.println("배경색 :"+ins.getCd_backgrColor());
			System.out.println("색 :"+ins.getCd_borderColor());
			System.out.println("콘텐트 :"+ins.getCd_content());
			System.out.println("종료일 :"+ins.getCd_end());
			System.out.println("아이디 :"+ins.getCd_id());
			System.out.println("시작일 :"+ins.getCd_start());
			System.out.println("타이틀 :"+ins.getCd_title());
			System.out.println("글꼴색 :"+ins.getCd_textColor());
	
			service.insertCalendar(ins);
			return "redirect:/calendar.do";
		}
		@RequestMapping("updateCalendar")
		public String updateCalendar(Sch_Calendar ins){
			System.out.println("수정 id:"+ins.getCd_id());
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


