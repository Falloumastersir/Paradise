package com.paradise.hotel.entity;

import java.io.Serializable;
import javax.persistence.*;

import org.hibernate.annotations.Cascade;

import java.math.BigDecimal;
import java.util.Set;


/**
 * The persistent class for the ROOM database table.
 * 
 */
@Entity
@Table(name="Room")
@NamedQuery(name="Room.findAll", query="SELECT r FROM Room r")
public class Room implements Serializable {
	private static final long serialVersionUID = 1L;
	
	private int id;

	private String bedType;

	private byte breakfast;

	@Lob
	private String description;

	private byte dinner;

	private String imageTitle;

	private BigDecimal price;

	private String roomType;

	private byte spa;
	
	private int roomNumber;
	

	public Room() {
	}

	@Id
	@Column(name="id")
	public int getId() {
		return this.id;
	}
	
//	@OneToMany(cascade = CascadeType.ALL)
//	@JoinTable (			
//			joinColumns = @JoinColumn(name="id"),
//			inverseJoinColumns = @JoinColumn(name="room_id")
//	)
	
//	public Set<Reservation> getReservations() {
//		return reservations;
//	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBedType() {
		return this.bedType;
	}

	public void setBedType(String bedType) {
		this.bedType = bedType;
	}

	public byte getBreakfast() {
		return this.breakfast;
	}

	public void setBreakfast(byte breakfast) {
		this.breakfast = breakfast;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public byte getDinner() {
		return this.dinner;
	}

	public void setDinner(byte dinner) {
		this.dinner = dinner;
	}

	public String getImageTitle() {
		return this.imageTitle;
	}

	public void setImageTitle(String imageTitle) {
		this.imageTitle = imageTitle;
	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public String getRoomType() {
		return this.roomType;
	}

	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}

	public byte getSpa() {
		return this.spa;
	}

	public void setSpa(byte spa) {
		this.spa = spa;
	}
	
	public int getRoomNumber() {
		return this.roomNumber;
	}
	
	public void setRoomNumber(int r) {
		this.roomNumber = r;
	}

}