package mvc.dao;

import org.springframework.stereotype.Repository;

import mvc.vo.UserInfo;

@Repository
public interface UserInfoDao {
	public UserInfo getUserInfo(String uiId);
}