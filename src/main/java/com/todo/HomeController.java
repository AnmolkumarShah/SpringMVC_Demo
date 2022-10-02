package com.todo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import Model.Todo;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String temp(Model m) {
		m.addAttribute("page","home");
		return "home";
	}
	
	
	@RequestMapping("/home")
	public String home(Model m) {
		m.addAttribute("page","home");
		return "home";
	}
	
	@RequestMapping("/add")
	public String add(Model m) {
		m.addAttribute("page","add");
		
		Todo temp = new Todo();		
		m.addAttribute("todo", temp);
				
		return "home";
	}
	
	

}
