package com.paradise.hotel.services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.paradise.hotel.entity.Reservation;
import com.paradise.hotel.entity.Room;
import com.paradise.hotel.util.HibernateUtil;

public class SearchHandler {	
	private SessionFactory factory;
	RoomHandler roomHand = new RoomHandler();
	
	public List<Room> getAvailableRooms(String checkIn, String checkOut, String type) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		
		String queryStr = "SELECT room_id from Reservation where " 
				+ "(checkIn < '" + checkOut + "' and checkIn > '" + checkIn + "')"
				+ " or "
				+ "(checkOut < '" + checkOut + "' and checkOut > '" + checkIn + "')";
		Query query = session.createQuery(queryStr);
		List<Integer> unavailable = new ArrayList<Integer>();
		try {			
			unavailable = query.list();
			System.out.println("Unavailable rooms: " + unavailable);
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Error occured during getting available rooms");
		}	
		session.getTransaction().commit();
		
		List<Room> roomList = roomHand.getRoomsbyType(type);
		if (unavailable.isEmpty()){
			return roomList;
		} else {
			return getAvailableRooms(unavailable, roomList);
		}						
				
	}		
	
	public List<Room> getAvailableRooms(List<Integer> unavail, List<Room> roomList) {
		List<Room> availList = new ArrayList<Room>();
		try {
			for (Room r : roomList){
				if (!unavail.contains(r.getId())){
					availList.add(r);
				}				
			}			
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return availList;
	}

	public List<Reservation> getBookings(int floor) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		
//		String queryStr = "SELECT r.roomNumber, b.checkIn, b.checkOut, b.guestNum " 
//				+ "FROM Room AS r LEFT JOIN r.Reservation b " 
//				+ "ON r.id=b.room_id "
//				+ "WHERE ( r.roomNumber > (" + floor*100 + ") and r.roomNumber < (" + (floor+1)*100 + ")) "
//				+ "ORDER BY r.roomNumber";
		
		String queryStr = "FROM Reservation WHERE (roomNumber > " + floor*100 + ") and (roomNumber < " + (floor+1)*100 + ") "
				+ "ORDER BY roomNumber";
		Query query = session.createQuery(queryStr);
		
		List<Reservation> resList = new ArrayList<Reservation>();
		try {			
			resList = query.list();			
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Error occured during getting booking list");
		}	
		session.getTransaction().commit();
		
		return resList;
	}

	public List<Integer> getRoomsWithNoBooking() {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		
		String queryStr = "SELECT DISTINCT id " 
				+ "FROM Room " 				
				+ "WHERE id NOT IN "
				+ "(SELECT room_id from Reservation)";				
		Query query = session.createQuery(queryStr);
		
		List<Integer> roomNumberList = new ArrayList<Integer>();
		try {			
			roomNumberList = query.list();			
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Error occured during getting booking list");
		}	
		session.getTransaction().commit();
		return roomNumberList;
	}
}
