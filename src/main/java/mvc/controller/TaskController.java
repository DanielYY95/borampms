package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import mvc.service.TaskService;

@Controller
public class TaskController {

	@Autowired
	private TaskService service;
	
}
