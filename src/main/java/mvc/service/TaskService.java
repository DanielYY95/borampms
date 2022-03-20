package mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mvc.dao.TaskDao;

@Service
public class TaskService {

	@Autowired
	private TaskDao dao;
	
}
