package com.paradise.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	 @RequestMapping("/")
	 public String welcome(HttpSession httpSession) {
		
	    return "welcome";
	 }
	 
	 @RequestMapping("/welcome")
	 public String welcome2(HttpSession httpSession) {	    
	    return "welcome";
	 }
	 	 
}
