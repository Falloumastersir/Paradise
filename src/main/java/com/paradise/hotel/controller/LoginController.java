package com.paradise.hotel.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.paradise.hotel.entity.User;
import com.paradise.hotel.services.LoginServiceImpl;
import com.paradise.hotel.util.HibernateUtil;


@Controller
public class LoginController {
	SessionFactory factory = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value="/loginPage")
		public String load(){
			return "login";
		}
	
	@RequestMapping(value="/loginToConfirm", method=RequestMethod.POST)
	public String loginToConfirm(@RequestParam("username") String username,
            										@RequestParam("password") String pwd,
            										@RequestParam("name") String nm,
            										Map<String, Object> model, 
            										HttpSession httpSession) {
	
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		
		LoginServiceImpl ls = new LoginServiceImpl();
		boolean result = ls.authenticateUser(username, pwd);
		User user = ls.getUserByUserId(username);
		System.out.println("User " + user.getName());
		if(result == true){
		model.put("username",username);
		model.put("password", pwd);
		model.put("name", nm);
		httpSession.setAttribute("username", username);
		
//		if(httpSession.getAttribute("previousPage")!=null){
//		  		return "redirect:" + httpSession.getAttribute("previousPage");
//		} else {
//		  		return "welcome";
//		}
		return "roomDetails";
			 	  
		}
		else if(username.isEmpty()){
		model.put("userNameError","Please enter user name");
		
		}
		else if(nm.isEmpty()){
		model.put("passwordError", "Please enter your password");
		}else if(pwd.isEmpty()){
		model.put("passwordError", "Please enter your password");
		}
		return "login";
	}

	
		
	@RequestMapping(value="/loginController" ,method=RequestMethod.POST)
	 public String login(@RequestParam("username") String username,
			             @RequestParam("password") String pwd,
			             @RequestParam("name") String nm,
			              Map<String, Object> model, 
			              HttpSession httpSession) {
				
		Session session = factory.getCurrentSession();
	 	session.beginTransaction();
	 	
	 	LoginServiceImpl ls = new LoginServiceImpl();
	 	boolean result = ls.authenticateUser(username, pwd);
	 	User user = ls.getUserByUserId(username);
	 	System.out.println("User " + user.getName());
	 	if(result == true){
	       model.put("username",username);
	       model.put("password", pwd);
	       model.put("name", nm);
	       httpSession.setAttribute("username", username);
	       
	       if(httpSession.getAttribute("previousPage")!=null){
	    	   		return "redirect:" + httpSession.getAttribute("previousPage");
	       } else {
	    	   		return "welcome";
	       }
	       	 	  
	 	}
	 	else if(username.isEmpty()){
	 		model.put("userNameError","Please enter user name");
	 	
	 	}
	 	else if(nm.isEmpty()){
	 		model.put("passwordError", "Please enter your password");
	 	}else if(pwd.isEmpty()){
	 		model.put("passwordError", "Please enter your password");
	 	}
		 return "login";
	 	}
	
	
	@RequestMapping(value="/cancel")
	public String cancel(){
		return "welcome";
	}

	
	 }
