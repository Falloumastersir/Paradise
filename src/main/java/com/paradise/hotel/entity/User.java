package com.paradise.hotel.entity;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Users database table.
 * 
 */
@Entity
@Table(name="Users")
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private int id;

	private String name;

	private String password;

	@Column(name="res_id")
	private int res_id;

	private String username;

	public User() {
	}

	public User(String username, String pwd, String nm) {
		this.username = username;
		this.password = pwd;
		this.name = nm;
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getResId() {
		return this.res_id;
	}

	public void setResId(int resId) {
		this.res_id = resId;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

}