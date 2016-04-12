package com.paradise.hotel.controller;

import java.math.BigDecimal;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.paradise.hotel.entity.Room;
import com.paradise.hotel.util.HibernateUtil;

@Controller
public class AdminController {

	SessionFactory factory = HibernateUtil.getSessionFactory();
	
//	@RequestMapping(value="/newRoom", method=RequestMethod.GET)
//	public String newRoom(@RequestParam ("roomType") String roomType,
//	                           @RequestParam("bedType") String bedType,
//	                           @RequestParam ("image") String imageTitle,
//	                           @RequestParam ("description") String description,
//	                           @RequestParam ("price") double price,
//	                           @RequestParam("breakfast") int boolBreak,
//	                           @RequestParam("dinner") int boolDinner,
//	                           @RequestParam("spa") int boolSpa) {
//		
//		System.out.println("Room description " + description);
//		
//		
//		
//		return "admin";
//	}
	
//	@RequestMapping(value="/newRoom", method=RequestMethod.GET)
//	public ModelAndView newRoom(
//			                   @RequestParam ("roomType") String roomType,
//	                           @RequestParam("bedType") String bedType,
//	                           @RequestParam ("image") String imageTitle,
//	                           @RequestParam ("description") String description,
//	                           @RequestParam ("price") double price,
//	                           @RequestParam("breakfast") int boolBreak,
//	                           @RequestParam("dinner") int boolDinner,
//	                           @RequestParam("spa") int boolSpa,
//	                           ModelMap model) {
//			
//		     System.out.println("Room description ");
//		
//		
//	         return new ModelAndView("admin", "model", model);
//	}
	
	@RequestMapping(value="/newRoom")
	public String newRoom(@RequestParam ("description") String description, 
			@RequestParam ("roomType") String roomType,
			@RequestParam("bedType") String bedType,
            @RequestParam ("image") String imageTitle,
            @RequestParam ("price") String price,
    		    @RequestParam("amen") String[] amenities) {
		
		System.out.println(description + roomType + bedType + price + amenities.toString());
		
		try{
			
			Session session = factory.getCurrentSession();
		 	session.beginTransaction();
		 	Room newRoom = new Room();
		 	newRoom.setType(roomType);
		    newRoom.setDescription(description);
		    newRoom.setBedType(bedType);
		    newRoom.setImageTitle(imageTitle);
		    BigDecimal decPrice = new BigDecimal(price);

		    for (String a : amenities){
		    		System.out.println(a);
		    		if (a.equals("Breakfast")){ newRoom.setBreakfast((byte) 1); }
		    			
		    		if (a.equals("Dinner")){ newRoom.setDinner((byte)1); }
		    			
		    		if (a.equals("Spa")){ newRoom.setSpa((byte)1); }
		    }
		    
		    newRoom.setPrice(decPrice);
		 	session.save(newRoom);
		 	session.getTransaction().commit();
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
	    
		return "admin";
	}
		
	
}
