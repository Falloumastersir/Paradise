package com.paradise.hotel.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.paradise.hotel.entity.User;
import com.paradise.hotel.services.LoginServiceImpl;
import com.paradise.hotel.util.HibernateUtil;

@Controller
public class AdminLoginController {
	SessionFactory factory = HibernateUtil.getSessionFactory();
	
	 @RequestMapping("/adminLogin")
	 public String adminLogin() {	    
	    return "adminLogin";
	 }
	
	 
	 @RequestMapping(value="/adminLoginController" ,method=RequestMethod.POST)
	 public String login1(@RequestParam("username") String username,
			             @RequestParam("password") String pwd
			            ) {
		Session session = factory.getCurrentSession();
	 	session.beginTransaction();
	 	LoginServiceImpl ls = new LoginServiceImpl();
	 	 boolean result = ls.authenticateUser(username, pwd);
	 	User user = ls.getUserByUserId(username);
	 	System.out.println("Request room description: " + user.getUsername());
	 	if(result == true){
	        user.setUsername(username);
	        user.setPassword(pwd);
	      
	 		return "admin";
	 	}
	 	else{
		
		 return "error";
	 	}
	 }
	 
	
}
