package mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.TeamDao;
import mvc.vo.PRJ_INFO;
import mvc.vo.USER_INFO;

@Service
public class TeamService {

	@Autowired
	private TeamDao dao;

	public PRJ_INFO getTeamContent(String piId){

		return dao.getTeamContent(piId);
	};

	public List<USER_INFO> getUserList(String piId) {

		return dao.getUserList(piId);
	};
	public void updateTeamContent(PRJ_INFO prj) {
		dao.updateTeamContent(prj);
	}
	public USER_INFO getUserInfo(String uiId) {
		return dao.getUserInfo(uiId);
	}
}
