package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("chat.do")
public class ChatContorller {
	@RequestMapping(params="method=main")
	public String chat_main() {
		return "chat/chat_main";
	}
}