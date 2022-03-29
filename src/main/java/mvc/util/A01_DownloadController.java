package mvc.util;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A01_DownloadController {
	@RequestMapping("/download.do")
	public String download(@RequestParam("fname") String fname, Model d) {
		// downloadviewer에서 사용하는 이름으로 모델 데이터 설정
		// model.get("downloadfile");
		d.addAttribute("downloadfile", fname);
		
		// spring container에서 선언된 view 이름 호출
		return "download";
	}
}
