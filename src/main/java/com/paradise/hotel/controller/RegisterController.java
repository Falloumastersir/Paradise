package com.paradise.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.paradise.hotel.entity.User;
import com.paradise.hotel.services.RegisterService;

@Controller
public class RegisterController {

	@RequestMapping(value="/registerPage")
	public String load(){
		return "register";
	}
	
	@RequestMapping(value="/registerController" , method=RequestMethod.POST)
	 public String login(@RequestParam("username") String username,
			             @RequestParam("password") String pwd,
			             @RequestParam("name") String nm) {
		User user = new User (username,pwd,nm);
		
			RegisterService rs = new RegisterService();
			boolean result = rs.register(user);
			
			if(result){
				System.out.println("User added " + user.getName());
				return "login";
			}else{
				return "register";
			}
			
		}

	
}
