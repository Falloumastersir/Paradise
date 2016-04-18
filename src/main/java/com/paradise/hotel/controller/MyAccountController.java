package com.paradise.hotel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.paradise.hotel.entity.Reservation;
import com.paradise.hotel.services.BookingHandler;

@Controller
public class MyAccountController {
	
	BookingHandler bookingHand = new BookingHandler();
	
	@RequestMapping(value="/account")
	public String account(HttpSession httpSession,
			Model model){
		String userName = (String) httpSession.getAttribute("username");
		int userId = bookingHand.getUserID(userName);
		
		List<Reservation> resListByUser = bookingHand.getBookingsByUser(userId);
		model.addAttribute("bookings", resListByUser);
		return "myAccount";
	}
	
	@RequestMapping(value="/changeBooking")
	public String loadChangeBooking(
			@RequestParam("id") int bookingId,
			HttpSession httpSession){
		
		httpSession.setAttribute("bookingIDtoChange", bookingId);
		
		return "changeBooking";
	}
	
	@RequestMapping(value="/cancelBooking")
	public String cancelBooking(@RequestParam("id") int bookingId) {
				
		bookingHand.deleteBooking(bookingId);
		
		return "myAccount";
	}
	
	@RequestMapping(value="/confirmChange")
	public String confirmChangeBooking(
			@RequestParam("roomNumber") int roomNumber,
			@RequestParam("roomID") int roomId,
			HttpSession httpSession){
		
		// delete the previous booking
		int bookingToDelete = (Integer) httpSession.getAttribute("bookingIDtoChange");
		bookingHand.deleteBooking(bookingToDelete);
		
		// add a new booking
		String userName = (String) httpSession.getAttribute("username");
		String checkIn = (String) httpSession.getAttribute("checkIn");
		String checkOut = (String) httpSession.getAttribute("checkOut");
		int guestNum = Integer.parseInt((String) httpSession.getAttribute("guestNum"));	
					
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date checkInDate = new Date();
		Date checkOutDate = new Date();
		try {
			checkInDate = formatter.parse(checkIn);
			checkOutDate = formatter.parse(checkOut);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		try {
			int userID = bookingHand.getUserID(userName);
			Reservation newRes = new Reservation();
			newRes.setRoomId(roomId);
			newRes.setRoomNumber(roomNumber);
			newRes.setCheckIn(checkInDate);
			newRes.setCheckOut(checkOutDate);
			newRes.setGuestNum(guestNum);
			newRes.setUserId((byte) userID);	
			
			
			// add the new booking into Reservation table
			bookingHand.addBooking(newRes);					
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		
		return "myAccount";
	}
	
	
	@RequestMapping(value="/logout")
	public String account2(){
		
		return "logout";
	}

}
