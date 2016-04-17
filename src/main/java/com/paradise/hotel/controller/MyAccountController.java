package com.paradise.hotel.controller;

import org.apache.catalina.Session;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyAccountController {
	
	@RequestMapping(value="/account")
	public String account(){
		return "myAccount";
	}
	
	@RequestMapping(value="/myAccountController")
	public String account1(){
		return "confirm";
	}
	
	@RequestMapping(value="/logout")
	public String account2(){
		
		return "logout";
	}

}
