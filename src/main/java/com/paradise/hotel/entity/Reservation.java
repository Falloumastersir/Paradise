package com.paradise.hotel.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the Reservations database table.
 * 
 */
@Entity
@Table(name="Reservations")
@NamedQuery(name="Reservation.findAll", query="SELECT r FROM Reservation r")
public class Reservation implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="res_id")
	private int res_id;

	private byte cancelled;

	@Temporal(TemporalType.DATE)
	private Date checkIn;

	@Temporal(TemporalType.DATE)
	private Date checkOut;

	private byte closed;

	private int guestNum;

	@Column(name="room_id")
	private int room_id;

	private int roomNumber;

	@Column(name="user_id")
	private int user_id;

	public Reservation() {
	}

	public int getResId() {
		return this.res_id;
	}

	public void setResId(int resId) {
		this.res_id = resId;
	}

	public byte getCancelled() {
		return this.cancelled;
	}

	public void setCancelled(byte cancelled) {
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

	public byte getClosed() {
		return this.closed;
	}

	public void setClosed(byte closed) {
		this.closed = closed;
	}

	public int getGuestNum() {
		return this.guestNum;
	}

	public void setGuestNum(int guestNum) {
		this.guestNum = guestNum;
	}

	public int getRoomId() {
		return this.room_id;
	}

	public void setRoomId(int roomId) {
		this.room_id = roomId;
	}

	public int getRoomNumber() {
		return this.roomNumber;
	}

	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}

	public int getUserId() {
		return this.user_id;
	}

	public void setUserId(int userId) {
		this.user_id = userId;
	}

}