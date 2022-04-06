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
	
	// 다국어 처리를 하고나서 현재 url 주소를 담아서 redirect
		// js에서 window.location.href 활용하면 현재 url 주소 가져올 수 있다.
		// controller에서 input hidden 으로 태워서 redirect으로 보낸다. 
	
	// 1. �ʱ�ȭ�� ȣ��
	@GetMapping("multi.do")
	public String multi() {
		return "WEB-INF\\views\\a02_mvc\\a12_multiLang.jsp";
	}
	
	// 2. ��� ���ÿ� ���� ��ȯ ó��
	@GetMapping("choiceLang.do")
	public String choiceLang(@RequestParam("lang") String lang,
			HttpServletRequest request,
			HttpServletResponse response) {
		
		System.out.println("���� ������ ���: "+lang);
		
		Locale locale = new Locale(lang);
		localResolver.setLocale(request, response, locale);
		
		return "WEB-INF\\views\\a02_mvc\\a12_multiLang.jsp";
	}
}
