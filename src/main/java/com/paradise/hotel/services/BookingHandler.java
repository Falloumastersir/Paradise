package com.paradise.hotel.services;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.paradise.hotel.entity.Reservation;
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
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		session.getTransaction().commit();
	}
	
}
