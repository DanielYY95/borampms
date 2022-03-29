package mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChatContorller {
	@GetMapping("/chat.do")
	public String chat() {
		return "";
	}
}
