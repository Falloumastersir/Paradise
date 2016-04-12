package com.paradise.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContactController {
	

	 @RequestMapping(value="/contact")
	  public String welcome() {
		return "contact";
	 	}

}
