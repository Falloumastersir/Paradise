package com.paradise.hotel.entity;

import java.io.Serializable;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;


/**
 * The persistent class for the Rooms database table.
 * 
 */
@Entity
@Table(name="Rooms")
@NamedQuery(name="Room.findAll", query="SELECT r FROM Room r")
public class Room implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	@Column(name="bed_type")
	private String bedType;

	@Temporal(TemporalType.DATE)
	private Date booked;

	private byte breakfast;

	@Lob
	private String description;

	private byte dinner;

	@Column(name="image_title")
	private String imageTitle;

	private BigDecimal price;

	private byte spa;

	private String type;

	public Room() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBedType() {
		return this.bedType;
	}

	public void setBedType(String bedType) {
		this.bedType = bedType;
	}

	public Date getBooked() {
		return this.booked;
	}

	public void setBooked(Date booked) {
		this.booked = booked;
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

	public byte getSpa() {
		return this.spa;
	}

	public void setSpa(byte spa) {
		this.spa = spa;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

}