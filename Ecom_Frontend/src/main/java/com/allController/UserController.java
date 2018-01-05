/*package com.allController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Ecom_Backend.daoImpl.UserDaoImpl;
import com.Ecom_Backend.model.User;

//import com.Ecom_Backend.model.User;

@Controller
public class UserController {
	UserDaoImpl userDaoImpl;
	
	@RequestMapping(value="/goToRegister", method=RequestMethod.GET)
	public ModelAndView goToRegister()
	{
		 ModelAndView mv = new  ModelAndView();
		 mv.addObject("userClickRegister",true);
		 mv.addObject("title","Manage User");
		mv.addObject("user", new User());//from model class user
		// mv.setViewName("register");//jsp view
		 //mv.addObject("user", new User());//from model class user
		 //User user = new User();
		// mv.addObject("user" ,user);
		 mv.setViewName("register");//jsp view
		  return mv;
		 
	}
	
	@RequestMapping(value="/saveRegister", method=RequestMethod.POST)
	public ModelAndView saveRegister(@ModelAttribute("user") User user)
	{
		ModelAndView mv=new ModelAndView();
		user.setRole("ROLE_USER");
		userDaoImpl.insertUser(user);
		mv.setViewName("index");
		return mv;
	}

}*/
