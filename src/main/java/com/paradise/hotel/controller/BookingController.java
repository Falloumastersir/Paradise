package com.paradise.hotel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.paradise.hotel.entity.Reservation;
import com.paradise.hotel.services.BookingHandler;

@Controller
public class BookingController {
	
	BookingHandler bookingHand = new BookingHandler();
	
	@RequestMapping(value="/confirmBooking", method=RequestMethod.GET)
	public String confirm(
			@RequestParam("currentPage") String currentPage,
			HttpSession httpSession) throws ParseException{
		
		// booking testing without log-in for now
		String userName = "megrim";
				
		int roomId = (Integer) httpSession.getAttribute("selectedRoomID");
		int roomNumber = (Integer) httpSession.getAttribute("selectedRoomNumber");
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
			System.out.println((byte)userID);
		
			bookingHand.addBooking(newRes);
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}											
		return "confirm";
		
		
		// check logged-in user
//		if (httpSession.getAttribute("username")!=null) {
//			String userName = (String) httpSession.getAttribute("username");
//			System.out.println(userName);			
//			int roomId = (Integer) httpSession.getAttribute("selectedRoomID");
//			int roomNumber = (Integer) httpSession.getAttribute("selectedRoomNumber");
//			String checkIn = (String) httpSession.getAttribute("checkIn");
//			String checkOut = (String) httpSession.getAttribute("checkOut");
//			int guestNum = Integer.parseInt((String) httpSession.getAttribute("guestNum"));	
//						
//			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//			Date checkInDate = new Date();
//			Date checkOutDate = new Date();
//			try {
//				checkInDate = formatter.parse(checkIn);
//				checkOutDate = formatter.parse(checkOut);
//			} catch (ParseException e) {
//				e.printStackTrace();
//			}
//			
//			try {
//				int userID = bookingHand.getUserID(userName);
//				Reservation newRes = new Reservation();
//				newRes.setRoomId(roomId);
//				newRes.setRoomNumber(roomNumber);
//				newRes.setCheckIn(checkInDate);
//				newRes.setCheckOut(checkOutDate);
//				newRes.setGuestNum(guestNum);
//				newRes.setUserId((byte) userID);
//			
//				bookingHand.addBooking(newRes);
//				
//			} catch (Exception ex) {
//				ex.printStackTrace();
//			}											
//			return "confirm";
//		
//		} else {
//			httpSession.setAttribute("previousPage", currentPage);
//			return "login";
//		}				
	}
}

