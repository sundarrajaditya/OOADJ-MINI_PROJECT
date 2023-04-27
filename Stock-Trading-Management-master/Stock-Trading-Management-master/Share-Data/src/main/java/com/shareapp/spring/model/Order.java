package com.shareapp.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Order {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column
	private int user_id;
	@Column
	private int share_id;

	@Column
	private int quantity;
	@Column
	private String share_name;

	@Column
	private Double share_price;


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getShare_id() {
		return share_id;
	}

	public void setShare_id(int share_id) {
		this.share_id = share_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getShare_name() {
		return share_name;
	}

	public void setShare_name(String share_name) {
		this.share_name = share_name;
	}

	public Double getShare_price() {
		return share_price;
	}

	public void setShare_price(Double share_price) {
		this.share_price = share_price;
	}



}
