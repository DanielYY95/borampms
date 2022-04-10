package mvc.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class Error_Controller {
	

	@ExceptionHandler(NoHandlerFoundException.class) // 404는 아니지만 no handler인 경우
	public String wrongurl(NoHandlerFoundException ex, Model m) { 
		
		m.addAttribute("ex", ex);
		
		return "error//error404.jsp"; // 404와 마찬가지로 url요청을 잘못줬으니 이렇게 처리한다. 
	}

	
	@ExceptionHandler(Exception.class) // 여기에 끝판왕 예외처리가 있지만 특수한 예외 처리를 설정하면 걔부터 처리한다.
	public String errorCatcher(Exception ex, Model m) { // 사용자 친화 화면을 위해 => 모든 jsp에 errorpage 설정하는 건 좀 그러니까..
		
		m.addAttribute("ex", ex);
		
		return "error//exception.jsp";
	}
	
	
	
	
}
