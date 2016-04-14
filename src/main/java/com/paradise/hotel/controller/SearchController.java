package com.paradise.hotel.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.paradise.hotel.entity.Room;
import com.paradise.hotel.services.SearchHandler;

@Controller
public class SearchController {

	SearchHandler searchHand = new SearchHandler();
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public ModelAndView searchRoom(
			@RequestParam("bedType") String bedType,
			@RequestParam("checkIn") String checkIn,
			@RequestParam("checkOut") String checkOut,
			@RequestParam("guestNum") String guestNum
			) {
		
		List<Room> searchResult = searchHand.getAvailableRooms(checkIn, checkOut);
		System.out.println(searchResult);
		
		return new ModelAndView("book", "searchResult", searchResult);
	}
}
