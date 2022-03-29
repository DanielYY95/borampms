package mvc.method;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import mvc.vo.PRJ_INFO;
import mvc.vo.PRJ_TASK;
import mvc.vo.USER_INFO;

@Component // @Component 어노테이션이 있으면 스프링 빈으로 자동 등록된다. => autowired 사용하려면 꼭 필요
public class SessionMethod {

	
	// 세션에 있는 유저 객체 가져오기
	public USER_INFO getUserSession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		return (USER_INFO)session.getAttribute("user_info");
	}

	
	// 세션에 있는 업무정보 고유번호 가져오기
	public String getPtid(HttpServletRequest request) {
		HttpSession session = request.getSession();
		PRJ_TASK sch= (PRJ_TASK)session.getAttribute("prj_task");
		String ptId= sch.getPtId();
		
		return ptId;
		
	}
	
	// 세션에 있는 프로젝트 고유번호 가져오기
	public String getPiid(HttpServletRequest request) {
		HttpSession session = request.getSession();
		PRJ_INFO sch= (PRJ_INFO)session.getAttribute("prj_info");
		String piId= sch.getPiId();
		
		return piId;
		
	}
		
	
	
	
}
