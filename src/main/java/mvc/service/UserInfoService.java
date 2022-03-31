package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.UserInfoDao;
import mvc.vo.UserInfo;

@Service
public class UserInfoService {
	@Autowired
	private UserInfoDao dao;
	
	public UserInfo getUserInfo(String uiId) {
		return dao.getUserInfo(uiId);
	}
}
