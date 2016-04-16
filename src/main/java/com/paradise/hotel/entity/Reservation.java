package com.paradise.hotel.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the reservation database table.
 * 
 */
@Entity
@NamedQuery(name="Reservation.findAll", query="SELECT r FROM Reservation r")
public class Reservation implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="res_id")
	private int resId;

	private Object cancelled;

	@Temporal(TemporalType.DATE)
	private Date checkIn;

	@Temporal(TemporalType.DATE)
	private Date checkOut;

	private Object closed;

	private int guestNum;

	@Column(name="room_id")
	private int roomId;

	private int roomNumber;

	public Reservation() {
	}

	public int getResId() {
		return this.resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
	}

	public Object getCancelled() {
		return this.cancelled;
	}

	public void setCancelled(Object cancelled) {
		this.cancelled = cancelled;
	}

	public Date getCheckIn() {
		return this.checkIn;
	}

	public void setCheckIn(Date checkIn) {
		this.checkIn = checkIn;
	}

	public Date getCheckOut() {
		return this.checkOut;
	}

	public void setCheckOut(Date checkOut) {
		this.checkOut = checkOut;
	}

	public Object getClosed() {
		return this.closed;
	}

	public void setClosed(Object closed) {
		this.closed = closed;
	}

	public int getGuestNum() {
		return this.guestNum;
	}

	public void setGuestNum(int guestNum) {
		this.guestNum = guestNum;
	}

	public int getRoomId() {
		return this.roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

	public int getRoomNumber() {
		return this.roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

}