package com.allController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value={"/","/index"})
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView("index");
		mv.addObject("title","Welcome to Spring WEB MVC");
		return mv;
	}

}