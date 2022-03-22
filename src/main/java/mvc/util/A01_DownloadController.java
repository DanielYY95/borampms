package mvc.util;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class A01_DownloadController {
	@RequestMapping("/download.do")
	public String download(@RequestParam("fname") String fname, Model d) {
		// downloadviewer���� ����ϴ� �̸����� �� ������ ����
		// model.get("downloadfile");
		d.addAttribute("downloadfile", fname);
		
		// spring container���� ����� view �̸� ȣ��
		return "download";
	}
}
