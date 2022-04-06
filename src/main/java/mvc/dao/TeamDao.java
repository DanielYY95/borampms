package mvc.dao;

import java.util.List;

import mvc.vo.PRJ_INFO;
import mvc.vo.USER_INFO;

public interface TeamDao {


	public List<USER_INFO> getUserList(String piId);

	public PRJ_INFO getTeamContent(String piId);

	public void updateTeamContent(PRJ_INFO prj);
	public USER_INFO getUserInfo(String uiId);
}
