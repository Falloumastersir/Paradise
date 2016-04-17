package com.paradise.hotel.services;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.paradise.hotel.entity.Reservation;
import com.paradise.hotel.entity.Room;
import com.paradise.hotel.util.HibernateUtil;

public class BookingHandler {
	private SessionFactory factory;
	private static final String RESERVATION = "Reservation";
	
	
	public void addBooking(Reservation res) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		session.beginTransaction();		
		try {
			session.save(res);
			System.out.println("Booking added successfully");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		session.getTransaction().commit();
	}


	public int getUserID(String userName) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		System.out.println(userName);
		String strQuery = "SELECT id From User "
				+ "WHERE username='" + userName + "'";
	 	Query query = session.createQuery(strQuery);
	 	List<Integer> room = new ArrayList<Integer>();
	 	int user_id=0;
	 	try {
			 room = query.list();
			 user_id = room.get(0);
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Error occurred getting user id");			
		}
	 	session.getTransaction().commit();
		
	 	return user_id;		
	}
	
}
