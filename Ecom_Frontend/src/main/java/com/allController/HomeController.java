package com.allController;



import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.Ecom_Backend.dao.UserDao;
import com.Ecom_Backend.model.User;

@Controller
public class HomeController {
	
	@Autowired
	UserDao userDao;
	
	@RequestMapping("/")
	public String homePage()
	{
		return "index";
	}
	@RequestMapping("/index")
	public String home()

	
	{
		return "index";
	}

	
	@RequestMapping(value="/RegisterPage", method = RequestMethod.GET)
	public ModelAndView showRegister()
	{
		ModelAndView mav=new ModelAndView();
		mav.addObject("user",new User());   
		
		mav.setViewName("RegisterPage"); 
		return mav;  

	}

	
	@RequestMapping(value="/saveregister", method = RequestMethod.POST)
	public ModelAndView saveRegister(@Valid @ModelAttribute("user") User user, BindingResult result)  
	{
		ModelAndView mav=new ModelAndView();
	
		if(result.hasErrors())
		{
			mav.setViewName("RegisterPage");
			 return mav; 
		}
		else
		{
			user.setRole("ROLE_USER"); 
			userDao.saveUser(user);    
			mav.setViewName("redirect:/login"); 
		   return mav;
			
		}
		
	}
}