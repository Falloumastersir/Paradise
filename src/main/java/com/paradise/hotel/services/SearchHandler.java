package com.paradise.hotel.services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.paradise.hotel.entity.Room;
import com.paradise.hotel.util.HibernateUtil;

public class SearchHandler {	
	private SessionFactory factory;
	RoomHandler roomHand = new RoomHandler();
	
	public List<Room> getAvailableRooms(String checkIn, String checkOut) {
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
		
		List<Room> available = new ArrayList<Room>();
		if (unavailable.isEmpty()){
			available = roomHand.getAllRooms();
		} else {
			available = getAvailableRooms(unavailable);
		}						
		
		return available;
	}
	
	public List<Room> getAvailableRooms(List<Integer> unavail) {
		List<Room> roomList = roomHand.getAllRooms();
		
		try {
			for (int i : unavail) {
				roomList.remove(roomList.get(i));
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return roomList;
	}
}
