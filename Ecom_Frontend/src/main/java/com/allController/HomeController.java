package com.allController;

import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

//import com.Ecom_Backend.daoImpl.UserDaoImpl;
//import com.Ecom_Backend.model.User;

@Controller
public class HomeController {
	
	//UserDaoImpl userDaoImpl;
	
	@RequestMapping(value={"/","/index"})
	public ModelAndView index()
	{
		ModelAndView mv=new ModelAndView("index");
		mv.addObject("title","Welcome to Spring WEB MVC");
		return mv;
	}
	
	//@RequestMapping(value="/")
	//public String Index()
	//{
	//	return "index";
	//}
	
	/*@RequestMapping(value="/goToRegister", method=RequestMethod.GET)
	public ModelAndView goToRegister()
	{
		 ModelAndView mv = new  ModelAndView();
		 mv.addObject("user", new User());//from model class user
		 mv.setViewName("register");//jsp view
		  return mv;
	}
	
	@RequestMapping(value="/saveRegister", method=RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("user")User user)
	
	{
		 ModelAndView mav = new  ModelAndView();
		 user.setRole("ROLE_USER");//this line will by default add ROLE_USER in role column
		 userDaoImpl.insertUser(user);
		mav.setViewName("index");
		return mav;
		 
	}*/

}