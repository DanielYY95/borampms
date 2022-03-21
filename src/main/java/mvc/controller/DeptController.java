package mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import mvc.service.DeptService;

@Controller
public class DeptController {

	@Autowired
	private DeptService service;
}
