package mvc.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mvc.method.SessionMethod;
import mvc.service.TeamService;
import mvc.vo.PRJ_INFO;
import mvc.vo.USER_INFO;


@Controller
public class TeamController {


    @Autowired
    private TeamService service;
    @Autowired
    private SessionMethod smethod;

    @RequestMapping("/team.do")
    public String teamContent(HttpServletRequest request, Model d) {
        String piId = smethod.getPiid(request);
        d.addAttribute("team", service.getTeamContent(piId));
        d.addAttribute("tuser", service.getUserList(piId));
        return "team\\teamList";
    }

    @RequestMapping("/teamUpt.do")
    public String uptTeamContent(PRJ_INFO prj, Model d) {
    	service.updateTeamContent(prj);
        return "pageJsonReport";
    }

    @RequestMapping("/teamUserInfo.do")
    public String teamUserInfo(String uiId, Model d) {
    	d.addAttribute("userInfo",service.getUserInfo(uiId));
		return "pageJsonReport";
    }

}
