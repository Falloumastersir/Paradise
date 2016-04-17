package com.paradise.hotel.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.paradise.hotel.entity.Reservation;
import com.paradise.hotel.entity.Room;
import com.paradise.hotel.services.RoomHandler;
import com.paradise.hotel.services.SearchHandler;

@Controller
public class SearchController {

	SearchHandler searchHand = new SearchHandler();
	RoomHandler roomHand = new RoomHandler();
	
	@RequestMapping(value="/search", method=RequestMethod.GET)
	public ModelAndView searchRoom(
			@RequestParam("bedType") String bedType,
			@RequestParam("checkIn") String checkIn,
			@RequestParam("checkOut") String checkOut,
			@RequestParam("guestNum") String guestNum,
			HttpSession httpSession
			) {
		
		String ci = changeDate(checkIn);
		String co = changeDate(checkOut);	
		List<Room> searchResult = searchHand.getAvailableRooms(ci, co, bedType);
		
		httpSession.setAttribute("guestNum", guestNum);
		httpSession.setAttribute("checkIn", ci);
		httpSession.setAttribute("checkOut", co);
		
		return new ModelAndView("book", "searchResult", searchResult);
	}
	
	@RequestMapping(value="/details", method=RequestMethod.GET)
	public String viewDetails(@RequestParam("roomID") int roomID,
			@RequestParam("roomNumber") int roomNumber,
			Model model, HttpSession httpSession) {
		
		try {
			httpSession.setAttribute("selectedRoomID", roomID);
			httpSession.setAttribute("selectedRoomNumber", roomNumber);
			Room room = roomHand.getRoomById(roomID);
			model.addAttribute("room", room);
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}			
		
		return "roomDetails";
	}
	
	public String changeDate(String date) {		
		
		String[] str = date.split("/");
		String mm = str[0];
		String dd = str[1];
		String yy = str[2];
		
		String rightDate = yy + "-" + mm + "-" + dd;
 				
		return rightDate;
	}
}
