package com.paradise.hotel.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.paradise.hotel.entity.Room;
import com.paradise.hotel.services.RoomHandler;

@Controller
public class DetailsController {
	
	RoomHandler roomHand = new RoomHandler();
	 
	@RequestMapping(value="/details", method=RequestMethod.GET)
	public String viewDetails(@RequestParam("room") int roomID, Model model, HttpSession httpSession) {
		
		try {
			httpSession.setAttribute("selectedRoom", roomID);
			Room room = roomHand.getRoomById(roomID);
			model.addAttribute("room", room);
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}			
		
		return "roomDetails";
	}

}
