package mvc.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.LocaleResolver;

@Controller
public class MultiLangController {
	@Autowired(required=false)
	private LocaleResolver localResolver;
	
	// 1. 초기화면 호출
	@GetMapping("multi.do")
	public String multi() {
		return "WEB-INF\\views\\a02_mvc\\a12_multiLang.jsp";
	}
	
	// 2. 언어 선택에 따른 변환 처리
	@GetMapping("choiceLang.do")
	public String choiceLang(@RequestParam("lang") String lang,
			HttpServletRequest request,
			HttpServletResponse response) {
		
		System.out.println("현재 선택한 언어: "+lang);
		
		Locale locale = new Locale(lang);
		localResolver.setLocale(request, response, locale);
		
		return "WEB-INF\\views\\a02_mvc\\a12_multiLang.jsp";
	}
}
