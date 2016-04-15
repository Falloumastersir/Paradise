package com.paradise.hotel.services;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import com.paradise.hotel.entity.Room;
import com.paradise.hotel.util.HibernateUtil;

//@Service("roomHandler")
public class RoomHandler {
	
	//@Resource
	private SessionFactory factory;
	private static final String ROOM = "Room";

	public List<Room> getAllRooms() {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		Query query = session.createQuery("from " + ROOM);
		List<Room> list = new ArrayList<Room>();
		try {
			list = query.list();					
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Error occurred");
		}
		session.getTransaction().commit();		

		return list;
	}

	public void deleteRoom(Room r) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		try {
			session.delete(r);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		session.getTransaction().commit();
	}

	public void addRoom(Room r) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
		session.beginTransaction();
		try {
			session.save(r);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		session.getTransaction().commit();
	}
	
	public Room getRoomById(int id) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
	 	session.beginTransaction();
	 	Room room = new Room();
	 	try {
	 		room = (Room) session.get(Room.class, id);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	 	session.getTransaction().commit();
	 	return room;
	}
	
	public List<Room> getRoomsbyType(String type) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
	 	session.beginTransaction();
	 	String strQuery = "from Room where roomType='" + type + "'";
	 	Query query = session.createQuery(strQuery);	 	
	 	List<Room> list = new ArrayList<Room>();
		try {
			list = query.list();			
		} catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("Error occurred");
		}
		session.getTransaction().commit();		

		return list;	 	 
	}
	
	public void updateRoom(Room r) {
		factory = HibernateUtil.getSessionFactory();
		Session session = factory.getCurrentSession();
        session.beginTransaction();
        try {
        		session.update(r);
		} catch (Exception ex) {
			ex.printStackTrace();
		}        
        session.getTransaction().commit();
	}
	
	
}
