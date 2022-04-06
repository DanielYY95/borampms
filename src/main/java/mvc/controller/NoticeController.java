package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.service.ManagerService;
import mvc.vo.Notice;

@Controller
@RequestMapping("/notice.do")
public class NoticeController {

	@Autowired
	private ManagerService service;
	
	// 공지사항
	
		@RequestMapping(params="method=list")
		public String getNoticeList(Notice sch, Model d) {
			d.addAttribute("ntlist", service.getNoticeList(sch));
			return "notice/notice";
		}
	
		
		@RequestMapping(params="method=getNotice")
		public String getNotice(String ntId, Model d) {
			
			d.addAttribute("noticeDetail", service.getNotice(ntId));
			
			return "pageJsonReport";
		}

	
		
	
	
	
}
