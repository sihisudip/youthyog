package com.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class SellerAddress {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;

	private String sid;
	private String address;
	private String geolocation;
	private int pincode;
	private String city;
	private String landmark;
	
	
	
	
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGeolocation() {
		return geolocation;
	}
	public void setGeolocation(String geolocation) {
		this.geolocation = geolocation;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	@Override
	public String toString() {
		return "SellerAddress [id=" + id + ", sid=" + sid + ", address=" + address + ", geolocation=" + geolocation
				+ ", pincode=" + pincode + ", city=" + city + ", landmark=" + landmark + "]";
	}
	
	
	
	
	
	
	
	
}
