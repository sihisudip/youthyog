package com.bean;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {
	@Id
	private String id;
	private String reg_date_time;
	private String login_date_time;
	private String customer_name;
	private String password;
	private String customer_email;
	private String customer_mobile;
	private String cus_dob;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReg_date_time() {
		return reg_date_time;
	}
	public void setReg_date_time(String reg_date_time) {
		this.reg_date_time = reg_date_time;
	}
	public String getLogin_date_time() {
		return login_date_time;
	}
	public void setLogin_date_time(String login_date_time) {
		this.login_date_time = login_date_time;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCustomer_email() {
		return customer_email;
	}
	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}
	public String getCustomer_mobile() {
		return customer_mobile;
	}
	public void setCustomer_mobile(String customer_mobile) {
		this.customer_mobile = customer_mobile;
	}
	public String getCus_dob() {
		return cus_dob;
	}
	public void setCus_dob(String cus_dob) {
		this.cus_dob = cus_dob;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", reg_date_time=" + reg_date_time + ", login_date_time=" + login_date_time
				+ ", customer_name=" + customer_name + ", password=" + password + ", customer_email=" + customer_email
				+ ", customer_mobile=" + customer_mobile + ", cus_dob=" + cus_dob + "]";
	}
	
	
}
