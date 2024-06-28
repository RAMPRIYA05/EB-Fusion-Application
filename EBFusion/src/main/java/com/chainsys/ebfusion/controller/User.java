package com.chainsys.ebfusion.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class User {

	
	
	
	@RequestMapping("/home")
	public String home()
	{
		return "home.jsp";
	}
}
