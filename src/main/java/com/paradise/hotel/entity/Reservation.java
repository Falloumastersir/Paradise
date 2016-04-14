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

	private byte cancelled;

	@Temporal(TemporalType.DATE)
	private Date checkIn;

	@Temporal(TemporalType.DATE)
	private Date checkOut;

	private byte closed;

	@Column(name="room_id")
	private int roomId;

	public Reservation() {
	}

	public int getResId() {
		return this.resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
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

	public int getRoomId() {
		return this.roomId;
	}

	public void setRoomId(int roomId) {
		this.roomId = roomId;
	}

}