package com.paradise.hotel.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.paradise.hotel.entity.Room;
import com.paradise.hotel.util.HibernateUtil;

@Controller
public class SearchController {
	
	SessionFactory factory = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public ModelAndView search(@RequestParam("testing") String room) {
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		Room sampleRoom = session.get(Room.class, 1);
		System.out.println("Request room description: " + sampleRoom.getDescription());
		room = sampleRoom.getDescription();
		
		return new ModelAndView("book", "sample", room);
	}
	
//	@RequestMapping(value="/search", method=RequestMethod.GET)
//	public String search() {
//		return "book";
//	}
}
